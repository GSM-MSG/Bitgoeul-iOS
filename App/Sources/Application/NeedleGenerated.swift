

import NeedleFoundation
import Service
import SwiftUI

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

private class InputClubDependency37025687d81052f20c76Provider: InputClubDependency {
    var createdClubUseCase: any CreatedClubUseCase {
        return appComponent.createdClubUseCase
    }
    var deleteClubUseCase: any DeleteClubUseCase {
        return appComponent.deleteClubUseCase
    }
    var modifyClubUseCase: any ModifyClubUseCase {
        return appComponent.modifyClubUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->InputClubComponent
private func factory867dc6ccc256578f76bbf47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return InputClubDependency37025687d81052f20c76Provider(appComponent: parent1(component) as! AppComponent)
}
private class InputPostDependency2bb888f6c56a6060d23fProvider: InputPostDependency {
    var postDetailSettingFactory: any PostDetailSettingFactory {
        return appComponent.postDetailSettingFactory
    }
    var writePostUseCase: any WritePostUseCase {
        return appComponent.writePostUseCase
    }
    var fetchPostDetailUseCase: any FetchPostDetailUseCase {
        return appComponent.fetchPostDetailUseCase
    }
    var updatePostUseCase: any UpdatePostUseCase {
        return appComponent.updatePostUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->InputPostComponent
private func factoryfd208488fdd5cb4acc65f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return InputPostDependency2bb888f6c56a6060d23fProvider(appComponent: parent1(component) as! AppComponent)
}
private class InputCertificationDependency4e950d4995ce855c5cd5Provider: InputCertificationDependency {
    var inputCertificationUseCase: any InputCertificationUseCase {
        return appComponent.inputCertificationUseCase
    }
    var updateCertificationUseCase: any UpdateCertificationUseCase {
        return appComponent.updateCertificationUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->InputCertificationComponent
private func factory2810b45b31199a5f0c2af47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return InputCertificationDependency4e950d4995ce855c5cd5Provider(appComponent: parent1(component) as! AppComponent)
}
private class ClubListDependency90c6e61626f7c53ad50fProvider: ClubListDependency {
    var fetchClubListUseCase: any FetchClubListUseCase {
        return appComponent.fetchClubListUseCase
    }
    var fetchSchoolListUseCase: any FetchSchoolListUseCase {
        return appComponent.fetchSchoolListUseCase
    }
    var loadUserAuthorityUseCase: any LoadUserAuthorityUseCase {
        return appComponent.loadUserAuthorityUseCase
    }
    var clubDetailFactory: any ClubDetailFactory {
        return appComponent.clubDetailFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->ClubListComponent
private func factory050817f1b6d356b83467f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ClubListDependency90c6e61626f7c53ad50fProvider(appComponent: parent1(component) as! AppComponent)
}
private class LectureListDetailDependency2a815f1240973966e6a6Provider: LectureListDetailDependency {
    var fetchLectureDetailUseCase: any FetchLectureDetailUseCase {
        return appComponent.fetchLectureDetailUseCase
    }
    var applyLectureUseCase: any ApplyLectureUseCase {
        return appComponent.applyLectureUseCase
    }
    var cancelLectureApplicationUseCase: any CancelLectureApplicationUseCase {
        return appComponent.cancelLectureApplicationUseCase
    }
    var loadUserAuthorityUseCase: any LoadUserAuthorityUseCase {
        return appComponent.loadUserAuthorityUseCase
    }
    var lectureApplicantListFactory: any LectureApplicantListFactory {
        return appComponent.lectureApplicantListFactory
    }
    var deleteLectureUseCase: any DeleteLectureUseCase {
        return appComponent.deleteLectureUseCase
    }
    var inputLectureFactory: any InputLectureFactory {
        return appComponent.inputLectureFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->LectureListDetailComponent
private func factory22af859a70aa8ba0b346f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return LectureListDetailDependency2a815f1240973966e6a6Provider(appComponent: parent1(component) as! AppComponent)
}
private class OrganizationListDependencybd2d79ed6bc37d4ecb04Provider: OrganizationListDependency {
    var fetchCompanyListUseCase: any FetchCompanyListUseCase {
        return appComponent.fetchCompanyListUseCase
    }
    var deleteCompanyUseCase: any DeleteCompanyUseCase {
        return appComponent.deleteCompanyUseCase
    }
    var inputOrganizationFactory: any InputOrganizationFactory {
        return appComponent.inputOrganizationFactory
    }
    var fetchGovernmentListUseCase: any FetchGovernmentListUseCase {
        return appComponent.fetchGovernmentListUseCase
    }
    var deleteGovernmentUseCase: any DeleteGovernmentUseCase {
        return appComponent.deleteGovernmentUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->OrganizationListComponent
private func factory9677c02ce264ac0ad62df47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return OrganizationListDependencybd2d79ed6bc37d4ecb04Provider(appComponent: parent1(component) as! AppComponent)
}
private class NoticeListDependency0e93eb53be8626c408e4Provider: NoticeListDependency {
    var inquiryListFactory: any InquiryListFactory {
        return appComponent.inquiryListFactory
    }
    var noticeDetailFactory: any NoticeDetailFactory {
        return appComponent.noticeDetailFactory
    }
    var inputNoticeFactory: any InputNoticeFactory {
        return appComponent.inputNoticeFactory
    }
    var fetchPostListUseCase: any FetchPostListUseCase {
        return appComponent.fetchPostListUseCase
    }
    var loadUserAuthorityUseCase: any LoadUserAuthorityUseCase {
        return appComponent.loadUserAuthorityUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->NoticeListComponent
private func factorye14e687c08985bdffcd0f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return NoticeListDependency0e93eb53be8626c408e4Provider(appComponent: parent1(component) as! AppComponent)
}
private class SignUpDependencyf83ac0c64026320e6dc2Provider: SignUpDependency {
    var studentSignupUseCase: any StudentSignupUseCase {
        return appComponent.studentSignupUseCase
    }
    var teacherSignupUseCase: any TeacherSignupUseCase {
        return appComponent.teacherSignupUseCase
    }
    var bbozzakSignupUseCase: any BbozzakSignupUseCase {
        return appComponent.bbozzakSignupUseCase
    }
    var professorSignupUseCase: any ProfessorSignupUseCase {
        return appComponent.professorSignupUseCase
    }
    var governmentSignupUseCase: any GovernmentSignupUseCase {
        return appComponent.governmentSignupUseCase
    }
    var companyInstructorSignupUseCase: any CompanyInstructorSignupUseCase {
        return appComponent.companyInstructorSignupUseCase
    }
    var successSignUpFactory: any SuccessSignUpFactory {
        return appComponent.successSignUpFactory
    }
    var fetchAllSchoolNameUseCase: any FetchAllSchoolNameUseCase {
        return appComponent.fetchAllSchoolNameUseCase
    }
    var fetchAllClubNameUseCase: any FetchAllClubNameUseCase {
        return appComponent.fetchAllClubNameUseCase
    }
    var fetchCompanyListUseCase: any FetchCompanyListUseCase {
        return appComponent.fetchCompanyListUseCase
    }
    var fetchUniversityListUseCase: any FetchUniversityListUseCase {
        return appComponent.fetchUniversityListUseCase
    }
    var fetchGovernmentListUseCase: any FetchGovernmentListUseCase {
        return appComponent.fetchGovernmentListUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SignUpComponent
private func factory306e8ce5cfdf41304709f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SignUpDependencyf83ac0c64026320e6dc2Provider(appComponent: parent1(component) as! AppComponent)
}
private class ActivityDetailSettingDependency0b98c5f90168b920a8b8Provider: ActivityDetailSettingDependency {


    init() {

    }
}
/// ^->AppComponent->ActivityDetailSettingComponent
private func factoryfd595280dea209e217b9e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ActivityDetailSettingDependency0b98c5f90168b920a8b8Provider()
}
private class MainTabDependency2826cdb310ed0b17a725Provider: MainTabDependency {
    var mainFactory: any MainFactory {
        return appComponent.mainFactory
    }
    var lectureListFactory: any LectureListFactory {
        return appComponent.lectureListFactory
    }
    var postListFactory: any PostListFactory {
        return appComponent.postListFactory
    }
    var clubListFactory: any ClubListFactory {
        return appComponent.clubListFactory
    }
    var myPageFactory: any MyPageFactory {
        return appComponent.myPageFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->MainTabComponent
private func factory1ab5a747ddf21e1393f9f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return MainTabDependency2826cdb310ed0b17a725Provider(appComponent: parent1(component) as! AppComponent)
}
private class NoticeDetailSettingDependencye2c86b5d9ab8fbf629c4Provider: NoticeDetailSettingDependency {


    init() {

    }
}
/// ^->AppComponent->NoticeDetailSettingComponent
private func factory24d19202afbef2333be9e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return NoticeDetailSettingDependencye2c86b5d9ab8fbf629c4Provider()
}
private class MyPageDependency48d84b530313b3ee40feProvider: MyPageDependency {
    var changePasswordFactory: any ChangePasswordFactory {
        return appComponent.changePasswordFactory
    }
    var adminRootFactory: any AdminRootFactory {
        return appComponent.adminRootFactory
    }
    var loadUserAuthorityUseCase: any LoadUserAuthorityUseCase {
        return appComponent.loadUserAuthorityUseCase
    }
    var fetchMyInfoUseCase: any FetchMyInfoUseCase {
        return appComponent.fetchMyInfoUseCase
    }
    var logoutUseCase: any LogoutUseCase {
        return appComponent.logoutUseCase
    }
    var withdrawalUseCase: any WithdrawalUseCase {
        return appComponent.withdrawalUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->MyPageComponent
private func factory0f6f456ebf157d02dfb3f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return MyPageDependency48d84b530313b3ee40feProvider(appComponent: parent1(component) as! AppComponent)
}
private class AdminRootDependencyce6cd0efed469d5d1848Provider: AdminRootDependency {
    var userListFactory: any UserListFactory {
        return appComponent.userListFactory
    }
    var requestUserSignupFactory: any RequestUserSignupFactory {
        return appComponent.requestUserSignupFactory
    }
    var withdrawUserListFactory: any WithdrawUserListFactory {
        return appComponent.withdrawUserListFactory
    }
    var schoolListFactory: any SchoolListFactory {
        return appComponent.schoolListFactory
    }
    var organizationListFactory: any OrganizationListFactory {
        return appComponent.organizationListFactory
    }
    var universityListFactory: any UniversityListFactory {
        return appComponent.universityListFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->AdminRootComponent
private func factoryc93d1d06706bf3dab12ff47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return AdminRootDependencyce6cd0efed469d5d1848Provider(appComponent: parent1(component) as! AppComponent)
}
private class InquiryDetailDependencyf68d260d1f6dc07aaedbProvider: InquiryDetailDependency {
    var inputInquiryFactory: any InputInquiryFactory {
        return appComponent.inputInquiryFactory
    }
    var writeInquiryAnswerFactory: any WriteInquiryAnswerFactory {
        return appComponent.writeInquiryAnswerFactory
    }
    var fetchInquiryDetailUseCase: any FetchInquiryDetailUseCase {
        return appComponent.fetchInquiryDetailUseCase
    }
    var loadUserAuthorityUseCase: any LoadUserAuthorityUseCase {
        return appComponent.loadUserAuthorityUseCase
    }
    var deleteMyInquiryUseCase: any DeleteMyInquiryUseCase {
        return appComponent.deleteMyInquiryUseCase
    }
    var deleteInquiryByAdminUseCase: any DeleteInquiryByAdminUseCase {
        return appComponent.deleteInquiryByAdminUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->InquiryDetailComponent
private func factory2d6736bd037393a86ae3f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return InquiryDetailDependencyf68d260d1f6dc07aaedbProvider(appComponent: parent1(component) as! AppComponent)
}
private class InputNoticeDependency7b594803ad882c7e25c9Provider: InputNoticeDependency {
    var noticeDetailSettingFactory: any NoticeDetailSettingFactory {
        return appComponent.noticeDetailSettingFactory
    }
    var fetchPostDetailUseCase: any FetchPostDetailUseCase {
        return appComponent.fetchPostDetailUseCase
    }
    var writePostUseCase: any WritePostUseCase {
        return appComponent.writePostUseCase
    }
    var updatePostUseCase: any UpdatePostUseCase {
        return appComponent.updatePostUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->InputNoticeComponent
private func factory4545df5fcd42aaf8ed60f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return InputNoticeDependency7b594803ad882c7e25c9Provider(appComponent: parent1(component) as! AppComponent)
}
private class LectureDetailSettingDependencyd72c0b79ce6406870a95Provider: LectureDetailSettingDependency {
    var inputLectureFactory: any InputLectureFactory {
        return appComponent.inputLectureFactory
    }
    var searchInstructorUseCase: any SearchInstructorUseCase {
        return appComponent.searchInstructorUseCase
    }
    var searchLineUseCase: any SearchLineUseCase {
        return appComponent.searchLineUseCase
    }
    var searchDepartmentUseCase: any SearchDepartmentUseCase {
        return appComponent.searchDepartmentUseCase
    }
    var searchDivisionUseCase: any SearchDivisionUseCase {
        return appComponent.searchDivisionUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->LectureDetailSettingComponent
private func factoryd0ffb7dfc6fd9633e0e6f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return LectureDetailSettingDependencyd72c0b79ce6406870a95Provider(appComponent: parent1(component) as! AppComponent)
}
private class MainDependency7c6a5b4738b211b8e155Provider: MainDependency {
    var fetchFAQListUseCase: any FetchFAQListUseCase {
        return appComponent.fetchFAQListUseCase
    }
    var loadUserAuthorityUseCase: any LoadUserAuthorityUseCase {
        return appComponent.loadUserAuthorityUseCase
    }
    var inputFAQUseCase: any InputFAQUseCase {
        return appComponent.inputFAQUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->MainComponent
private func factoryc9274e46e78e70f29c54f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return MainDependency7c6a5b4738b211b8e155Provider(appComponent: parent1(component) as! AppComponent)
}
private class RequestUserSignupDependency18cb29ced79dfe8a20f3Provider: RequestUserSignupDependency {
    var userListFactory: any UserListFactory {
        return appComponent.userListFactory
    }
    var withdrawUserListFactory: any WithdrawUserListFactory {
        return appComponent.withdrawUserListFactory
    }
    var fetchUserListUseCase: any FetchUserListUseCase {
        return appComponent.fetchUserListUseCase
    }
    var approveUserSignupUseCase: any ApproveUserSignupUseCase {
        return appComponent.approveUserSignupUseCase
    }
    var rejectUserSignupUseCase: any RejectUserSignupUseCase {
        return appComponent.rejectUserSignupUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->RequestUserSignupComponent
private func factoryebe37a0d5ca0bab085f9f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return RequestUserSignupDependency18cb29ced79dfe8a20f3Provider(appComponent: parent1(component) as! AppComponent)
}
private class RootDependency3944cc797a4a88956fb5Provider: RootDependency {
    var loginFactory: any LoginFactory {
        return appComponent.loginFactory
    }
    var mainTabFactory: any MainTabFactory {
        return appComponent.mainTabFactory
    }
    var findPasswordFactory: any FindPasswordFactory {
        return appComponent.findPasswordFactory
    }
    var successSignUpFactory: any SuccessSignUpFactory {
        return appComponent.successSignUpFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->RootComponent
private func factory264bfc4d4cb6b0629b40f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return RootDependency3944cc797a4a88956fb5Provider(appComponent: parent1(component) as! AppComponent)
}
private class PostListDependencye041dce90a2be61e7af5Provider: PostListDependency {
    var noticeListFactory: any NoticeListFactory {
        return appComponent.noticeListFactory
    }
    var inquiryListFactory: any InquiryListFactory {
        return appComponent.inquiryListFactory
    }
    var inputPostFactory: any InputPostFactory {
        return appComponent.inputPostFactory
    }
    var postDetailFactory: any PostDetailFactory {
        return appComponent.postDetailFactory
    }
    var loadUserAuthorityUseCase: any LoadUserAuthorityUseCase {
        return appComponent.loadUserAuthorityUseCase
    }
    var fetchPostListUseCase: any FetchPostListUseCase {
        return appComponent.fetchPostListUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->PostListComponent
private func factory0c89e2bbcc02dbcac018f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return PostListDependencye041dce90a2be61e7af5Provider(appComponent: parent1(component) as! AppComponent)
}
private class ChangePasswordDependency04ab7ced24136c4fb27eProvider: ChangePasswordDependency {
    var successChangePasswordFactory: any SuccessChangePasswordFactory {
        return appComponent.successChangePasswordFactory
    }
    var changePasswordUseCase: any ChangePasswordUseCase {
        return appComponent.changePasswordUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->ChangePasswordComponent
private func factoryab7c4d87dab53e0a51b9f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ChangePasswordDependency04ab7ced24136c4fb27eProvider(appComponent: parent1(component) as! AppComponent)
}
private class ClubdetailDependency09c03e1ee67d1fbecba1Provider: ClubdetailDependency {
    var studentInfoFactory: any StudentInfoFactory {
        return appComponent.studentInfoFactory
    }
    var loadUserAuthorityUseCase: any LoadUserAuthorityUseCase {
        return appComponent.loadUserAuthorityUseCase
    }
    var fetchClubDetailUseCase: any FetchClubDetailUseCase {
        return appComponent.fetchClubDetailUseCase
    }
    var fetchStudentListByClubUseCase: any FetchStudentListByClubUseCase {
        return appComponent.fetchStudentListByClubUseCase
    }
    var fetchMyInfoUseCase: any FetchMyInfoUseCase {
        return appComponent.fetchMyInfoUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->ClubDetailComponent
private func factory1559652f8e80cfa88d06f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ClubdetailDependency09c03e1ee67d1fbecba1Provider(appComponent: parent1(component) as! AppComponent)
}
private class SuccessSignUpDependencydbc5dd5670791a0302f6Provider: SuccessSignUpDependency {


    init() {

    }
}
/// ^->AppComponent->SuccessSignUpComponent
private func factorybf219b153b668170161de3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SuccessSignUpDependencydbc5dd5670791a0302f6Provider()
}
private class WithdrawUserListDependencyc576fefb2eff9e703c66Provider: WithdrawUserListDependency {
    var userListFactory: any UserListFactory {
        return appComponent.userListFactory
    }
    var requestUserSignupFactory: any RequestUserSignupFactory {
        return appComponent.requestUserSignupFactory
    }
    var fetchWithdrawUserListUseCase: any FetchWithdrawUserListUseCase {
        return appComponent.fetchWithdrawUserListUseCase
    }
    var withdrawUserUseCase: any WithdrawUserUseCase {
        return appComponent.withdrawUserUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->WithdrawUserListComponent
private func factory4d07a7e30330c03d5d63f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return WithdrawUserListDependencyc576fefb2eff9e703c66Provider(appComponent: parent1(component) as! AppComponent)
}
private class InputSchoolDependencye8d4bffe76e2533005e2Provider: InputSchoolDependency {
    var createdSchoolUseCase: any CreatedSchoolUseCase {
        return appComponent.createdSchoolUseCase
    }
    var modifySchoolUseCase: any ModifySchoolUseCase {
        return appComponent.modifySchoolUseCase
    }
    var deleteSchoolUseCase: any DeleteSchoolUseCase {
        return appComponent.deleteSchoolUseCase
    }
    var fetchSchoolDetailUseCase: any FetchSchoolDetailUseCase {
        return appComponent.fetchSchoolDetailUseCase
    }
    var inputClubFactory: any InputClubFactory {
        return appComponent.inputClubFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->InputSchoolComponent
private func factorya02470c933733e398aeef47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return InputSchoolDependencye8d4bffe76e2533005e2Provider(appComponent: parent1(component) as! AppComponent)
}
private class FindPasswordDependency542eacce769b9dc25904Provider: FindPasswordDependency {
    var sendEmailCertificationLinkUseCase: any SendEmailCertificationLinkUseCase {
        return appComponent.sendEmailCertificationLinkUseCase
    }
    var fetchEmailVertificationStatusUseCase: any FetchEmailVertificationStatusUseCase {
        return appComponent.fetchEmailVertificationStatusUseCase
    }
    var newPasswordFactory: any NewPasswordFactory {
        return appComponent.newPasswordFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->FindPasswordComponent
private func factory15775d8436b06b9741d1f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return FindPasswordDependency542eacce769b9dc25904Provider(appComponent: parent1(component) as! AppComponent)
}
private class LectureApplicantListDependency5bfdb7310dde792c0738Provider: LectureApplicantListDependency {
    var fetchApplicantListUseCase: any FetchApplicantListUseCase {
        return appComponent.fetchApplicantListUseCase
    }
    var setLectureCompletionUseCase: any SetLectureCompletionUseCase {
        return appComponent.setLectureCompletionUseCase
    }
    var fetchAppliedLectureStudentDetailUseCase: any FetchAppliedLectureStudentDetailUseCase {
        return appComponent.fetchAppliedLectureStudentDetailUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->LectureApplicantListComponent
private func factory78a87c10d14f7bbaaa9df47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return LectureApplicantListDependency5bfdb7310dde792c0738Provider(appComponent: parent1(component) as! AppComponent)
}
private class UserListDependency662472cb2c7f9340fd99Provider: UserListDependency {
    var requestUserSignupFactory: any RequestUserSignupFactory {
        return appComponent.requestUserSignupFactory
    }
    var withdrawUserListFactory: any WithdrawUserListFactory {
        return appComponent.withdrawUserListFactory
    }
    var fetchUserListUseCase: any FetchUserListUseCase {
        return appComponent.fetchUserListUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->UserListComponent
private func factorycf08383b935d2e18f4c7f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return UserListDependency662472cb2c7f9340fd99Provider(appComponent: parent1(component) as! AppComponent)
}
private class StudentInfoDependency5d1163a5288c79c06dffProvider: StudentInfoDependency {
    var activityListFactory: any ActivityListFactory {
        return appComponent.activityListFactory
    }
    var inputCertificationFactory: any InputCertificationFactory {
        return appComponent.inputCertificationFactory
    }
    var loadUserAuthorityUseCase: any LoadUserAuthorityUseCase {
        return appComponent.loadUserAuthorityUseCase
    }
    var fetchStudentDetailByClubUseCase: any FetchStudentDetailByClubUseCase {
        return appComponent.fetchStudentDetailByClubUseCase
    }
    var fetchCertificationListByStudentUseCase: any FetchCertificationListByStudentUseCase {
        return appComponent.fetchCertificationListByStudentUseCase
    }
    var fetchCertificationListByTeacherUseCase: any FetchCertificationListByTeacherUseCase {
        return appComponent.fetchCertificationListByTeacherUseCase
    }
    var fetchAppliedLectureListUseCase: any FetchAppliedLectureListUseCase {
        return appComponent.fetchAppliedLectureListUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->StudentInfoComponent
private func factory5ce0f173abbf535f654ff47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return StudentInfoDependency5d1163a5288c79c06dffProvider(appComponent: parent1(component) as! AppComponent)
}
private class UniversityListDependency114351175c975dac12b7Provider: UniversityListDependency {
    var fetchUniversityListUseCase: any FetchUniversityListUseCase {
        return appComponent.fetchUniversityListUseCase
    }
    var inputUniversityFactory: any InputUniversityFactory {
        return appComponent.inputUniversityFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->UniversityListComponent
private func factory138cdcda950ee50e6d46f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return UniversityListDependency114351175c975dac12b7Provider(appComponent: parent1(component) as! AppComponent)
}
private class WriteInquiryAnswerDependencyeba82c0423abdd3e1acfProvider: WriteInquiryAnswerDependency {
    var replyInquiryUseCase: any ReplyInquiryUseCase {
        return appComponent.replyInquiryUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->WriteInquiryAnswerComponent
private func factory3d4cadf14cd9a3336981f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return WriteInquiryAnswerDependencyeba82c0423abdd3e1acfProvider(appComponent: parent1(component) as! AppComponent)
}
private class PostDetailDependencycf431278832ae8226535Provider: PostDetailDependency {
    var inputPostFactory: any InputPostFactory {
        return appComponent.inputPostFactory
    }
    var fetchPostDetailUseCase: any FetchPostDetailUseCase {
        return appComponent.fetchPostDetailUseCase
    }
    var deletePostUseCase: any DeletePostUseCase {
        return appComponent.deletePostUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->PostDetailComponent
private func factorybc555a73df3767a26999f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return PostDetailDependencycf431278832ae8226535Provider(appComponent: parent1(component) as! AppComponent)
}
private class SuccessChangePasswordDependency05dde412f91beb4c3b8dProvider: SuccessChangePasswordDependency {
    var myPageFactory: any MyPageFactory {
        return appComponent.myPageFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SuccessChangePasswordComponent
private func factoryde3552d9e0f793ec8b8df47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SuccessChangePasswordDependency05dde412f91beb4c3b8dProvider(appComponent: parent1(component) as! AppComponent)
}
private class NewPasswordDependency3320cbf6e40b8cd8a8eaProvider: NewPasswordDependency {
    var findPasswordUseCase: any FindPasswordUseCase {
        return appComponent.findPasswordUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->NewPasswordComponent
private func factory52985a6d5ec65d75bd97f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return NewPasswordDependency3320cbf6e40b8cd8a8eaProvider(appComponent: parent1(component) as! AppComponent)
}
private class InquiryListDependencyec75a7335a50ded93b28Provider: InquiryListDependency {
    var inputInquiryFactory: any InputInquiryFactory {
        return appComponent.inputInquiryFactory
    }
    var inquiryDetailFactory: any InquiryDetailFactory {
        return appComponent.inquiryDetailFactory
    }
    var loadUserAuthorityUseCase: any LoadUserAuthorityUseCase {
        return appComponent.loadUserAuthorityUseCase
    }
    var fetchMyInquiryListUseCase: any FetchMyInquiryListUseCase {
        return appComponent.fetchMyInquiryListUseCase
    }
    var fetchInquiryByAdminUseCase: any FetchInquiryByAdminUseCase {
        return appComponent.fetchInquiryByAdminUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->InquiryListComponent
private func factorydd7e28250a180554c7a0f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return InquiryListDependencyec75a7335a50ded93b28Provider(appComponent: parent1(component) as! AppComponent)
}
private class SchoolListDependency96b276c3342c1aca3550Provider: SchoolListDependency {
    var fetchSchoolListUseCase: any FetchSchoolListUseCase {
        return appComponent.fetchSchoolListUseCase
    }
    var fetchSchoolDetailUseCase: any FetchSchoolDetailUseCase {
        return appComponent.fetchSchoolDetailUseCase
    }
    var inputSchoolFactory: any InputSchoolFactory {
        return appComponent.inputSchoolFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SchoolListComponent
private func factoryd55f8188de756273ca44f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SchoolListDependency96b276c3342c1aca3550Provider(appComponent: parent1(component) as! AppComponent)
}
private class ActivityListDependencyb8e659960978b8384f80Provider: ActivityListDependency {
    var activityDetailFactory: any ActivityDetailFactory {
        return appComponent.activityDetailFactory
    }
    var inputActivityFactory: any InputActivityFactory {
        return appComponent.inputActivityFactory
    }
    var loadUserAuthorityUseCase: any LoadUserAuthorityUseCase {
        return appComponent.loadUserAuthorityUseCase
    }
    var fetchMyActivityUseCase: any FetchMyActivityUseCase {
        return appComponent.fetchMyActivityUseCase
    }
    var fetchActivityByIDUseCase: any FetchActivityByIDUseCase {
        return appComponent.fetchActivityByIDUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->ActivityListComponent
private func factory7177e6769ee69064a61bf47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ActivityListDependencyb8e659960978b8384f80Provider(appComponent: parent1(component) as! AppComponent)
}
private class InputLectureDependencyea7ee6e390216477bbd3Provider: InputLectureDependency {
    var openLectureUseCase: any OpenLectureUseCase {
        return appComponent.openLectureUseCase
    }
    var lectureDetailSettingFactory: any LectureDetailSettingFactory {
        return appComponent.lectureDetailSettingFactory
    }
    var fetchLectureDetailUseCase: any FetchLectureDetailUseCase {
        return appComponent.fetchLectureDetailUseCase
    }
    var modifyLectureUseCase: any ModifyLectureUseCase {
        return appComponent.modifyLectureUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->InputLectureComponent
private func factory622e14688d9803ec3c64f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return InputLectureDependencyea7ee6e390216477bbd3Provider(appComponent: parent1(component) as! AppComponent)
}
private class LoginDependencyf4e78d0ad57be469bfd9Provider: LoginDependency {
    var loginUseCase: any LoginUseCase {
        return appComponent.loginUseCase
    }
    var signupFactory: any SignUpFactory {
        return appComponent.signupFactory
    }
    var saveUserAuthorityUseCase: any SaveUserAuthorityUseCase {
        return appComponent.saveUserAuthorityUseCase
    }
    var findPasswordFactory: any FindPasswordFactory {
        return appComponent.findPasswordFactory
    }
    var reissueTokenUseCase: any ReissueTokenUseCase {
        return appComponent.reissueTokenUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->LoginComponent
private func factoryd6018e98563de75a2ba4f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return LoginDependencyf4e78d0ad57be469bfd9Provider(appComponent: parent1(component) as! AppComponent)
}
private class InputUniversityDependencyd59283d5aa3af708a885Provider: InputUniversityDependency {
    var createdUniversityUseCase: any CreatedUniversityUseCase {
        return appComponent.createdUniversityUseCase
    }
    var modifyUniversityUseCase: any ModifyUniversityUseCase {
        return appComponent.modifyUniversityUseCase
    }
    var deleteUniversityUseCase: any DeleteUniversityUseCase {
        return appComponent.deleteUniversityUseCase
    }
    var createdDepartmentUseCase: any CreatedDepartmentUseCase {
        return appComponent.createdDepartmentUseCase
    }
    var deleteDepartmentUseCase: any DeleteDepartmentUseCase {
        return appComponent.deleteDepartmentUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->InputUniversityComponent
private func factoryb6aa118932d97d72500af47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return InputUniversityDependencyd59283d5aa3af708a885Provider(appComponent: parent1(component) as! AppComponent)
}
private class LectureListDependencyf05b805b4d41a7643bcdProvider: LectureListDependency {
    var lectureListDetailFactory: any LectureListDetailFactory {
        return appComponent.lectureListDetailFactory
    }
    var inputLectureFactory: any InputLectureFactory {
        return appComponent.inputLectureFactory
    }
    var loadUserAuthorityUseCase: any LoadUserAuthorityUseCase {
        return appComponent.loadUserAuthorityUseCase
    }
    var fetchLectureListUseCase: any FetchLectureListUseCase {
        return appComponent.fetchLectureListUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->LectureListComponent
private func factorya2eac906a839dcacda45f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return LectureListDependencyf05b805b4d41a7643bcdProvider(appComponent: parent1(component) as! AppComponent)
}
private class PostDetailSettingDependency372dc6ac7d7de7c5ac4eProvider: PostDetailSettingDependency {


    init() {

    }
}
/// ^->AppComponent->PostDetailSettingComponent
private func factoryaacb19523586bb790cade3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return PostDetailSettingDependency372dc6ac7d7de7c5ac4eProvider()
}
private class ActivityDetailDependencyc459286ea5f8c1b2ecdbProvider: ActivityDetailDependency {
    var inputActivityFactory: any InputActivityFactory {
        return appComponent.inputActivityFactory
    }
    var loadUserAuthorityUseCase: any LoadUserAuthorityUseCase {
        return appComponent.loadUserAuthorityUseCase
    }
    var fetchActivityDetailUseCase: any FetchActivityDetailUseCase {
        return appComponent.fetchActivityDetailUseCase
    }
    var deleteActivityUseCase: any DeleteActivityUseCase {
        return appComponent.deleteActivityUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->ActivityDetailComponent
private func factory7c395808ac9dfb8fb229f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ActivityDetailDependencyc459286ea5f8c1b2ecdbProvider(appComponent: parent1(component) as! AppComponent)
}
private class NoticeDetailDependency3e09bbd26d7f6105e665Provider: NoticeDetailDependency {
    var inputNoticeFactory: any InputNoticeFactory {
        return appComponent.inputNoticeFactory
    }
    var fetchPostDetailUseCase: any FetchPostDetailUseCase {
        return appComponent.fetchPostDetailUseCase
    }
    var deletePostUseCase: any DeletePostUseCase {
        return appComponent.deletePostUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->NoticeDetailViewComponent
private func factory0798e0f01e95aeaff56ff47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return NoticeDetailDependency3e09bbd26d7f6105e665Provider(appComponent: parent1(component) as! AppComponent)
}
private class InputOrganizationDependency49d4ddf4db5fa8fc981eProvider: InputOrganizationDependency {
    var createdCompanyUseCase: any CreatedCompanyUseCase {
        return appComponent.createdCompanyUseCase
    }
    var createdGovernmentUseCase: any CreatedGovernmentUseCase {
        return appComponent.createdGovernmentUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->InputOrganizationComponent
private func factory45fa7935479bac9ac06df47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return InputOrganizationDependency49d4ddf4db5fa8fc981eProvider(appComponent: parent1(component) as! AppComponent)
}
private class InputInquiryDependency0f59954f6ae75e794799Provider: InputInquiryDependency {
    var inputInquiryUseCase: any InputInquiryUseCase {
        return appComponent.inputInquiryUseCase
    }
    var modifyMyInquiryUseCase: any ModifyMyInquiryUseCase {
        return appComponent.modifyMyInquiryUseCase
    }
    var fetchInquiryDetailUseCase: any FetchInquiryDetailUseCase {
        return appComponent.fetchInquiryDetailUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->InputInquiryComponent
private func factory818540ce7b5cc0ed9d3bf47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return InputInquiryDependency0f59954f6ae75e794799Provider(appComponent: parent1(component) as! AppComponent)
}
private class InputActivityDependency4e692e68e51cea5b706dProvider: InputActivityDependency {
    var activityDetailSettingFactory: any ActivityDetailSettingFactory {
        return appComponent.activityDetailSettingFactory
    }
    var fetchActivityDetailUseCase: any FetchActivityDetailUseCase {
        return appComponent.fetchActivityDetailUseCase
    }
    var inputActivityUseCase: any InputActivityUseCase {
        return appComponent.inputActivityUseCase
    }
    var modifyActivityUseCase: any ModifyActivityUseCase {
        return appComponent.modifyActivityUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->InputActivityComponent
private func factory3fc1a279eeb8c906e603f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return InputActivityDependency4e692e68e51cea5b706dProvider(appComponent: parent1(component) as! AppComponent)
}

#else
extension InputClubComponent: Registration {
    public func registerItems() {
        keyPathToName[\InputClubDependency.createdClubUseCase] = "createdClubUseCase-any CreatedClubUseCase"
        keyPathToName[\InputClubDependency.deleteClubUseCase] = "deleteClubUseCase-any DeleteClubUseCase"
        keyPathToName[\InputClubDependency.modifyClubUseCase] = "modifyClubUseCase-any ModifyClubUseCase"
    }
}
extension InputPostComponent: Registration {
    public func registerItems() {
        keyPathToName[\InputPostDependency.postDetailSettingFactory] = "postDetailSettingFactory-any PostDetailSettingFactory"
        keyPathToName[\InputPostDependency.writePostUseCase] = "writePostUseCase-any WritePostUseCase"
        keyPathToName[\InputPostDependency.fetchPostDetailUseCase] = "fetchPostDetailUseCase-any FetchPostDetailUseCase"
        keyPathToName[\InputPostDependency.updatePostUseCase] = "updatePostUseCase-any UpdatePostUseCase"
    }
}
extension InputCertificationComponent: Registration {
    public func registerItems() {
        keyPathToName[\InputCertificationDependency.inputCertificationUseCase] = "inputCertificationUseCase-any InputCertificationUseCase"
        keyPathToName[\InputCertificationDependency.updateCertificationUseCase] = "updateCertificationUseCase-any UpdateCertificationUseCase"
    }
}
extension ClubListComponent: Registration {
    public func registerItems() {
        keyPathToName[\ClubListDependency.fetchClubListUseCase] = "fetchClubListUseCase-any FetchClubListUseCase"
        keyPathToName[\ClubListDependency.fetchSchoolListUseCase] = "fetchSchoolListUseCase-any FetchSchoolListUseCase"
        keyPathToName[\ClubListDependency.loadUserAuthorityUseCase] = "loadUserAuthorityUseCase-any LoadUserAuthorityUseCase"
        keyPathToName[\ClubListDependency.clubDetailFactory] = "clubDetailFactory-any ClubDetailFactory"
    }
}
extension LectureListDetailComponent: Registration {
    public func registerItems() {
        keyPathToName[\LectureListDetailDependency.fetchLectureDetailUseCase] = "fetchLectureDetailUseCase-any FetchLectureDetailUseCase"
        keyPathToName[\LectureListDetailDependency.applyLectureUseCase] = "applyLectureUseCase-any ApplyLectureUseCase"
        keyPathToName[\LectureListDetailDependency.cancelLectureApplicationUseCase] = "cancelLectureApplicationUseCase-any CancelLectureApplicationUseCase"
        keyPathToName[\LectureListDetailDependency.loadUserAuthorityUseCase] = "loadUserAuthorityUseCase-any LoadUserAuthorityUseCase"
        keyPathToName[\LectureListDetailDependency.lectureApplicantListFactory] = "lectureApplicantListFactory-any LectureApplicantListFactory"
        keyPathToName[\LectureListDetailDependency.deleteLectureUseCase] = "deleteLectureUseCase-any DeleteLectureUseCase"
        keyPathToName[\LectureListDetailDependency.inputLectureFactory] = "inputLectureFactory-any InputLectureFactory"
    }
}
extension OrganizationListComponent: Registration {
    public func registerItems() {
        keyPathToName[\OrganizationListDependency.fetchCompanyListUseCase] = "fetchCompanyListUseCase-any FetchCompanyListUseCase"
        keyPathToName[\OrganizationListDependency.deleteCompanyUseCase] = "deleteCompanyUseCase-any DeleteCompanyUseCase"
        keyPathToName[\OrganizationListDependency.inputOrganizationFactory] = "inputOrganizationFactory-any InputOrganizationFactory"
        keyPathToName[\OrganizationListDependency.fetchGovernmentListUseCase] = "fetchGovernmentListUseCase-any FetchGovernmentListUseCase"
        keyPathToName[\OrganizationListDependency.deleteGovernmentUseCase] = "deleteGovernmentUseCase-any DeleteGovernmentUseCase"
    }
}
extension NoticeListComponent: Registration {
    public func registerItems() {
        keyPathToName[\NoticeListDependency.inquiryListFactory] = "inquiryListFactory-any InquiryListFactory"
        keyPathToName[\NoticeListDependency.noticeDetailFactory] = "noticeDetailFactory-any NoticeDetailFactory"
        keyPathToName[\NoticeListDependency.inputNoticeFactory] = "inputNoticeFactory-any InputNoticeFactory"
        keyPathToName[\NoticeListDependency.fetchPostListUseCase] = "fetchPostListUseCase-any FetchPostListUseCase"
        keyPathToName[\NoticeListDependency.loadUserAuthorityUseCase] = "loadUserAuthorityUseCase-any LoadUserAuthorityUseCase"
    }
}
extension SignUpComponent: Registration {
    public func registerItems() {
        keyPathToName[\SignUpDependency.studentSignupUseCase] = "studentSignupUseCase-any StudentSignupUseCase"
        keyPathToName[\SignUpDependency.teacherSignupUseCase] = "teacherSignupUseCase-any TeacherSignupUseCase"
        keyPathToName[\SignUpDependency.bbozzakSignupUseCase] = "bbozzakSignupUseCase-any BbozzakSignupUseCase"
        keyPathToName[\SignUpDependency.professorSignupUseCase] = "professorSignupUseCase-any ProfessorSignupUseCase"
        keyPathToName[\SignUpDependency.governmentSignupUseCase] = "governmentSignupUseCase-any GovernmentSignupUseCase"
        keyPathToName[\SignUpDependency.companyInstructorSignupUseCase] = "companyInstructorSignupUseCase-any CompanyInstructorSignupUseCase"
        keyPathToName[\SignUpDependency.successSignUpFactory] = "successSignUpFactory-any SuccessSignUpFactory"
        keyPathToName[\SignUpDependency.fetchAllSchoolNameUseCase] = "fetchAllSchoolNameUseCase-any FetchAllSchoolNameUseCase"
        keyPathToName[\SignUpDependency.fetchAllClubNameUseCase] = "fetchAllClubNameUseCase-any FetchAllClubNameUseCase"
        keyPathToName[\SignUpDependency.fetchCompanyListUseCase] = "fetchCompanyListUseCase-any FetchCompanyListUseCase"
        keyPathToName[\SignUpDependency.fetchUniversityListUseCase] = "fetchUniversityListUseCase-any FetchUniversityListUseCase"
        keyPathToName[\SignUpDependency.fetchGovernmentListUseCase] = "fetchGovernmentListUseCase-any FetchGovernmentListUseCase"
    }
}
extension ActivityDetailSettingComponent: Registration {
    public func registerItems() {

    }
}
extension MainTabComponent: Registration {
    public func registerItems() {
        keyPathToName[\MainTabDependency.mainFactory] = "mainFactory-any MainFactory"
        keyPathToName[\MainTabDependency.lectureListFactory] = "lectureListFactory-any LectureListFactory"
        keyPathToName[\MainTabDependency.postListFactory] = "postListFactory-any PostListFactory"
        keyPathToName[\MainTabDependency.clubListFactory] = "clubListFactory-any ClubListFactory"
        keyPathToName[\MainTabDependency.myPageFactory] = "myPageFactory-any MyPageFactory"
    }
}
extension NoticeDetailSettingComponent: Registration {
    public func registerItems() {

    }
}
extension MyPageComponent: Registration {
    public func registerItems() {
        keyPathToName[\MyPageDependency.changePasswordFactory] = "changePasswordFactory-any ChangePasswordFactory"
        keyPathToName[\MyPageDependency.adminRootFactory] = "adminRootFactory-any AdminRootFactory"
        keyPathToName[\MyPageDependency.loadUserAuthorityUseCase] = "loadUserAuthorityUseCase-any LoadUserAuthorityUseCase"
        keyPathToName[\MyPageDependency.fetchMyInfoUseCase] = "fetchMyInfoUseCase-any FetchMyInfoUseCase"
        keyPathToName[\MyPageDependency.logoutUseCase] = "logoutUseCase-any LogoutUseCase"
        keyPathToName[\MyPageDependency.withdrawalUseCase] = "withdrawalUseCase-any WithdrawalUseCase"
    }
}
extension AdminRootComponent: Registration {
    public func registerItems() {
        keyPathToName[\AdminRootDependency.userListFactory] = "userListFactory-any UserListFactory"
        keyPathToName[\AdminRootDependency.requestUserSignupFactory] = "requestUserSignupFactory-any RequestUserSignupFactory"
        keyPathToName[\AdminRootDependency.withdrawUserListFactory] = "withdrawUserListFactory-any WithdrawUserListFactory"
        keyPathToName[\AdminRootDependency.schoolListFactory] = "schoolListFactory-any SchoolListFactory"
        keyPathToName[\AdminRootDependency.organizationListFactory] = "organizationListFactory-any OrganizationListFactory"
        keyPathToName[\AdminRootDependency.universityListFactory] = "universityListFactory-any UniversityListFactory"
    }
}
extension InquiryDetailComponent: Registration {
    public func registerItems() {
        keyPathToName[\InquiryDetailDependency.inputInquiryFactory] = "inputInquiryFactory-any InputInquiryFactory"
        keyPathToName[\InquiryDetailDependency.writeInquiryAnswerFactory] = "writeInquiryAnswerFactory-any WriteInquiryAnswerFactory"
        keyPathToName[\InquiryDetailDependency.fetchInquiryDetailUseCase] = "fetchInquiryDetailUseCase-any FetchInquiryDetailUseCase"
        keyPathToName[\InquiryDetailDependency.loadUserAuthorityUseCase] = "loadUserAuthorityUseCase-any LoadUserAuthorityUseCase"
        keyPathToName[\InquiryDetailDependency.deleteMyInquiryUseCase] = "deleteMyInquiryUseCase-any DeleteMyInquiryUseCase"
        keyPathToName[\InquiryDetailDependency.deleteInquiryByAdminUseCase] = "deleteInquiryByAdminUseCase-any DeleteInquiryByAdminUseCase"
    }
}
extension InputNoticeComponent: Registration {
    public func registerItems() {
        keyPathToName[\InputNoticeDependency.noticeDetailSettingFactory] = "noticeDetailSettingFactory-any NoticeDetailSettingFactory"
        keyPathToName[\InputNoticeDependency.fetchPostDetailUseCase] = "fetchPostDetailUseCase-any FetchPostDetailUseCase"
        keyPathToName[\InputNoticeDependency.writePostUseCase] = "writePostUseCase-any WritePostUseCase"
        keyPathToName[\InputNoticeDependency.updatePostUseCase] = "updatePostUseCase-any UpdatePostUseCase"
    }
}
extension LectureDetailSettingComponent: Registration {
    public func registerItems() {
        keyPathToName[\LectureDetailSettingDependency.inputLectureFactory] = "inputLectureFactory-any InputLectureFactory"
        keyPathToName[\LectureDetailSettingDependency.searchInstructorUseCase] = "searchInstructorUseCase-any SearchInstructorUseCase"
        keyPathToName[\LectureDetailSettingDependency.searchLineUseCase] = "searchLineUseCase-any SearchLineUseCase"
        keyPathToName[\LectureDetailSettingDependency.searchDepartmentUseCase] = "searchDepartmentUseCase-any SearchDepartmentUseCase"
        keyPathToName[\LectureDetailSettingDependency.searchDivisionUseCase] = "searchDivisionUseCase-any SearchDivisionUseCase"
    }
}
extension MainComponent: Registration {
    public func registerItems() {
        keyPathToName[\MainDependency.fetchFAQListUseCase] = "fetchFAQListUseCase-any FetchFAQListUseCase"
        keyPathToName[\MainDependency.loadUserAuthorityUseCase] = "loadUserAuthorityUseCase-any LoadUserAuthorityUseCase"
        keyPathToName[\MainDependency.inputFAQUseCase] = "inputFAQUseCase-any InputFAQUseCase"
    }
}
extension RequestUserSignupComponent: Registration {
    public func registerItems() {
        keyPathToName[\RequestUserSignupDependency.userListFactory] = "userListFactory-any UserListFactory"
        keyPathToName[\RequestUserSignupDependency.withdrawUserListFactory] = "withdrawUserListFactory-any WithdrawUserListFactory"
        keyPathToName[\RequestUserSignupDependency.fetchUserListUseCase] = "fetchUserListUseCase-any FetchUserListUseCase"
        keyPathToName[\RequestUserSignupDependency.approveUserSignupUseCase] = "approveUserSignupUseCase-any ApproveUserSignupUseCase"
        keyPathToName[\RequestUserSignupDependency.rejectUserSignupUseCase] = "rejectUserSignupUseCase-any RejectUserSignupUseCase"
    }
}
extension RootComponent: Registration {
    public func registerItems() {
        keyPathToName[\RootDependency.loginFactory] = "loginFactory-any LoginFactory"
        keyPathToName[\RootDependency.mainTabFactory] = "mainTabFactory-any MainTabFactory"
        keyPathToName[\RootDependency.findPasswordFactory] = "findPasswordFactory-any FindPasswordFactory"
        keyPathToName[\RootDependency.successSignUpFactory] = "successSignUpFactory-any SuccessSignUpFactory"
    }
}
extension PostListComponent: Registration {
    public func registerItems() {
        keyPathToName[\PostListDependency.noticeListFactory] = "noticeListFactory-any NoticeListFactory"
        keyPathToName[\PostListDependency.inquiryListFactory] = "inquiryListFactory-any InquiryListFactory"
        keyPathToName[\PostListDependency.inputPostFactory] = "inputPostFactory-any InputPostFactory"
        keyPathToName[\PostListDependency.postDetailFactory] = "postDetailFactory-any PostDetailFactory"
        keyPathToName[\PostListDependency.loadUserAuthorityUseCase] = "loadUserAuthorityUseCase-any LoadUserAuthorityUseCase"
        keyPathToName[\PostListDependency.fetchPostListUseCase] = "fetchPostListUseCase-any FetchPostListUseCase"
    }
}
extension ChangePasswordComponent: Registration {
    public func registerItems() {
        keyPathToName[\ChangePasswordDependency.successChangePasswordFactory] = "successChangePasswordFactory-any SuccessChangePasswordFactory"
        keyPathToName[\ChangePasswordDependency.changePasswordUseCase] = "changePasswordUseCase-any ChangePasswordUseCase"
    }
}
extension ClubDetailComponent: Registration {
    public func registerItems() {
        keyPathToName[\ClubdetailDependency.studentInfoFactory] = "studentInfoFactory-any StudentInfoFactory"
        keyPathToName[\ClubdetailDependency.loadUserAuthorityUseCase] = "loadUserAuthorityUseCase-any LoadUserAuthorityUseCase"
        keyPathToName[\ClubdetailDependency.fetchClubDetailUseCase] = "fetchClubDetailUseCase-any FetchClubDetailUseCase"
        keyPathToName[\ClubdetailDependency.fetchStudentListByClubUseCase] = "fetchStudentListByClubUseCase-any FetchStudentListByClubUseCase"
        keyPathToName[\ClubdetailDependency.fetchMyInfoUseCase] = "fetchMyInfoUseCase-any FetchMyInfoUseCase"
    }
}
extension SuccessSignUpComponent: Registration {
    public func registerItems() {

    }
}
extension WithdrawUserListComponent: Registration {
    public func registerItems() {
        keyPathToName[\WithdrawUserListDependency.userListFactory] = "userListFactory-any UserListFactory"
        keyPathToName[\WithdrawUserListDependency.requestUserSignupFactory] = "requestUserSignupFactory-any RequestUserSignupFactory"
        keyPathToName[\WithdrawUserListDependency.fetchWithdrawUserListUseCase] = "fetchWithdrawUserListUseCase-any FetchWithdrawUserListUseCase"
        keyPathToName[\WithdrawUserListDependency.withdrawUserUseCase] = "withdrawUserUseCase-any WithdrawUserUseCase"
    }
}
extension InputSchoolComponent: Registration {
    public func registerItems() {
        keyPathToName[\InputSchoolDependency.createdSchoolUseCase] = "createdSchoolUseCase-any CreatedSchoolUseCase"
        keyPathToName[\InputSchoolDependency.modifySchoolUseCase] = "modifySchoolUseCase-any ModifySchoolUseCase"
        keyPathToName[\InputSchoolDependency.deleteSchoolUseCase] = "deleteSchoolUseCase-any DeleteSchoolUseCase"
        keyPathToName[\InputSchoolDependency.fetchSchoolDetailUseCase] = "fetchSchoolDetailUseCase-any FetchSchoolDetailUseCase"
        keyPathToName[\InputSchoolDependency.inputClubFactory] = "inputClubFactory-any InputClubFactory"
    }
}
extension FindPasswordComponent: Registration {
    public func registerItems() {
        keyPathToName[\FindPasswordDependency.sendEmailCertificationLinkUseCase] = "sendEmailCertificationLinkUseCase-any SendEmailCertificationLinkUseCase"
        keyPathToName[\FindPasswordDependency.fetchEmailVertificationStatusUseCase] = "fetchEmailVertificationStatusUseCase-any FetchEmailVertificationStatusUseCase"
        keyPathToName[\FindPasswordDependency.newPasswordFactory] = "newPasswordFactory-any NewPasswordFactory"
    }
}
extension LectureApplicantListComponent: Registration {
    public func registerItems() {
        keyPathToName[\LectureApplicantListDependency.fetchApplicantListUseCase] = "fetchApplicantListUseCase-any FetchApplicantListUseCase"
        keyPathToName[\LectureApplicantListDependency.setLectureCompletionUseCase] = "setLectureCompletionUseCase-any SetLectureCompletionUseCase"
        keyPathToName[\LectureApplicantListDependency.fetchAppliedLectureStudentDetailUseCase] = "fetchAppliedLectureStudentDetailUseCase-any FetchAppliedLectureStudentDetailUseCase"
    }
}
extension UserListComponent: Registration {
    public func registerItems() {
        keyPathToName[\UserListDependency.requestUserSignupFactory] = "requestUserSignupFactory-any RequestUserSignupFactory"
        keyPathToName[\UserListDependency.withdrawUserListFactory] = "withdrawUserListFactory-any WithdrawUserListFactory"
        keyPathToName[\UserListDependency.fetchUserListUseCase] = "fetchUserListUseCase-any FetchUserListUseCase"
    }
}
extension StudentInfoComponent: Registration {
    public func registerItems() {
        keyPathToName[\StudentInfoDependency.activityListFactory] = "activityListFactory-any ActivityListFactory"
        keyPathToName[\StudentInfoDependency.inputCertificationFactory] = "inputCertificationFactory-any InputCertificationFactory"
        keyPathToName[\StudentInfoDependency.loadUserAuthorityUseCase] = "loadUserAuthorityUseCase-any LoadUserAuthorityUseCase"
        keyPathToName[\StudentInfoDependency.fetchStudentDetailByClubUseCase] = "fetchStudentDetailByClubUseCase-any FetchStudentDetailByClubUseCase"
        keyPathToName[\StudentInfoDependency.fetchCertificationListByStudentUseCase] = "fetchCertificationListByStudentUseCase-any FetchCertificationListByStudentUseCase"
        keyPathToName[\StudentInfoDependency.fetchCertificationListByTeacherUseCase] = "fetchCertificationListByTeacherUseCase-any FetchCertificationListByTeacherUseCase"
        keyPathToName[\StudentInfoDependency.fetchAppliedLectureListUseCase] = "fetchAppliedLectureListUseCase-any FetchAppliedLectureListUseCase"
    }
}
extension UniversityListComponent: Registration {
    public func registerItems() {
        keyPathToName[\UniversityListDependency.fetchUniversityListUseCase] = "fetchUniversityListUseCase-any FetchUniversityListUseCase"
        keyPathToName[\UniversityListDependency.inputUniversityFactory] = "inputUniversityFactory-any InputUniversityFactory"
    }
}
extension WriteInquiryAnswerComponent: Registration {
    public func registerItems() {
        keyPathToName[\WriteInquiryAnswerDependency.replyInquiryUseCase] = "replyInquiryUseCase-any ReplyInquiryUseCase"
    }
}
extension PostDetailComponent: Registration {
    public func registerItems() {
        keyPathToName[\PostDetailDependency.inputPostFactory] = "inputPostFactory-any InputPostFactory"
        keyPathToName[\PostDetailDependency.fetchPostDetailUseCase] = "fetchPostDetailUseCase-any FetchPostDetailUseCase"
        keyPathToName[\PostDetailDependency.deletePostUseCase] = "deletePostUseCase-any DeletePostUseCase"
    }
}
extension SuccessChangePasswordComponent: Registration {
    public func registerItems() {
        keyPathToName[\SuccessChangePasswordDependency.myPageFactory] = "myPageFactory-any MyPageFactory"
    }
}
extension NewPasswordComponent: Registration {
    public func registerItems() {
        keyPathToName[\NewPasswordDependency.findPasswordUseCase] = "findPasswordUseCase-any FindPasswordUseCase"
    }
}
extension InquiryListComponent: Registration {
    public func registerItems() {
        keyPathToName[\InquiryListDependency.inputInquiryFactory] = "inputInquiryFactory-any InputInquiryFactory"
        keyPathToName[\InquiryListDependency.inquiryDetailFactory] = "inquiryDetailFactory-any InquiryDetailFactory"
        keyPathToName[\InquiryListDependency.loadUserAuthorityUseCase] = "loadUserAuthorityUseCase-any LoadUserAuthorityUseCase"
        keyPathToName[\InquiryListDependency.fetchMyInquiryListUseCase] = "fetchMyInquiryListUseCase-any FetchMyInquiryListUseCase"
        keyPathToName[\InquiryListDependency.fetchInquiryByAdminUseCase] = "fetchInquiryByAdminUseCase-any FetchInquiryByAdminUseCase"
    }
}
extension SchoolListComponent: Registration {
    public func registerItems() {
        keyPathToName[\SchoolListDependency.fetchSchoolListUseCase] = "fetchSchoolListUseCase-any FetchSchoolListUseCase"
        keyPathToName[\SchoolListDependency.fetchSchoolDetailUseCase] = "fetchSchoolDetailUseCase-any FetchSchoolDetailUseCase"
        keyPathToName[\SchoolListDependency.inputSchoolFactory] = "inputSchoolFactory-any InputSchoolFactory"
    }
}
extension ActivityListComponent: Registration {
    public func registerItems() {
        keyPathToName[\ActivityListDependency.activityDetailFactory] = "activityDetailFactory-any ActivityDetailFactory"
        keyPathToName[\ActivityListDependency.inputActivityFactory] = "inputActivityFactory-any InputActivityFactory"
        keyPathToName[\ActivityListDependency.loadUserAuthorityUseCase] = "loadUserAuthorityUseCase-any LoadUserAuthorityUseCase"
        keyPathToName[\ActivityListDependency.fetchMyActivityUseCase] = "fetchMyActivityUseCase-any FetchMyActivityUseCase"
        keyPathToName[\ActivityListDependency.fetchActivityByIDUseCase] = "fetchActivityByIDUseCase-any FetchActivityByIDUseCase"
    }
}
extension InputLectureComponent: Registration {
    public func registerItems() {
        keyPathToName[\InputLectureDependency.openLectureUseCase] = "openLectureUseCase-any OpenLectureUseCase"
        keyPathToName[\InputLectureDependency.lectureDetailSettingFactory] = "lectureDetailSettingFactory-any LectureDetailSettingFactory"
        keyPathToName[\InputLectureDependency.fetchLectureDetailUseCase] = "fetchLectureDetailUseCase-any FetchLectureDetailUseCase"
        keyPathToName[\InputLectureDependency.modifyLectureUseCase] = "modifyLectureUseCase-any ModifyLectureUseCase"
    }
}
extension LoginComponent: Registration {
    public func registerItems() {
        keyPathToName[\LoginDependency.loginUseCase] = "loginUseCase-any LoginUseCase"
        keyPathToName[\LoginDependency.signupFactory] = "signupFactory-any SignUpFactory"
        keyPathToName[\LoginDependency.saveUserAuthorityUseCase] = "saveUserAuthorityUseCase-any SaveUserAuthorityUseCase"
        keyPathToName[\LoginDependency.findPasswordFactory] = "findPasswordFactory-any FindPasswordFactory"
        keyPathToName[\LoginDependency.reissueTokenUseCase] = "reissueTokenUseCase-any ReissueTokenUseCase"
    }
}
extension InputUniversityComponent: Registration {
    public func registerItems() {
        keyPathToName[\InputUniversityDependency.createdUniversityUseCase] = "createdUniversityUseCase-any CreatedUniversityUseCase"
        keyPathToName[\InputUniversityDependency.modifyUniversityUseCase] = "modifyUniversityUseCase-any ModifyUniversityUseCase"
        keyPathToName[\InputUniversityDependency.deleteUniversityUseCase] = "deleteUniversityUseCase-any DeleteUniversityUseCase"
        keyPathToName[\InputUniversityDependency.createdDepartmentUseCase] = "createdDepartmentUseCase-any CreatedDepartmentUseCase"
        keyPathToName[\InputUniversityDependency.deleteDepartmentUseCase] = "deleteDepartmentUseCase-any DeleteDepartmentUseCase"
    }
}
extension LectureListComponent: Registration {
    public func registerItems() {
        keyPathToName[\LectureListDependency.lectureListDetailFactory] = "lectureListDetailFactory-any LectureListDetailFactory"
        keyPathToName[\LectureListDependency.inputLectureFactory] = "inputLectureFactory-any InputLectureFactory"
        keyPathToName[\LectureListDependency.loadUserAuthorityUseCase] = "loadUserAuthorityUseCase-any LoadUserAuthorityUseCase"
        keyPathToName[\LectureListDependency.fetchLectureListUseCase] = "fetchLectureListUseCase-any FetchLectureListUseCase"
    }
}
extension PostDetailSettingComponent: Registration {
    public func registerItems() {

    }
}
extension ActivityDetailComponent: Registration {
    public func registerItems() {
        keyPathToName[\ActivityDetailDependency.inputActivityFactory] = "inputActivityFactory-any InputActivityFactory"
        keyPathToName[\ActivityDetailDependency.loadUserAuthorityUseCase] = "loadUserAuthorityUseCase-any LoadUserAuthorityUseCase"
        keyPathToName[\ActivityDetailDependency.fetchActivityDetailUseCase] = "fetchActivityDetailUseCase-any FetchActivityDetailUseCase"
        keyPathToName[\ActivityDetailDependency.deleteActivityUseCase] = "deleteActivityUseCase-any DeleteActivityUseCase"
    }
}
extension NoticeDetailViewComponent: Registration {
    public func registerItems() {
        keyPathToName[\NoticeDetailDependency.inputNoticeFactory] = "inputNoticeFactory-any InputNoticeFactory"
        keyPathToName[\NoticeDetailDependency.fetchPostDetailUseCase] = "fetchPostDetailUseCase-any FetchPostDetailUseCase"
        keyPathToName[\NoticeDetailDependency.deletePostUseCase] = "deletePostUseCase-any DeletePostUseCase"
    }
}
extension InputOrganizationComponent: Registration {
    public func registerItems() {
        keyPathToName[\InputOrganizationDependency.createdCompanyUseCase] = "createdCompanyUseCase-any CreatedCompanyUseCase"
        keyPathToName[\InputOrganizationDependency.createdGovernmentUseCase] = "createdGovernmentUseCase-any CreatedGovernmentUseCase"
    }
}
extension InputInquiryComponent: Registration {
    public func registerItems() {
        keyPathToName[\InputInquiryDependency.inputInquiryUseCase] = "inputInquiryUseCase-any InputInquiryUseCase"
        keyPathToName[\InputInquiryDependency.modifyMyInquiryUseCase] = "modifyMyInquiryUseCase-any ModifyMyInquiryUseCase"
        keyPathToName[\InputInquiryDependency.fetchInquiryDetailUseCase] = "fetchInquiryDetailUseCase-any FetchInquiryDetailUseCase"
    }
}
extension InputActivityComponent: Registration {
    public func registerItems() {
        keyPathToName[\InputActivityDependency.activityDetailSettingFactory] = "activityDetailSettingFactory-any ActivityDetailSettingFactory"
        keyPathToName[\InputActivityDependency.fetchActivityDetailUseCase] = "fetchActivityDetailUseCase-any FetchActivityDetailUseCase"
        keyPathToName[\InputActivityDependency.inputActivityUseCase] = "inputActivityUseCase-any InputActivityUseCase"
        keyPathToName[\InputActivityDependency.modifyActivityUseCase] = "modifyActivityUseCase-any ModifyActivityUseCase"
    }
}
extension AppComponent: Registration {
    public func registerItems() {

        localTable["keychain-Keychain"] = { [unowned self] in self.keychain as Any }
        localTable["remoteLectureDataSource-any RemoteLectureDataSource"] = { [unowned self] in self.remoteLectureDataSource as Any }
        localTable["lectureRepository-any LectureRepository"] = { [unowned self] in self.lectureRepository as Any }
        localTable["openLectureUseCase-any OpenLectureUseCase"] = { [unowned self] in self.openLectureUseCase as Any }
        localTable["fetchLectureListUseCase-any FetchLectureListUseCase"] = { [unowned self] in self.fetchLectureListUseCase as Any }
        localTable["fetchLectureDetailUseCase-any FetchLectureDetailUseCase"] = { [unowned self] in self.fetchLectureDetailUseCase as Any }
        localTable["applyLectureUseCase-any ApplyLectureUseCase"] = { [unowned self] in self.applyLectureUseCase as Any }
        localTable["cancelLectureApplicationUseCase-any CancelLectureApplicationUseCase"] = { [unowned self] in self.cancelLectureApplicationUseCase as Any }
        localTable["searchInstructorUseCase-any SearchInstructorUseCase"] = { [unowned self] in self.searchInstructorUseCase as Any }
        localTable["searchLineUseCase-any SearchLineUseCase"] = { [unowned self] in self.searchLineUseCase as Any }
        localTable["searchDepartmentUseCase-any SearchDepartmentUseCase"] = { [unowned self] in self.searchDepartmentUseCase as Any }
        localTable["searchDivisionUseCase-any SearchDivisionUseCase"] = { [unowned self] in self.searchDivisionUseCase as Any }
        localTable["fetchAppliedLectureListUseCase-any FetchAppliedLectureListUseCase"] = { [unowned self] in self.fetchAppliedLectureListUseCase as Any }
        localTable["fetchApplicantListUseCase-any FetchApplicantListUseCase"] = { [unowned self] in self.fetchApplicantListUseCase as Any }
        localTable["setLectureCompletionUseCase-any SetLectureCompletionUseCase"] = { [unowned self] in self.setLectureCompletionUseCase as Any }
        localTable["deleteLectureUseCase-any DeleteLectureUseCase"] = { [unowned self] in self.deleteLectureUseCase as Any }
        localTable["modifyLectureUseCase-any ModifyLectureUseCase"] = { [unowned self] in self.modifyLectureUseCase as Any }
        localTable["fetchAppliedLectureStudentDetailUseCase-any FetchAppliedLectureStudentDetailUseCase"] = { [unowned self] in self.fetchAppliedLectureStudentDetailUseCase as Any }
        localTable["remoteClubDataSource-any RemoteClubDataSource"] = { [unowned self] in self.remoteClubDataSource as Any }
        localTable["clubRepository-any ClubRepository"] = { [unowned self] in self.clubRepository as Any }
        localTable["fetchClubListUseCase-any FetchClubListUseCase"] = { [unowned self] in self.fetchClubListUseCase as Any }
        localTable["fetchClubDetailUseCase-any FetchClubDetailUseCase"] = { [unowned self] in self.fetchClubDetailUseCase as Any }
        localTable["fetchStudentListByClubUseCase-any FetchStudentListByClubUseCase"] = { [unowned self] in self.fetchStudentListByClubUseCase as Any }
        localTable["fetchStudentDetailByClubUseCase-any FetchStudentDetailByClubUseCase"] = { [unowned self] in self.fetchStudentDetailByClubUseCase as Any }
        localTable["createdClubUseCase-any CreatedClubUseCase"] = { [unowned self] in self.createdClubUseCase as Any }
        localTable["modifyClubUseCase-any ModifyClubUseCase"] = { [unowned self] in self.modifyClubUseCase as Any }
        localTable["deleteClubUseCase-any DeleteClubUseCase"] = { [unowned self] in self.deleteClubUseCase as Any }
        localTable["fetchAllClubNameUseCase-any FetchAllClubNameUseCase"] = { [unowned self] in self.fetchAllClubNameUseCase as Any }
        localTable["remoteGovernmentDataSource-any RemoteGovernmentDataSource"] = { [unowned self] in self.remoteGovernmentDataSource as Any }
        localTable["governmentRepository-any GovernmentRepository"] = { [unowned self] in self.governmentRepository as Any }
        localTable["fetchGovernmentListUseCase-any FetchGovernmentListUseCase"] = { [unowned self] in self.fetchGovernmentListUseCase as Any }
        localTable["createdGovernmentUseCase-any CreatedGovernmentUseCase"] = { [unowned self] in self.createdGovernmentUseCase as Any }
        localTable["deleteGovernmentUseCase-any DeleteGovernmentUseCase"] = { [unowned self] in self.deleteGovernmentUseCase as Any }
        localTable["remotePostDataSource-any RemotePostDataSource"] = { [unowned self] in self.remotePostDataSource as Any }
        localTable["postRepository-any PostRepository"] = { [unowned self] in self.postRepository as Any }
        localTable["writePostUseCase-any WritePostUseCase"] = { [unowned self] in self.writePostUseCase as Any }
        localTable["fetchPostListUseCase-any FetchPostListUseCase"] = { [unowned self] in self.fetchPostListUseCase as Any }
        localTable["fetchPostDetailUseCase-any FetchPostDetailUseCase"] = { [unowned self] in self.fetchPostDetailUseCase as Any }
        localTable["updatePostUseCase-any UpdatePostUseCase"] = { [unowned self] in self.updatePostUseCase as Any }
        localTable["deletePostUseCase-any DeletePostUseCase"] = { [unowned self] in self.deletePostUseCase as Any }
        localTable["remoteInquiryDataSource-RemoteInquiryDataSource"] = { [unowned self] in self.remoteInquiryDataSource as Any }
        localTable["inquiryRepository-InquiryRepository"] = { [unowned self] in self.inquiryRepository as Any }
        localTable["inputInquiryUseCase-any InputInquiryUseCase"] = { [unowned self] in self.inputInquiryUseCase as Any }
        localTable["fetchMyInquiryListUseCase-any FetchMyInquiryListUseCase"] = { [unowned self] in self.fetchMyInquiryListUseCase as Any }
        localTable["fetchInquiryDetailUseCase-any FetchInquiryDetailUseCase"] = { [unowned self] in self.fetchInquiryDetailUseCase as Any }
        localTable["deleteMyInquiryUseCase-any DeleteMyInquiryUseCase"] = { [unowned self] in self.deleteMyInquiryUseCase as Any }
        localTable["modifyMyInquiryUseCase-any ModifyMyInquiryUseCase"] = { [unowned self] in self.modifyMyInquiryUseCase as Any }
        localTable["replyInquiryUseCase-any ReplyInquiryUseCase"] = { [unowned self] in self.replyInquiryUseCase as Any }
        localTable["fetchInquiryByAdminUseCase-any FetchInquiryByAdminUseCase"] = { [unowned self] in self.fetchInquiryByAdminUseCase as Any }
        localTable["deleteInquiryByAdminUseCase-any DeleteInquiryByAdminUseCase"] = { [unowned self] in self.deleteInquiryByAdminUseCase as Any }
        localTable["localAuthDataSource-any LocalAuthDataSource"] = { [unowned self] in self.localAuthDataSource as Any }
        localTable["remoteAuthDataSource-any RemoteAuthDataSource"] = { [unowned self] in self.remoteAuthDataSource as Any }
        localTable["authRepository-any AuthRepository"] = { [unowned self] in self.authRepository as Any }
        localTable["loginUseCase-any LoginUseCase"] = { [unowned self] in self.loginUseCase as Any }
        localTable["saveUserAuthorityUseCase-any SaveUserAuthorityUseCase"] = { [unowned self] in self.saveUserAuthorityUseCase as Any }
        localTable["loadUserAuthorityUseCase-any LoadUserAuthorityUseCase"] = { [unowned self] in self.loadUserAuthorityUseCase as Any }
        localTable["reissueTokenUseCase-any ReissueTokenUseCase"] = { [unowned self] in self.reissueTokenUseCase as Any }
        localTable["logoutUseCase-any LogoutUseCase"] = { [unowned self] in self.logoutUseCase as Any }
        localTable["withdrawalUseCase-any WithdrawalUseCase"] = { [unowned self] in self.withdrawalUseCase as Any }
        localTable["studentSignupUseCase-any StudentSignupUseCase"] = { [unowned self] in self.studentSignupUseCase as Any }
        localTable["teacherSignupUseCase-any TeacherSignupUseCase"] = { [unowned self] in self.teacherSignupUseCase as Any }
        localTable["bbozzakSignupUseCase-any BbozzakSignupUseCase"] = { [unowned self] in self.bbozzakSignupUseCase as Any }
        localTable["professorSignupUseCase-any ProfessorSignupUseCase"] = { [unowned self] in self.professorSignupUseCase as Any }
        localTable["governmentSignupUseCase-any GovernmentSignupUseCase"] = { [unowned self] in self.governmentSignupUseCase as Any }
        localTable["companyInstructorSignupUseCase-any CompanyInstructorSignupUseCase"] = { [unowned self] in self.companyInstructorSignupUseCase as Any }
        localTable["findPasswordUseCase-any FindPasswordUseCase"] = { [unowned self] in self.findPasswordUseCase as Any }
        localTable["remoteActivityDataSource-any RemoteActivityDataSource"] = { [unowned self] in self.remoteActivityDataSource as Any }
        localTable["activityRepository-any ActivityRepository"] = { [unowned self] in self.activityRepository as Any }
        localTable["inputActivityUseCase-any InputActivityUseCase"] = { [unowned self] in self.inputActivityUseCase as Any }
        localTable["modifyActivityUseCase-any ModifyActivityUseCase"] = { [unowned self] in self.modifyActivityUseCase as Any }
        localTable["deleteActivityUseCase-any DeleteActivityUseCase"] = { [unowned self] in self.deleteActivityUseCase as Any }
        localTable["fetchMyActivityUseCase-any FetchMyActivityUseCase"] = { [unowned self] in self.fetchMyActivityUseCase as Any }
        localTable["fetchActivityByIDUseCase-any FetchActivityByIDUseCase"] = { [unowned self] in self.fetchActivityByIDUseCase as Any }
        localTable["fetchActivityListUseCase-any FetchActivityListUseCase"] = { [unowned self] in self.fetchActivityListUseCase as Any }
        localTable["fetchActivityDetailUseCase-any FetchActivityDetailUseCase"] = { [unowned self] in self.fetchActivityDetailUseCase as Any }
        localTable["remoteAdminDataSource-any RemoteAdminDataSource"] = { [unowned self] in self.remoteAdminDataSource as Any }
        localTable["adminRepository-any AdminRepository"] = { [unowned self] in self.adminRepository as Any }
        localTable["fetchUserListUseCase-any FetchUserListUseCase"] = { [unowned self] in self.fetchUserListUseCase as Any }
        localTable["fetchUserDetailUseCase-any FetchUserDetailUseCase"] = { [unowned self] in self.fetchUserDetailUseCase as Any }
        localTable["approveUserSignupUseCase-any ApproveUserSignupUseCase"] = { [unowned self] in self.approveUserSignupUseCase as Any }
        localTable["rejectUserSignupUseCase-any RejectUserSignupUseCase"] = { [unowned self] in self.rejectUserSignupUseCase as Any }
        localTable["withdrawUserUseCase-any WithdrawUserUseCase"] = { [unowned self] in self.withdrawUserUseCase as Any }
        localTable["remoteUserDataSource-any RemoteUserDataSource"] = { [unowned self] in self.remoteUserDataSource as Any }
        localTable["userRepository-any UserRepository"] = { [unowned self] in self.userRepository as Any }
        localTable["changePasswordUseCase-any ChangePasswordUseCase"] = { [unowned self] in self.changePasswordUseCase as Any }
        localTable["fetchMyInfoUseCase-any FetchMyInfoUseCase"] = { [unowned self] in self.fetchMyInfoUseCase as Any }
        localTable["remoteUniversityDataSource-any RemoteUniversityDataSource"] = { [unowned self] in self.remoteUniversityDataSource as Any }
        localTable["universityRepository-any UniversityRepository"] = { [unowned self] in self.universityRepository as Any }
        localTable["fetchUniversityListUseCase-any FetchUniversityListUseCase"] = { [unowned self] in self.fetchUniversityListUseCase as Any }
        localTable["createdUniversityUseCase-any CreatedUniversityUseCase"] = { [unowned self] in self.createdUniversityUseCase as Any }
        localTable["modifyUniversityUseCase-any ModifyUniversityUseCase"] = { [unowned self] in self.modifyUniversityUseCase as Any }
        localTable["deleteUniversityUseCase-any DeleteUniversityUseCase"] = { [unowned self] in self.deleteUniversityUseCase as Any }
        localTable["createdDepartmentUseCase-any CreatedDepartmentUseCase"] = { [unowned self] in self.createdDepartmentUseCase as Any }
        localTable["deleteDepartmentUseCase-any DeleteDepartmentUseCase"] = { [unowned self] in self.deleteDepartmentUseCase as Any }
        localTable["loginFactory-any LoginFactory"] = { [unowned self] in self.loginFactory as Any }
        localTable["activityListFactory-any ActivityListFactory"] = { [unowned self] in self.activityListFactory as Any }
        localTable["signupFactory-any SignUpFactory"] = { [unowned self] in self.signupFactory as Any }
        localTable["successSignUpFactory-any SuccessSignUpFactory"] = { [unowned self] in self.successSignUpFactory as Any }
        localTable["inputActivityFactory-any InputActivityFactory"] = { [unowned self] in self.inputActivityFactory as Any }
        localTable["activityDetailFactory-any ActivityDetailFactory"] = { [unowned self] in self.activityDetailFactory as Any }
        localTable["activityDetailSettingFactory-any ActivityDetailSettingFactory"] = { [unowned self] in self.activityDetailSettingFactory as Any }
        localTable["clubDetailFactory-any ClubDetailFactory"] = { [unowned self] in self.clubDetailFactory as Any }
        localTable["clubListFactory-any ClubListFactory"] = { [unowned self] in self.clubListFactory as Any }
        localTable["lectureListFactory-any LectureListFactory"] = { [unowned self] in self.lectureListFactory as Any }
        localTable["lectureListDetailFactory-any LectureListDetailFactory"] = { [unowned self] in self.lectureListDetailFactory as Any }
        localTable["inputLectureFactory-any InputLectureFactory"] = { [unowned self] in self.inputLectureFactory as Any }
        localTable["lectureDetailSettingFactory-any LectureDetailSettingFactory"] = { [unowned self] in self.lectureDetailSettingFactory as Any }
        localTable["postListFactory-any PostListFactory"] = { [unowned self] in self.postListFactory as Any }
        localTable["postDetailSettingFactory-any PostDetailSettingFactory"] = { [unowned self] in self.postDetailSettingFactory as Any }
        localTable["inputPostFactory-any InputPostFactory"] = { [unowned self] in self.inputPostFactory as Any }
        localTable["postDetailFactory-any PostDetailFactory"] = { [unowned self] in self.postDetailFactory as Any }
        localTable["noticeListFactory-any NoticeListFactory"] = { [unowned self] in self.noticeListFactory as Any }
        localTable["inquiryListFactory-any InquiryListFactory"] = { [unowned self] in self.inquiryListFactory as Any }
        localTable["noticeDetailFactory-any NoticeDetailFactory"] = { [unowned self] in self.noticeDetailFactory as Any }
        localTable["studentInfoFactory-any StudentInfoFactory"] = { [unowned self] in self.studentInfoFactory as Any }
        localTable["inputCertificationFactory-any InputCertificationFactory"] = { [unowned self] in self.inputCertificationFactory as Any }
        localTable["mainFactory-any MainFactory"] = { [unowned self] in self.mainFactory as Any }
        localTable["myPageFactory-any MyPageFactory"] = { [unowned self] in self.myPageFactory as Any }
        localTable["mainTabFactory-any MainTabFactory"] = { [unowned self] in self.mainTabFactory as Any }
        localTable["inputNoticeFactory-any InputNoticeFactory"] = { [unowned self] in self.inputNoticeFactory as Any }
        localTable["noticeDetailSettingFactory-any NoticeDetailSettingFactory"] = { [unowned self] in self.noticeDetailSettingFactory as Any }
        localTable["inputInquiryFactory-any InputInquiryFactory"] = { [unowned self] in self.inputInquiryFactory as Any }
        localTable["inquiryDetailFactory-any InquiryDetailFactory"] = { [unowned self] in self.inquiryDetailFactory as Any }
        localTable["writeInquiryAnswerFactory-any WriteInquiryAnswerFactory"] = { [unowned self] in self.writeInquiryAnswerFactory as Any }
        localTable["changePasswordFactory-any ChangePasswordFactory"] = { [unowned self] in self.changePasswordFactory as Any }
        localTable["successChangePasswordFactory-any SuccessChangePasswordFactory"] = { [unowned self] in self.successChangePasswordFactory as Any }
        localTable["userListFactory-any UserListFactory"] = { [unowned self] in self.userListFactory as Any }
        localTable["requestUserSignupFactory-any RequestUserSignupFactory"] = { [unowned self] in self.requestUserSignupFactory as Any }
        localTable["withdrawUserListFactory-any WithdrawUserListFactory"] = { [unowned self] in self.withdrawUserListFactory as Any }
        localTable["findPasswordFactory-any FindPasswordFactory"] = { [unowned self] in self.findPasswordFactory as Any }
        localTable["newPasswordFactory-any NewPasswordFactory"] = { [unowned self] in self.newPasswordFactory as Any }
        localTable["lectureApplicantListFactory-any LectureApplicantListFactory"] = { [unowned self] in self.lectureApplicantListFactory as Any }
        localTable["adminRootFactory-any AdminRootFactory"] = { [unowned self] in self.adminRootFactory as Any }
        localTable["schoolListFactory-any SchoolListFactory"] = { [unowned self] in self.schoolListFactory as Any }
        localTable["organizationListFactory-any OrganizationListFactory"] = { [unowned self] in self.organizationListFactory as Any }
        localTable["universityListFactory-any UniversityListFactory"] = { [unowned self] in self.universityListFactory as Any }
        localTable["inputOrganizationFactory-any InputOrganizationFactory"] = { [unowned self] in self.inputOrganizationFactory as Any }
        localTable["inputUniversityFactory-any InputUniversityFactory"] = { [unowned self] in self.inputUniversityFactory as Any }
        localTable["inputSchoolFactory-any InputSchoolFactory"] = { [unowned self] in self.inputSchoolFactory as Any }
        localTable["inputClubFactory-any InputClubFactory"] = { [unowned self] in self.inputClubFactory as Any }
        localTable["remoteWithdrawDataSource-any RemoteWithdrawDataSource"] = { [unowned self] in self.remoteWithdrawDataSource as Any }
        localTable["withdrawRepository-any WithdrawRepository"] = { [unowned self] in self.withdrawRepository as Any }
        localTable["fetchWithdrawUserListUseCase-any FetchWithdrawUserListUseCase"] = { [unowned self] in self.fetchWithdrawUserListUseCase as Any }
        localTable["remoteSchoolDataSource-any RemoteSchoolDataSource"] = { [unowned self] in self.remoteSchoolDataSource as Any }
        localTable["schoolRepository-any SchoolRepository"] = { [unowned self] in self.schoolRepository as Any }
        localTable["fetchSchoolListUseCase-any FetchSchoolListUseCase"] = { [unowned self] in self.fetchSchoolListUseCase as Any }
        localTable["fetchAllSchoolNameUseCase-any FetchAllSchoolNameUseCase"] = { [unowned self] in self.fetchAllSchoolNameUseCase as Any }
        localTable["createdSchoolUseCase-any CreatedSchoolUseCase"] = { [unowned self] in self.createdSchoolUseCase as Any }
        localTable["modifySchoolUseCase-any ModifySchoolUseCase"] = { [unowned self] in self.modifySchoolUseCase as Any }
        localTable["deleteSchoolUseCase-any DeleteSchoolUseCase"] = { [unowned self] in self.deleteSchoolUseCase as Any }
        localTable["fetchSchoolDetailUseCase-any FetchSchoolDetailUseCase"] = { [unowned self] in self.fetchSchoolDetailUseCase as Any }
        localTable["remoteEmailDataSource-any RemoteEmailDataSource"] = { [unowned self] in self.remoteEmailDataSource as Any }
        localTable["emailRepository-any EmailRepository"] = { [unowned self] in self.emailRepository as Any }
        localTable["sendEmailCertificationLinkUseCase-any SendEmailCertificationLinkUseCase"] = { [unowned self] in self.sendEmailCertificationLinkUseCase as Any }
        localTable["fetchEmailVertificationStatusUseCase-any FetchEmailVertificationStatusUseCase"] = { [unowned self] in self.fetchEmailVertificationStatusUseCase as Any }
        localTable["remoteCertificationDataSource-any RemoteCertificationDataSource"] = { [unowned self] in self.remoteCertificationDataSource as Any }
        localTable["certificationRepository-any CertificationRepository"] = { [unowned self] in self.certificationRepository as Any }
        localTable["fetchCertificationListByTeacherUseCase-any FetchCertificationListByTeacherUseCase"] = { [unowned self] in self.fetchCertificationListByTeacherUseCase as Any }
        localTable["fetchCertificationListByStudentUseCase-any FetchCertificationListByStudentUseCase"] = { [unowned self] in self.fetchCertificationListByStudentUseCase as Any }
        localTable["inputCertificationUseCase-any InputCertificationUseCase"] = { [unowned self] in self.inputCertificationUseCase as Any }
        localTable["updateCertificationUseCase-any UpdateCertificationUseCase"] = { [unowned self] in self.updateCertificationUseCase as Any }
        localTable["remoteCompanyDataSource-any RemoteCompanyDataSource"] = { [unowned self] in self.remoteCompanyDataSource as Any }
        localTable["companyRepository-any CompanyRepository"] = { [unowned self] in self.companyRepository as Any }
        localTable["fetchCompanyListUseCase-any FetchCompanyListUseCase"] = { [unowned self] in self.fetchCompanyListUseCase as Any }
        localTable["createdCompanyUseCase-any CreatedCompanyUseCase"] = { [unowned self] in self.createdCompanyUseCase as Any }
        localTable["deleteCompanyUseCase-any DeleteCompanyUseCase"] = { [unowned self] in self.deleteCompanyUseCase as Any }
    }
}


#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

@inline(never) private func register1() {
    registerProviderFactory("^->AppComponent->InputClubComponent", factory867dc6ccc256578f76bbf47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->InputPostComponent", factoryfd208488fdd5cb4acc65f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->InputCertificationComponent", factory2810b45b31199a5f0c2af47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->ClubListComponent", factory050817f1b6d356b83467f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->LectureListDetailComponent", factory22af859a70aa8ba0b346f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->OrganizationListComponent", factory9677c02ce264ac0ad62df47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->NoticeListComponent", factorye14e687c08985bdffcd0f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SignUpComponent", factory306e8ce5cfdf41304709f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->ActivityDetailSettingComponent", factoryfd595280dea209e217b9e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->MainTabComponent", factory1ab5a747ddf21e1393f9f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->NoticeDetailSettingComponent", factory24d19202afbef2333be9e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->MyPageComponent", factory0f6f456ebf157d02dfb3f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->AdminRootComponent", factoryc93d1d06706bf3dab12ff47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->InquiryDetailComponent", factory2d6736bd037393a86ae3f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->InputNoticeComponent", factory4545df5fcd42aaf8ed60f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->LectureDetailSettingComponent", factoryd0ffb7dfc6fd9633e0e6f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->MainComponent", factoryc9274e46e78e70f29c54f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->RequestUserSignupComponent", factoryebe37a0d5ca0bab085f9f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->RootComponent", factory264bfc4d4cb6b0629b40f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->PostListComponent", factory0c89e2bbcc02dbcac018f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->ChangePasswordComponent", factoryab7c4d87dab53e0a51b9f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->ClubDetailComponent", factory1559652f8e80cfa88d06f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SuccessSignUpComponent", factorybf219b153b668170161de3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->WithdrawUserListComponent", factory4d07a7e30330c03d5d63f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->InputSchoolComponent", factorya02470c933733e398aeef47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->FindPasswordComponent", factory15775d8436b06b9741d1f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->LectureApplicantListComponent", factory78a87c10d14f7bbaaa9df47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->UserListComponent", factorycf08383b935d2e18f4c7f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->StudentInfoComponent", factory5ce0f173abbf535f654ff47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->UniversityListComponent", factory138cdcda950ee50e6d46f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->WriteInquiryAnswerComponent", factory3d4cadf14cd9a3336981f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->PostDetailComponent", factorybc555a73df3767a26999f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SuccessChangePasswordComponent", factoryde3552d9e0f793ec8b8df47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->NewPasswordComponent", factory52985a6d5ec65d75bd97f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->InquiryListComponent", factorydd7e28250a180554c7a0f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SchoolListComponent", factoryd55f8188de756273ca44f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->ActivityListComponent", factory7177e6769ee69064a61bf47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->InputLectureComponent", factory622e14688d9803ec3c64f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->LoginComponent", factoryd6018e98563de75a2ba4f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->InputUniversityComponent", factoryb6aa118932d97d72500af47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->LectureListComponent", factorya2eac906a839dcacda45f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->PostDetailSettingComponent", factoryaacb19523586bb790cade3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->ActivityDetailComponent", factory7c395808ac9dfb8fb229f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->NoticeDetailViewComponent", factory0798e0f01e95aeaff56ff47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->InputOrganizationComponent", factory45fa7935479bac9ac06df47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->InputInquiryComponent", factory818540ce7b5cc0ed9d3bf47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->InputActivityComponent", factory3fc1a279eeb8c906e603f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent", factoryEmptyDependencyProvider)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
