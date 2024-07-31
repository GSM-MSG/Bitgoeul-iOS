import SwiftUI

struct InputClubView: View {
    @StateObject var viewModel: InputClubViewModel
    @Environment(\.dismiss) var dismiss

    init(viewModel: InputClubViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        InputDataView(
            epic: "동아리",
            state: viewModel.state,
            selectedField: $viewModel.selectedField,
            name: $viewModel.clubName
        ) {
            viewModel.createdClub {
                dismiss()
            }
        } deleteButtonAction: {
            print("삭제")
        } editButtonAction: {
            print("수정")
        }
        .onAppear {
            if viewModel.state == "정보 수정" {
                viewModel.onAppear()
            }
        }
        .bitgouelToast(
            text: viewModel.errorMessage,
            isShowing: $viewModel.isErrorOccurred
        )
    }
}
