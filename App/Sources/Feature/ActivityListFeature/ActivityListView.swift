import Service
import SwiftUI

struct ActivityListView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.tabbarHidden) var tabbarHidden
    @StateObject var model: ActivityListModel
    @StateObject var viewModel: ActivityListViewModel
    
    private let inputActivityFactory: any InputActivityFactory
    private let activityDetailFactory: any ActivityDetailFactory
    
    init(
        model: ActivityListModel,
        viewModel: ActivityListViewModel,
        inputActivityFactory: any InputActivityFactory,
        activityDetailFactory: any ActivityDetailFactory
    ) {
        _model = StateObject(wrappedValue: model)
        _viewModel = StateObject(wrappedValue: viewModel)
        self.inputActivityFactory = inputActivityFactory
        self.activityDetailFactory = activityDetailFactory
    }
    
    var body: some View {
        ScrollView {
            VStack {
                LazyVStack(spacing: 12) {
                    if let activityList = model.activityList {
                        ForEach(activityList.content, id: \.activityID) { item in
                            RoundListRow(
                                id: item.activityID,
                                title: item.title,
                                date: item.activityDate,
                                userID: item.userID,
                                name: item.userName,
                                authority: model.authority
                            )
                            .buttonWrapper {
                                withAnimation {
                                    viewModel.activityDidSelect(activityID: item.activityID)
                                    model.isPresentedActivityDetailPage = true
                                }
                            }
                        }
                    }
                }
                .padding(.top, 8)
            }
        }
        .bitgouelToast(
            text: model.errorMessage,
            isShowing: Binding(
                get: { viewModel.isErrorOccurred },
                set: { _ in viewModel.toastDismissed() }
            )
        )
        .bitgouelBackButton(dismiss: dismiss)
        .padding(.horizontal, 28)
        .navigationTitle("학생활동").navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                if model.authority == .student {
                    Button {
                        viewModel.inputActivityViewIsRequired()
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                            .foregroundColor(.bitgouel(.greyscale(.g8)))
                    }
                }
            }
        }
        .navigate(
            to: activityDetailFactory.makeView(activityID: model.selectedActivityID ?? "").eraseToAnyView(),
            when: Binding(
                get: { model.isPresentedActivityDetailPage },
                set: { _ in viewModel.activityDetailPageDismissed() }
            )
        )
        .onChange(of: model.isPresentedActivityDetailPage) { newValue in
            tabbarHidden.wrappedValue = newValue
        }
        .navigate(
            to: inputActivityFactory.makeView().eraseToAnyView(),
            when: Binding(
                get: { viewModel.isPresentedInputActivityView },
                set: { _ in viewModel.inputActivityViewIsDismissed() }
            )
        )
        .onChange(of: viewModel.isPresentedInputActivityView) { newValue in
            tabbarHidden.wrappedValue = newValue
        }
        .onAppear {
            viewModel.onAppear()
        }
    }
}
