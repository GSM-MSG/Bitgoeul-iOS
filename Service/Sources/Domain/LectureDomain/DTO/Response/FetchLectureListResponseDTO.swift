import Foundation

public struct FetchLectureListResponseDTO: Decodable {
    public var id = UUID()
    public let name: String
    public let content: String
    public let startDate: String
    public let endDate: String
    public let completeDate: String
    public let lectureType: LectureType
    public let lectureStatus: LectureStatusType
    public let headCount: Int
    public let maxRegisteredUser: Int
    public let lecturer: String
}

public extension FetchLectureListResponseDTO {
    func toDomain() -> LectureListEntity {
        LectureListEntity(
            id: id,
            name: name,
            content: content,
            startDate: startDate,
            endDate: endDate,
            completeDate: completeDate,
            lectureType: lectureType,
            lectureStatus: lectureStatus,
            headCount: headCount,
            maxRegisteredUser: maxRegisteredUser,
            lecturer: lecturer
        )
    }
}
