//
//  CompanyViewModel.swift
//  URLSession-Publisher-SwiftUI-sample
//
//  Created by ogasawara_dev on 2020/04/22.
//  Copyright © 2020 ogasawara_dev. All rights reserved.
//
import Foundation
import Combine

class CompanyViewModel: ObservableObject {
    @Published var name: String
    var companyRepository: CompanyRepository
    var cancellable: AnyCancellable?

    init(name: String, companyRepository: CompanyRepository = CompanyRepositoryImpl()) {
        self.name = name
        self.companyRepository = companyRepository
    }

    func loadEmployee() {
        cancellable = companyRepository.loadEmployees()
            .receive(on: RunLoop.main)
            .sink(receiveCompletion: { completion in
            switch completion {
            case .failure(let error):
                if let apiError = error as? APIError {
                    print("error: \(apiError.description)")
                }
            case .finished:
                print("employee finished")
            }
        }, receiveValue: { employee in
            self.name = employee.arguments.name
        })
    }
}
