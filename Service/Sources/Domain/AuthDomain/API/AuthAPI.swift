import Foundation
import Moya

public enum AuthAPI {
    case signin(SigninRequestDTO)
    case reissueToken
    case logout
    case withdraw
    case studentSignup(StudentSignupRequestDTO)
    case teacherSignup(TeacherSignupRequestDTO)
    case professorSignup(ProfessorSignupRequestDTO)
    case governmentSignup(GrovernmentSignupRequestDTO)
    case companyInstructorSignup(CompanyInstructorSignupRequestDTO)
}

extension AuthAPI: BitgouelAPI {
    public typealias ErrorType = AuthDomainError

    public var domain: BitgouelDomain {
        .auth
    }

    public var urlPath: String {
        switch self {
        case .signin:
            return "/login"

        case .reissueToken, .logout:
            return ""

        case .withdraw:
            return "/withdraw"

        case .studentSignup:
            return "/student"

        case .teacherSignup:
            return "/teacher"

        case .professorSignup:
            return "/professor"

        case .governmentSignup:
            return "/government"

        case .companyInstructorSignup:
            return "/company-instructor"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .signin, .studentSignup, .teacherSignup, .professorSignup, .governmentSignup, .companyInstructorSignup:
            return .post

        case .reissueToken:
            return .patch

        case .logout, .withdraw:
            return .delete
        }
    }

    public var task: Moya.Task {
        switch self {
        case let .signin(req):
            return .requestParameters(parameters: [
                "email": req.email.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "",
                "password": req.password
            ], encoding: URLEncoding.httpBody)

        case let .studentSignup(req):
            return .requestParameters(parameters: [
                "email": req.email,
                "name": req.name,
                "phoneNumber": req.phoneNumber,
                "password": req.password,
                "highSchool": req.highSchool,
                "clubName": req.clubName,
                "grade": req.grade,
                "classRoom": req.classRoom,
                "number": req.number,
                "admissionNumber": req.admissionNumber
            ], encoding: URLEncoding.httpBody)

        case let .teacherSignup(req):
            return .requestParameters(parameters: [
                "email": req.email,
                "name": req.name,
                "phoneNumber": req.phoneNumber,
                "password": req.password,
                "highSchool": req.highSchool,
                "clubName": req.clubName
            ], encoding: URLEncoding.httpBody)

        case let .professorSignup(req):
            return .requestParameters(parameters: [
                "email": req.email,
                "name": req.name,
                "phoneNumber": req.phoneNumber,
                "password": req.password,
                "highSchool": req.highSchool,
                "clubName": req.clubName,
                "university": req.university
            ], encoding: URLEncoding.httpBody)

        case let .governmentSignup(req):
            return .requestParameters(parameters: [
                "email": req.email,
                "name": req.name,
                "phoneNumber": req.phoneNumber,
                "password": req.password,
                "highSchool": req.highSchool,
                "clubName": req.clubName,
                "governmentName": req.governmentName
            ], encoding: URLEncoding.httpBody)

        case let .companyInstructorSignup(req):
            return .requestParameters(parameters: [
                "email": req.email,
                "name": req.name,
                "phoneNumber": req.phoneNumber,
                "password": req.password,
                "highSchool": req.highSchool,
                "clubName": req.clubName,
                "company": req.company
            ], encoding: URLEncoding.httpBody)

        default:
            return .requestPlain
        }
    }

    public var jwtTokenType: JwtTokenType {
        switch self {
        case .reissueToken, .logout:
            return .refreshToken

        default:
            return .none
        }
    }

    public var errorMap: [Int : ErrorType] {
        switch self {
        case .studentSignup:
            return [
                400: .badRequest,
                401: .unauthorized,
                403: .forbidden,
                404: .notFound,
                409: .conflict,
                429: .tooManyRequest
            ]

        default :
            return [
                400: .badRequest,
                401: .unauthorized,
                403: .forbidden,
                404: .notFound,
                407: .proxyAuthenticationRequired,
                408: .requestTimeout,
                409: .conflict,
                429: .tooManyRequest,
                500: .internalServerError
            ]
        }
    }
}
