import Foundation
import Service

@MainActor
final class ActivityListModel: ObservableObject {
    @Published var authority: UserAuthorityType = .user
    @Published var activityList: [ActivityEntity] = []
    @Published var selectedActivityId: String?
    @Published var isPresentedActivityDetailPage: Bool = false

    var errorMessage: String = ""
}

extension ActivityListModel {
    func updateUserRole(authority: UserAuthorityType) {
        self.authority = authority
    }

    func updateContent(entity: [ActivityEntity]) {
        self.activityList = entity
    }

    func updateSelectedActivityId(activityId: String) {
        self.selectedActivityId = activityId
        print(activityId)
    }
}
