//
//  CompanyRepositoryImpl.swift
//  URLSession-Publisher-SwiftUI-sample
//
//  Created by ogasawara_dev on 2020/04/22.
//  Copyright © 2020 ogasawara_dev. All rights reserved.
//
import Foundation
import Combine

class CompanyRepositoryImpl: CompanyRepository {
    func loadEmployees() -> AnyPublisher<Employee, Error> {
        let urlStr = "https://postman-echo.com/get?name=Taro"
        let result = URLSession.shared.dataTaskPublisher(for: URL(string: urlStr)!)
            .tryMap({ data, response -> Data in
                guard let httpRes = response as? HTTPURLResponse else {
                    throw APIError(description: "http response not found")
                }
                if httpRes.statusCode.isContained(in: 200..<300) == false {
                    throw APIError(description: "Bad Http Status Code")
                }
                return data
            })
            .decode(type: Employee.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()

        return result
    }
}

extension Int {
    func isContained<T: RangeExpression>(in range: T)-> Bool {
        range.contains(self as! T.Bound)
    }
}
