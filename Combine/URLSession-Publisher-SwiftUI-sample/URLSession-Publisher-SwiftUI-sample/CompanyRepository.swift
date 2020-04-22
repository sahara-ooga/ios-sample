//
//  CompanyRepository.swift
//  URLSession-Publisher-SwiftUI-sample
//
//  Created by ogasawara_dev on 2020/04/22.
//  Copyright © 2020 ogasawara_dev. All rights reserved.
//

import Combine

protocol CompanyRepository {
    func loadEmployees() -> AnyPublisher<Employee, Error>
}
