import Foundation
import Service

final class AdminRequestUserSignupViewModel: BaseViewModel {
    @Published var isAppeove: Bool = false
    @Published var isReject: Bool = false
    @Published var isSelectedUserList = false
}