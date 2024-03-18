import Foundation
import Service

final class AdminUserListViewModel: BaseViewModel {
    enum UserListType {
        case `default`
        case register
        case withdraw
    }
    
    @Published var searchName = ""
    @Published var isAppeove: Bool = false
    @Published var isReject: Bool = false
    @Published var isWithdraw: Bool = false
    @Published var isSelectedUserList = false
    @Published var isPresentedRegisterList: Bool = false
    @Published var isPresentedWithdrawList: Bool = false
    @Published var isPresentedDefaultList: Bool = false
    @Published var isPresentedUserTypeFilter: Bool = false
    @Published var isPresentedUserCohortFilter: Bool = false
    @Published var selectedAuthority: AdminUserListAuthorityType = .admin
    @Published var selectedCohort: CohortList = .first
    var userAuthorityType: [AdminUserListAuthorityType] = AdminUserListAuthorityType.allCases
    var cohortList: [CohortList] = CohortList.allCases
    var type: UserListType
    
    init(type: UserListType) {
        self.type = type
    }
    
    var titleText: String {
        switch type {
        case .default: return "사용자 명단"
        case .register: return "가입 요청자 명단"
        case .withdraw: return "탈퇴 예정자 명단"
        }
    }
    
    func updateIsPresentedUserTypeFilter(isPresented: Bool) {
        isPresentedUserTypeFilter = isPresented
    }
    
    func updateIsPresentedCohortFilter(isPresented: Bool) {
        isPresentedUserCohortFilter = isPresented
    }
    
    func updateDefaultType() {
        isPresentedDefaultList = true
        isPresentedRegisterList = false
        isPresentedWithdrawList = false
    }
    
    func updateRegisterType() {
        isPresentedDefaultList = false
        isPresentedRegisterList = true
        isPresentedWithdrawList = false
    }
    
    func updateWithdrawType() {
        isPresentedDefaultList = false
        isPresentedRegisterList = false
        isPresentedWithdrawList = true
    }
}