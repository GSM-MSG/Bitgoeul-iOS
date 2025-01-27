import Foundation
import Service

enum LectureApplicantListPageState: String {
    case general = "신청자 명단"
    case check = "이수 선택"
}

final class LectureApplicantListViewModel: BaseViewModel {
    @Published var applicantList: [ApplicantInfoEntity] = []
    @Published var selectedStudentID: String = ""
    @Published var isShowingConfirmCompletionAlert = false
    @Published var state: LectureApplicantListPageState = .general
    @Published var isSelectedCheckAllButton: Bool = false
    @Published var students: Set<String> = []
    @Published var studentDetailInfo: AppliedLectureStudentDetailEntity?
    @Published var isShowingApplicantStudentDetailBottomSheet: Bool = false
    var lectureID: String = ""

    private let fetchApplicantListUseCase: any FetchApplicantListUseCase
    private let setLectureCompletionUseCase: any SetLectureCompletionUseCase
    private let fetchAppliedLectureStudentDetailUseCase: any FetchAppliedLectureStudentDetailUseCase

    init(
        lectureID: String,
        fetchApplicantListUseCase: any FetchApplicantListUseCase,
        setLectureCompletionUseCase: any SetLectureCompletionUseCase,
        fetchAppliedLectureStudentDetailUseCase: any FetchAppliedLectureStudentDetailUseCase
    ) {
        self.lectureID = lectureID
        self.fetchApplicantListUseCase = fetchApplicantListUseCase
        self.setLectureCompletionUseCase = setLectureCompletionUseCase
        self.fetchAppliedLectureStudentDetailUseCase = fetchAppliedLectureStudentDetailUseCase
    }

    func updateIsSelectedCheckAllButton(isSelected: Bool) {
        isSelectedCheckAllButton = isSelected
    }

    func updateIsShowingConfirmCompletionAlert(isShowing: Bool) {
        isShowingConfirmCompletionAlert = isShowing
    }

    func updateIsShowingApplicantStudentDetailBottomSheet(isShowing: Bool) {
        isShowingApplicantStudentDetailBottomSheet = isShowing
    }

    func updateState(state: LectureApplicantListPageState) {
        self.state = state
    }

    func removeStudent(studentID: String) {
        guard students.contains(studentID) else { return }
        guard let applicantListIndex = applicantList.map(\.studentID).firstIndex(of: studentID) else { return }

        students.remove(studentID)
        applicantList[applicantListIndex].isComplete = false
    }

    func insertStudent(studentID: String) {
        guard let applicantListIndex = applicantList.map(\.studentID).firstIndex(of: studentID) else { return }
        students.insert(studentID)
        applicantList[applicantListIndex].isComplete = true
    }

    func insertAllStudent() {
        let incompleteStudentIDs = applicantList.indices.filter {
            !applicantList[$0].isComplete
        }.map {
            applicantList[$0].studentID
        }

        incompleteStudentIDs.forEach { students.insert($0) }

        applicantList.indices
            .filter { incompleteStudentIDs.contains(applicantList[$0].studentID) }
            .forEach { applicantList[$0].isComplete = true }
    }

    func removeAllStudent() {
        applicantList.indices
            .filter { students.contains(applicantList[$0].studentID) }
            .forEach { applicantList[$0].isComplete = false }

        students.removeAll()
    }

    @MainActor
    func onAppear() {
        Task {
            do {
                applicantList = try await fetchApplicantListUseCase(lectureID: lectureID)
            } catch {
                errorMessage = error.lectureDomainErrorMessage()
                isErrorOccurred = true
            }
        }
    }

    @MainActor
    func setLectureCompletion(_ success: @escaping () -> Void) {
        Task {
            do {
                try await setLectureCompletionUseCase(
                    lectureID: lectureID,
                    students: students.joined(separator: ",")
                )

                success()
            } catch {
                errorMessage = error.lectureDomainErrorMessage()
                isErrorOccurred = true
            }
        }
    }

    @MainActor
    func fetchSelectedStudentDetail(studentID: String) {
        Task {
            do {
                studentDetailInfo = try await fetchAppliedLectureStudentDetailUseCase(
                    lectureID: lectureID,
                    studentID: studentID
                )
            } catch {
                errorMessage = error.lectureDomainErrorMessage()
                isErrorOccurred = true
            }
        }
    }
}
