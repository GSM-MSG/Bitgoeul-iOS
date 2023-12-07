import SwiftUI
import Service
import NeedleFoundation

public protocol StudentSignUpDependency: Dependency {
    var studentSignupUseCase: any StudentSignupUseCase { get }
    var teacherSignupUseCase: any TeacherSignupUseCase { get }
    var bbozzakSignupUseCase: any BbozzakSignupUseCase { get }
    var professorSignupUseCase: any ProfessorSignupUseCase { get }
    var governmentSignupUseCase: any GovernmentSignupUseCase { get }
    var companyInstructorSignupUseCase: any CompanyInstructorSignupUseCase { get }
}

public final class StudentSignUpComponent: Component<StudentSignUpDependency>, StudentSignUpFactory {
    public func makeView() -> some View {
        StudentSignUpView(viewModel: .init(
        
        ))
    }
}
