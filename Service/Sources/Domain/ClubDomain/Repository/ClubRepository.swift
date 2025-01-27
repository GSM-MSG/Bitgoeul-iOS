import Foundation

public protocol ClubRepository {
    func fetchClubList(highSchool: String) async throws -> [ClubEntity]
    func fetchClubDetail(clubID: Int) async throws -> ClubDetailEntity
    func fetchStudentListByClub() async throws -> ClubDetailEntity
    func fetchStudentDetailByClub(clubID: Int, studentID: String) async throws -> StudentDetailByClubEntity
    func createdClub(schoolID: Int, req: InputClubRequestDTO) async throws
    func modifyClub(clubID: Int, req: InputClubRequestDTO) async throws
    func deleteClub(clubID: Int) async throws
    func fetchAllClubName(schoolName: String) async throws -> [String]
}
