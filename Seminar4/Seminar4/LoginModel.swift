//
//  LoginModel.swift
//  Seminar4
//
//  Created by 황찬미 on 2022/05/10.
//

import Foundation

struct LoginResponse: Codable {
    let status: Int
    let success: Bool?
    let message: String
    
    // 로그인 성공했을 때는 data가 넘어오는데, 실패했을 때는 data가 넘어오지 않기 대문에 옵셔널.
    let data: LoginData?
}

struct LoginData: Codable {
    let name: String
    let email: String
}
