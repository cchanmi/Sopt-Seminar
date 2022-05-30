//
//  UserService.swift
//  Seminar4
//
//  Created by 황찬미 on 2022/05/10.
//
// escaping 클로저 : 클로저가 함수의 인자로 전달되었을 때, 함수의 실행이 종료된 후 실행되는 클로저
import Foundation
import Alamofire

class UserService {
    static let shared = UserService()
    private init() {}
    
    func login(name: String,
               email: String,
               password: String,
               completion: @escaping (NetworkResult<Any>) -> Void)
    {
        // completion 클로저를 @escaping 클로저로 정의합니다.
        
        //통신할 API 주소
        let url = APIConstants.loginURL
        // 요청 헤더
        let header: HTTPHeaders = ["Content-Type" : "application/json"]
        let body: Parameters = [
            "name": name,
            "email": email,
            "password": password
        ]
        
        let dataRequest = AF.request(url,
                                     method: .post,
                                     parameters: body,
                                     encoding: JSONEncoding.default,
                                     headers: header)
        
        dataRequest.responseData { response in
            switch response.result {
            case .success:
                guard let statusCode = response.response?.statusCode else { return }
                guard let value = response.value else { return }
                let networkResult = self.judgeStatus(by: statusCode, value)
                completion(networkResult)
                
            case .failure:
                completion(.networkFail)
            }
            
        }
        
    }
    
    private func judgeStatus(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
        case 200: return isVaildData(data: data)
        case 400: return .pathErr
        case 500: return .serverErr
        default: return .networkFail
        }
    }
    
    private func isVaildData(data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodeData = try? decoder.decode(LoginResponse.self, from: data)
        else { return .pathErr }
        
        return .success(decodeData.data as Any)
    }
}
