import Foundation
import SwiftUI
import UIKit
import Service

final class InputSchoolViewModel: BaseViewModel {
    @Published var isShowingImagePicker: Bool = false
    @Published var isShowingLineBottomSheet: Bool = false
    @Published var isShowingDeleteAlert: Bool = false
    @Published var isPresentedSuccessView: Bool = false
    @Published var isPresentedInputClubView: Bool = false
    @Published var selectedUIImage: UIImage?
    @Published var image: Image?
    @Published var schoolName: String = ""
    @Published var selectedLine: LineType?
    @Published var logoImageURL: String?
    @Published var departmentList: [String] = []
    @Published var clubList: [SchoolWithClubsEntity] = []
    var clubViewState: String = ""
    var selectedClubInfo: SchoolWithClubsEntity?
    let state: String
    let schoolID: Int

    private let fetchSchoolDetailUseCase: any FetchSchoolDetailUseCase
    private let createdSchoolUseCase: any CreatedSchoolUseCase
    private let modifySchoolUseCase: any ModifySchoolUseCase
    private let deleteSchoolUseCase: any DeleteSchoolUseCase

    init(
        state: String,
        schoolID: Int,
        fetchSchoolDetailUseCase: any FetchSchoolDetailUseCase,
        createdSchoolUseCase: any CreatedSchoolUseCase,
        modifySchoolUseCase: any ModifySchoolUseCase,
        deleteSchoolUseCase: any DeleteSchoolUseCase
    ) {
        self.state = state
        self.schoolID = schoolID
        self.fetchSchoolDetailUseCase = fetchSchoolDetailUseCase
        self.createdSchoolUseCase = createdSchoolUseCase
        self.modifySchoolUseCase = modifySchoolUseCase
        self.deleteSchoolUseCase = deleteSchoolUseCase
    }

    func loadImage() {
        guard let selectedImage = selectedUIImage else { return }
        image = Image(uiImage: selectedImage)
    }

    func updateIsShowingImagePicker(isShowing: Bool) {
        isShowingImagePicker = isShowing
    }

    func updateIsShowingLineBottomSheet(isShowing: Bool) {
        isShowingLineBottomSheet = isShowing
    }

    func updateIsShowingDeleteAlert(isShowing: Bool) {
        isShowingDeleteAlert = isShowing
    }

    func updateIsPresentedSuccessView(isPresented: Bool) {
        isPresentedSuccessView = isPresented
    }

    func updateIsPresentedInputClubView(isPresented: Bool, state: String, clubInfo: SchoolWithClubsEntity) {
        isPresentedInputClubView = isPresented
        clubViewState = state
        selectedClubInfo = clubInfo
    }

    func updateSelectedLine(line: LineType) {
        selectedLine = line
    }

    func deleteDepartment(index: Int) {
        departmentList.remove(at: index)
    }

    func appendDepartment() {
        departmentList.append("")
    }

    func updateSchoolInfo(schoolInfo: SchoolListEntity) {
        logoImageURL = schoolInfo.logoImageURL
        schoolName = schoolInfo.schoolName
        selectedLine = schoolInfo.line
        departmentList = schoolInfo.departments
        clubList = schoolInfo.clubs
    }

    @MainActor
    func onApper() {
        Task {
            do {
                let response = try await fetchSchoolDetailUseCase(schoolID: schoolID)

                updateSchoolInfo(schoolInfo: response)
            } catch {
                print(error)
            }
        }
    }

    @MainActor
    func createdSchool(_ success: @escaping () -> Void) {
        guard let line = selectedLine else { return }

        Task {
            do {
                try await createdSchoolUseCase(
                    logoImage: selectedUIImage?.jpegData(compressionQuality: 0.2) ?? .init(),
                    req: InputSchoolInfoRequestDTO(
                        schoolName: schoolName,
                        line: line.rawValue,
                        departments: departmentList
                    )
                )

                success()
            } catch {
                errorMessage = error.schoolDomainErrorMessage()
                isErrorOccurred = true
            }
        }
    }

    @MainActor
    func deleteSchool(_ success: @escaping () -> Void) {
        Task {
            do {
                try await deleteSchoolUseCase(schoolID: schoolID)
                
                success()
            } catch {
                errorMessage = error.schoolDomainErrorMessage()
                isErrorOccurred = true
            }
        }
    }

    @MainActor
    func modifySchool(_ success: @escaping () -> Void) {
        guard let line = selectedLine else { return }
        
        Task {
            do {
                try await modifySchoolUseCase(
                    schoolID: schoolID,
                    logoImage: selectedUIImage?.jpegData(compressionQuality: 0.2) ?? .init(),
                    req: InputSchoolInfoRequestDTO(
                        schoolName: schoolName,
                        line: line.rawValue,
                        departments: departmentList
                    )
                )
                
                success()
            } catch {
                errorMessage = error.schoolDomainErrorMessage()
                isErrorOccurred = true
            }
        }
    }
}
