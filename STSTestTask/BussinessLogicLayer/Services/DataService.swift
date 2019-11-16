//
//  DataService.swift
//  STSTestTask
//
//  Created by N.Leontiev on 16.11.2019.
//  Copyright © 2019 bently_93. All rights reserved.
//

import Foundation

protocol DataServiceProtocol {
    func getDataArray()-> [AnyDataProtocol]
}

class DataService: DataServiceProtocol {
    // MARK: - Properties
    private let dataRepo: DataRepositoryProtocol

    // MARK: - Initialization
    init(dataRepo: DataRepositoryProtocol){
        self.dataRepo = dataRepo
    }
}

// MARK: - Override functions
extension DataService {
    func getDataArray()-> [AnyDataProtocol] {
        var result: [AnyDataProtocol] = []
        for _ in 0...Int.random(in: 10...100) {
            result.append(self.dataRepo.getData())
        }
        return result
    }
}

// MARK: - Private functions
extension DataService {
    
}
