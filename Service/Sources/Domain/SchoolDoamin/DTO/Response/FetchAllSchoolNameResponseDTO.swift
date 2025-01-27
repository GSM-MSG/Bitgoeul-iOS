import Foundation

public struct FetchSchoolNameResponseDTO: Decodable {
    public let schools: [SchoolNameResponseDTO]

    public init(schools: [SchoolNameResponseDTO]) {
        self.schools = schools
    }

    public struct SchoolNameResponseDTO: Decodable {
        public let name: String
    }
}

extension FetchSchoolNameResponseDTO {
    func toDomain() -> [String] {
        schools.map(\.name)
    }
}
