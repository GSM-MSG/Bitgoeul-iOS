import SwiftUI
import NukeUI

struct InputSchoolView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel: InputSchoolViewModel
    
    init(viewModel: InputSchoolViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 0) {
                    Button {
                        viewModel.updateIsShowingImagePicker(isShowing: true)
                    } label: {
                        LazyImage(source: viewModel.schoolInfo.logoImageURL) { state in
                            if let image = state.image {
                                image
                                    .resizingMode(.aspectFit)
                            } else {
                                schoolLogoImage()
                            }
                        }
                    }
                    .frame(width: 80, height: 80)
                    
                    
                    BitgouelTextField(
                        "학교 이름 입력",
                        text: $viewModel.schoolName
                    )
                    .padding(.top, 16)
                    
                    PickerTextField(
                        "학교 계열 선택",
                        text: (viewModel.selectedLine?.display() ?? "")
                    ) {
                        viewModel.updateIsShowingLineBottomSheet(isShowing: true)
                    }
                }
                .padding(.top, 16)
                
                BitgouelText(
                    text: "학과 목록",
                    font: .title3
                )
                
                LazyVStack(alignment: .leading, spacing: 0) {
                    ForEach(viewModel.departmentList.indices, id: \.self) { index in
                        InputDepartmentRow(
                            text: $viewModel.departmentList[index]
                        ) {
                            viewModel.deleteDepartment(index: index)
                        }
                    }
                    
                    Button {
                        viewModel.appendDepartment()
                    } label: {
                        HStack {
                            Text("학과 추가")
                            
                            Spacer()
                            
                            BitgouelAsset.Icons.add.swiftUIImage
                                .renderingMode(.template)
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 16)
                        .foregroundColor(.bitgouel(.greyscale(.g10)))
                        .background(Color.bitgouel(.primary(.p5)))
                        .cornerRadius(8, corners: .allCorners)
                    }
                }

                if viewModel.state == "수정" {
                    ClubFormView(clubList: viewModel.schoolInfo.clubList
                    ) { clubID in
                        viewModel.updateIsPresentedInputClubView(isPresented: true)
                    } addClubAction: {
                        viewModel.updateIsPresentedInputClubView(isPresented: true)
                    }
                }
            }
        }
        .overlay(alignment: .bottom) {
            renderFormButton()
        }
        .padding(.horizontal, 28)
        .navigationTitle("학교 \(viewModel.state)")
        .sheet(isPresented: $viewModel.isShowingImagePicker, onDismiss: { viewModel.loadImage() }) {
            ImagePicker(image: $viewModel.selectedUIImage)
        }
        .onAppear { 
            if viewModel.state == "수정" {
                viewModel.onApper()
            }
        }
        .bitgouelBottomSheet(isShowing: $viewModel.isShowingLineBottomSheet) {
            SchoolLineBottomSheet(
                selectedLine: viewModel.selectedLine
            ) { cancel in
                viewModel.updateIsShowingLineBottomSheet(isShowing: cancel)
            } selectLine: { line in
                viewModel.updateSelectedLine(line: line)
                viewModel.updateIsShowingLineBottomSheet(isShowing: false)
            }
        }
        .bitgouelAlert(
            title: "학교를 삭제하시겠습니까?",
            description: "",
            isShowing: $viewModel.isShowingDeleteAlert,
            alertActions: [
                .init(
                    text: "취소",
                    style: .cancel,
                    action: { viewModel.updateIsShowingDeleteAlert(isShowing: false)
                    }
                ),
                .init(
                    text: "삭제",
                    style: .error,
                    action: {
                        viewModel.deleteSchool {
                            viewModel.updateIsShowingDeleteAlert(isShowing: false)
                            dismiss()
                        }
                    }
                )
            ]
        )
    }
    
    @ViewBuilder
    func renderFormButton() -> some View {
        if viewModel.state == "수정" {
            HStack(spacing: 8) {
                DeactivateButton(
                    text: "학교 삭제",
                    buttonType: .minus
                ) {
                    viewModel.updateIsShowingDeleteAlert(isShowing: true)
                }
                
                ActivateButton(
                    text: "수정 완료",
                    buttonType: .check
                ) {
                    viewModel.modifySchool {
                        dismiss()
                    }
                }
            }
        } else {
            BitgouelButton(text: "다음으로", style: .primary) {
                viewModel.createdSchool {
                    viewModel.updateIsPresentedSuccessView(isPresented: true)
                }
            }
        }
    }
        
    @ViewBuilder
    func schoolLogoImage() -> some View {
        if let image = viewModel.image {
            ZStack {
                image
                    .resizable()
                    .frame(width: 80, height: 80)
                    .cornerRadius(8, corners: .allCorners)
                    .blur(radius: 1)
                
                BitgouelAsset.Icons.add.swiftUIImage
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(.white)
                    .frame(width: 24, height: 24)
            }
        } else {
            VStack(spacing: 4) {
                BitgouelAsset.Icons.add.swiftUIImage
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 24, height: 24)
                
                BitgouelText(
                    text: "학교 로고",
                    font: .caption
                )
            }
            .foregroundColor(Color.bitgouel(.greyscale(.g4)))
            .padding(.init(top: 20, leading: 14, bottom: 12, trailing: 14))
            .background(Color.bitgouel(.greyscale(.g9)))
            .cornerRadius(8, corners: .allCorners)
        }
    }
}
