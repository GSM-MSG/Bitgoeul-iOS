import Service
import SwiftUI
import NeedleFoundation

public protocol ActivityDetailDependency: Dependency {
    var queryStudentActivityDetailsUseCase: any QueryStudentActivityDetailsUseCase { get }
    var approveStudentActivityUseCase: any ApproveStudentActivityUseCase { get }
    var rejectStudentActivityUseCase: any RejectStudentActivityUseCase { get }
    var deleteStudentActivityUseCase: any DeleteStudentActivityUseCase { get }
}

public final class ActivityDetailComponent: Component<ActivityDetailDependency>, ActivityDetailFactory {
    public func makeView(userId: String) -> some View {
        ActivityDetailView(
            viewModel: .init(
                userId: userId,
                queryStudentActivityDetailsUseCase: self.dependency.queryStudentActivityDetailsUseCase,
                approveStudentActivityUseCase: self.dependency.approveStudentActivityUseCase,
                rejectStudentActivityUseCase: self.dependency.rejectStudentActivityUseCase,
                deleteStudentActivityUseCase: self.dependency.deleteStudentActivityUseCase
            )
        )
    }
}