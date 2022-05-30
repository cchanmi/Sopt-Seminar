//
//  NetworkResult.swift
//  Seminar4
//
//  Created by 황찬미 on 2022/05/10.
//

import Foundation

// <T> 지금 당장 타입을 정하지 않겠다는 의미

enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
