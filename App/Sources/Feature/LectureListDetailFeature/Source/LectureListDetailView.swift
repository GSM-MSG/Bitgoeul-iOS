import SwiftUI

struct LectureListDetailView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel: LectureListDetailViewModel

    private let lectureApplicantListFactory: any LectureApplicantListFactory
    private let inputLectureFactory: any InputLectureFactory

    init(
        viewModel: LectureListDetailViewModel,
        lectureApplicantListFactory: any LectureApplicantListFactory,
        inputLectureFactory: any InputLectureFactory
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.lectureApplicantListFactory = lectureApplicantListFactory
        self.inputLectureFactory = inputLectureFactory
    }

    var body: some View {
        NavigationView {
            if viewModel.isLoading {
                ProgressView()
                    .progressViewStyle(.circular)
            } else {
                ScrollView(showsIndicators: false) {
                    if let lectureDetail = viewModel.lectureDetail {
                        VStack(alignment: .leading, spacing: 24) {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("# \(lectureDetail.lectureType)")
                                    .bitgouelFont(.caption, color: .primary(.p3))

                                HStack(spacing: 8) {
                                    Text(lectureDetail.division)

                                    Divider()

                                    Text(lectureDetail.line)

                                    Divider()

                                    Text(lectureDetail.department)
                                }
                                .bitgouelFont(.caption, color: .greyscale(.g4))

                                Text("\(lectureDetail.name)")
                                    .bitgouelFont(.text1, color: .greyscale(.g0))
                                    .lineSpacing(5)

                                HStack {
                                    Text(lectureDetail.semester.display())
                                        .bitgouelFont(.caption, color: .greyscale(.g4))

                                    HStack(spacing: 4) {
                                        Spacer()

                                        Text("학점")

                                        Text("\(lectureDetail.credit)점")

                                        Text("부여")
                                    }
                                    .bitgouelFont(.caption, color: .greyscale(.g4))
                                }

                                HStack(spacing: 4) {
                                    Text(lectureDetail.createAt.toStringCustomFormat(format: "yyyy.M.d"))

                                    Text("에 게시")

                                    Spacer()

                                    Text(lectureDetail.instructor)

                                    Text("교수님")
                                }
                                .bitgouelFont(.caption, color: .greyscale(.g7))
                            }

                            Text(lectureDetail.content)
                                .bitgouelFont(.text3)
                                .lineSpacing(10)
                                .padding(.top, 20)

                            Divider()

                            VStack(alignment: .leading, spacing: 16) {
                                BitgouelText(text: "수강 신청 기간", font: .text1)

                                VStack(alignment: .leading, spacing: 4) {
                                    Text(lectureDetail.startDate.toStringCustomFormat(format: "yyyy년 M월 d일 H시 mm분 부터"))

                                    Text(lectureDetail.startDate.toStringCustomFormat(format: "yyyy년 M월 d일 H시 mm분 까지"))
                                }
                                .bitgouelFont(.text3, color: .greyscale(.g4))
                            }

                            VStack(alignment: .leading, spacing: 16) {
                                BitgouelText(text: "강의 장소", font: .text1)

                                VStack(alignment: .leading, spacing: 4) {
                                    Text(viewModel.lectureLocation.address)

                                    Text(viewModel.lectureLocation.locationDetails)

                                    KakaoMapView(
                                        draw: $viewModel.isDraw,
                                        location: $viewModel.lectureLocation
                                    )
                                    .frame(width: 296, height: 252)
                                }
                                .bitgouelFont(.text3, color: .greyscale(.g4))
                            }

                            VStack(alignment: .leading, spacing: 16) {
                                BitgouelText(text: "강의 수강 날짜", font: .text1)

                                LazyVStack(alignment: .leading, spacing: 16) {
                                    ForEach(lectureDetail.lectureDates, id: \.completeDate) { lectureDate in
                                        Text(
                                            "• \(lectureDate.completeDate.toStringCustomFormat(format: "yyyy년 MM월 dd일")) \(lectureDate.startTime.toStringCustomFormat(format: "H시 m분"))~\(lectureDate.endTime.toStringCustomFormat(format: "H시m분"))"
                                        )
                                    }
                                }
                                .bitgouelFont(.text3, color: .greyscale(.g4))
                            }

                            VStack(alignment: .leading, spacing: 16) {
                                BitgouelText(text: "모집 정원", font: .text1)

                                BitgouelText(
                                    text: "\(lectureDetail.maxRegisteredUser)명",
                                    font: .text3
                                )
                                .foregroundColor(.bitgouel(.greyscale(.g4)))
                            }
                        }
                        .padding(.bottom, 60)
                    }
                }
                .overlay(alignment: .bottom) {
                    switch viewModel.userAuthority {
                    case .student:
                        if viewModel.lectureDetail?.isRegistered ?? true {
                            cancelPopupButton()
                        } else {
                            applyPopupButton()
                        }

                    case .admin,
                         .teacher,
                         .professor,
                         .companyInstructor,
                         .government,
                         .bbozzack:
                        checkApplicantListButton()

                    default:
                        EmptyView()
                    }
                }
                .bitgouelAlert(
                    title: "수강 신청하시겠습니까?",
                    description: viewModel.lectureDetail?.name ?? "",
                    isShowing: $viewModel.isApply,
                    alertActions: [
                        .init(text: "취소", style: .cancel) {
                            viewModel.isApply = false
                        },
                        .init(text: "신청", style: .default) {
                            viewModel.applyLecture()
                        }
                    ]
                )
                .bitgouelAlert(
                    title: "수강 취소하시겠습니까?",
                    description: viewModel.lectureDetail?.name ?? "",
                    isShowing: $viewModel.isCancel,
                    alertActions: [
                        .init(text: "취소", style: .cancel) {
                            viewModel.isCancel = false
                        },
                        .init(text: "확인", style: .error) {
                            viewModel.cancelLecture()
                        }
                    ]
                )
                .bitgouelToast(
                    text: viewModel.errorMessage,
                    isShowing: $viewModel.isErrorOccurred
                )
            }
        }
        .padding(.horizontal, 28)
        .onAppear {
            viewModel.onAppear()
        }
        .onDisappear {
            viewModel.isDraw = false
        }
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                switch viewModel.userAuthority {
                case .admin,
                     .professor,
                     .government,
                     .companyInstructor:
                    changeLectureStatusButton()

                default:
                    EmptyView()
                }
            }
        }
        .navigate(
            to: lectureApplicantListFactory.makeView(lectureID: viewModel.lectureID).eraseToAnyView(),
            when: Binding(
                get: { viewModel.isPresentedLectureApplicantListView },
                set: { isPresented in
                    viewModel.updateIsPresentedLectureApplicantView(isPresented: isPresented)
                }
            )
        )
        .navigate(
            to: inputLectureFactory.makeView(state: "수정", lectureID: viewModel.lectureID).eraseToAnyView(),
            when: Binding(
                get: { viewModel.isPresentedInputLectureView },
                set: { isPresented in
                    viewModel.updateIsPresentedInputLectureView(isPresented: isPresented)
                }
            )
        )
        .confirmationDialog("", isPresented: $viewModel.isPresentedLectureActionSheet) {
            Button("강의 수정") {
                viewModel.updateIsPresentedInputLectureView(isPresented: true)
            }

            Button("강의 삭제", role: .destructive) {
                viewModel.deleteLecture {
                    dismiss()
                }
            }

            Button("취소", role: .cancel) {}
        }
    }

    @ViewBuilder
    func changeLectureStatusButton() -> some View {
        Button {
            viewModel.updateIsPresentedLectureActionSheet(isPresented: true)
        } label: {
            BitgouelAsset.Icons.verticalEllipsisFill.swiftUIImage
        }
    }

    @ViewBuilder
    func applyPopupButton() -> some View {
        BitgouelButton(
            text: "수강 신청하기",
            style: .primary
        ) {
            viewModel.isApply = true
        }
    }

    @ViewBuilder
    func cancelPopupButton() -> some View {
        BitgouelButton(
            text: "수강 신청 취소",
            style: .cancel
        ) {
            viewModel.isCancel = true
        }
    }

    @ViewBuilder
    func checkApplicantListButton() -> some View {
        BitgouelButton(
            text: "수강 명단 확인",
            style: .primary
        ) {
            viewModel.updateIsPresentedLectureApplicantView(isPresented: true)
        }
    }
}
