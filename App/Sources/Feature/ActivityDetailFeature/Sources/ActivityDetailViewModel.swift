import Foundation
import Service

final class ActivityDetailViewModel: BaseViewModel {
    @Published var authority: UserAuthorityType = .student
    @Published var alertTitle: String = ""
    @Published var isDelete: Bool = false
    @Published var isEdit: Bool = false
    @Published var activityDetail: StudentActivityDetailEntity?

    private var activityId: String
    private let queryStudentActivityDetailsUseCase: any QueryStudentActivityDetailsUseCase
    private let approveStudentActivityUseCase: any ApproveStudentActivityUseCase
    private let rejectStudentActivityUseCase: any RejectStudentActivityUseCase
    private let deleteStudentActivityUseCase: any DeleteStudentActivityUseCase
    
    init(
        activityId: String,
        queryStudentActivityDetailsUseCase: any QueryStudentActivityDetailsUseCase,
        approveStudentActivityUseCase: any ApproveStudentActivityUseCase,
        rejectStudentActivityUseCase: any RejectStudentActivityUseCase,
        deleteStudentActivityUseCase: any DeleteStudentActivityUseCase
    ) {
        self.activityId = activityId
        self.queryStudentActivityDetailsUseCase = queryStudentActivityDetailsUseCase
        self.approveStudentActivityUseCase = approveStudentActivityUseCase
        self.rejectStudentActivityUseCase = rejectStudentActivityUseCase
        self.deleteStudentActivityUseCase = deleteStudentActivityUseCase
    }
    
    func onAppear() {
        Task {
            do {
                activityDetail = try await queryStudentActivityDetailsUseCase(activityId: activityId)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func deleteActivity() {
        Task {
            do {
                try await deleteStudentActivityUseCase(activityId: activityId)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func rejectActivity() {
        Task {
            do {
                try await rejectStudentActivityUseCase(activityId: activityId)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func approveActivity() {
        Task {
            do {
                try await approveStudentActivityUseCase(activityId: activityId)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
