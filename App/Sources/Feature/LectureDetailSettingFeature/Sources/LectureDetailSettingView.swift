import Service
import SwiftUI

struct LectureDetailSettingView: View {
    @StateObject var viewModel: LectureDetailSettingViewModel
    @Environment(\.dismiss) var dismiss

    private let inputLectureFactory: any InputLectureFactory

    init(
        viewModel: LectureDetailSettingViewModel,
        inputLectureFactory: any InputLectureFactory
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.inputLectureFactory = inputLectureFactory
    }

    var body: some View {
        VStack(spacing: 24) {
            HStack {
                BitgouelText(
                    text: "강의 세부 설정",
                    font: .title3
                )

                Spacer()

                BitgouelAsset.Icons.cancel.swiftUIImage
                    .buttonWrapper {
                        dismiss()
                    }
            }
            .padding(.top, 24)

            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 28) {
                    LectureTypeView(
                        selectedLectureType: viewModel.selectedLectureType,
                        selectedLectureTypeString: viewModel.lectureTypeString
                    ) { isShowing in
                        viewModel.updateIsShowingLectureTypeBottomSheet(isShowing: isShowing)
                    } onChangeSelectedLectureType: { lectureType in
                        viewModel.updateLectureType(lectureType: lectureType)
                    }

                    SemesterView(
                        selectedSemester: viewModel.selectedSemester
                    ) { isShowing in
                        viewModel.updateIsShowingSemesterBottomSheet(isShowing: isShowing)
                    }

                    DivisionView(
                        selectedDivision: viewModel.selectedDivision
                    ) { isShowing in
                        viewModel.updateIsShowingDivisionBottomSheet(isShowing: isShowing)
                    }

                    PickerView(
                        selectedLine: viewModel.selectedLine,
                        selectedDepartment: viewModel.selectedDepartment,
                        selectedInstructorName: viewModel.instructorName
                    ) {
                        viewModel.updateIsShowingLineBottomSheet(isShowing: true)
                    } onSelectDepartment: {
                        viewModel.updateIsShowingDepartmentBottomSheet(isShowing: true)
                    } onSelectInstructor: {
                        viewModel.updateIsShowingInstructorBottomSheet(isShowing: true)
                    }

                    ApplicationPeriodView(
                        selectedStartDate: Binding(
                            get: { viewModel.selectedStartDate },
                            set: { startDate in
                                viewModel.updateStartDate(startDate: startDate)
                            }
                        ),
                        selectedEndDate: Binding(
                            get: { viewModel.selectedEndDate },
                            set: { endDate in
                                viewModel.updateEndDate(endDate: endDate)
                            }
                        )
                    )

                    LectureLocationView(
                        isShowingPostCodeSheet: $viewModel.isShowingPostCodeSheet,
                        address: $viewModel.selectedAddress,
                        locationDetail: $viewModel.enteredLocationDetail
                    )

                    LectureDatesView(
                        lectureDatesList: viewModel.lectureDatesList
                    ) { completeDate, index in
                        viewModel.updateCompleteDate(
                            completedate: completeDate,
                            at: index
                        )
                    } onSelectStartTime: { startTime, index in
                        viewModel.updateStartTime(
                            startTime: startTime,
                            at: index
                        )
                    } onSelectEndTime: { endTime, index in
                        viewModel.updateEndTime(
                            endTime: endTime,
                            at: index
                        )
                    } addLectureDates: {
                        viewModel.appendLectureDate()
                    } deleteLectureDates: { index in
                        viewModel.deleteLectureDate(at: index)
                    }

                    if viewModel.selectedLectureType == .mutualCreditRecognitionProgram {
                        creditView()
                    }

                    MaxRegisteredUserView(maxRegisteredUser: $viewModel.selectedMaxRegisteredUser) { maxRegisterUser in
                        viewModel.updateMaxRegisterUser(maxRegisterUser: maxRegisterUser)
                    }

                    SelectEssentialView(isEssential: $viewModel.isEssential) { isEssential in
                        viewModel.updateIsEssential(isEssential: isEssential)
                    }
                }
                .padding(.bottom, 24)
            }

            BitgouelButton(
                text: "적용 하기",
                style: .primary
            ) {
                viewModel.applyButtonDidTap()
                dismiss()
            }
        }
        .onAppear {
            viewModel.onAppear()
        }
        .padding(.horizontal, 28)
        .onChange(of: viewModel.isShowingLineBottomSheet) { newValue in
            if newValue {
                viewModel.searchLine()
            }
        }
        .onChange(of: viewModel.isShowingDepartmentBottomSheet) { newValue in
            if newValue {
                viewModel.searchDepartment()
            }
        }
        .onChange(of: viewModel.isShowingInstructorBottomSheet) { newValue in
            if newValue {
                viewModel.searchInstructor()
            }
        }
        .onChange(of: viewModel.isShowingDivisionBottomSheet) { newValue in
            if newValue {
                viewModel.searchDivision()
            }
        }
        .onChange(of: viewModel.keyword) { newValue in
            if viewModel.isShowingLineBottomSheet {
                viewModel.searchLine()
            } else if viewModel.isShowingDepartmentBottomSheet {
                viewModel.searchDepartment()
            } else if viewModel.isShowingInstructorBottomSheet {
                viewModel.searchInstructor()
            } else if viewModel.isShowingDivisionBottomSheet {
                viewModel.searchDivision()
            }
        }
        .bitgouelBottomSheet(isShowing: $viewModel.isShowingSemesterBottomSheet) {
            SemesterBottomSheet(
                selectedSemester: viewModel.selectedSemester
            ) { semester in
                viewModel.updateSemester(semester: semester)
            }
        }
        .bitgouelBottomSheet(isShowing: $viewModel.isShowingLectureTypeBottomSheet) {
            LectureTypeBottomSheet(
                selectedLectureType: viewModel.selectedLectureType
            ) { lectureType in
                viewModel.updateLectureType(lectureType: lectureType.rawValue)
            }
        }
        .bitgouelBottomSheet(isShowing: $viewModel.isShowingDivisionBottomSheet) {
            DivisionBottomSheet(
                selectedDivision: viewModel.selectedDivision,
                keyword: $viewModel.keyword,
                divisionList: viewModel.divisionList
            ) { division in
                viewModel.updateDivision(division: division)
                viewModel.resetKeyword()
            }
        }
        .bitgouelBottomSheet(isShowing: $viewModel.isShowingLineBottomSheet) {
            LectureLineBottomSheet(
                selectedLine: viewModel.selectedLine,
                keyword: $viewModel.keyword,
                lineList: viewModel.lineList
            ) { line in
                viewModel.updateLine(line: line)
                viewModel.resetKeyword()
            }
        }
        .bitgouelBottomSheet(isShowing: $viewModel.isShowingDepartmentBottomSheet) {
            DepartmentBottomSheet(
                selectedDepartment: viewModel.selectedDepartment,
                keyword: $viewModel.keyword,
                departmentList: viewModel.departmentList
            ) { department in
                viewModel.updateDepartment(department: department)
                viewModel.resetKeyword()
            }
        }
        .bitgouelBottomSheet(isShowing: $viewModel.isShowingInstructorBottomSheet) {
            InstructorBottomSheet(
                instructorList: viewModel.instructorList,
                selectedInstructorID: viewModel.instructorID,
                keyword: $viewModel.keyword
            ) { name, id in
                viewModel.updateInstructorInfo(name: name, id: id)
                viewModel.resetKeyword()
            }
        }
        .sheet(isPresented: $viewModel.isShowingPostCodeSheet) {
            if let url = viewModel.postCodeWebURL {
                KakaoPostCodeView(
                    request: URLRequest(url: url),
                    isShowingKakaoWebSheet: $viewModel.isShowingPostCodeSheet,
                    address: $viewModel.selectedAddress
                )
            }
        }
        .onTapGesture {
            hideKeyboard()
        }
    }

    @ViewBuilder
    func creditView() -> some View {
        CreditView(selectedCredit: $viewModel.selectedCredit) { credit in
            viewModel.updateCredit(credit: credit)
        }
    }
}
