//
//  DataService.swift
//  STSTestTask
//
//  Created by N.Leontiev on 16.11.2019.
//  Copyright © 2019 bently_93. All rights reserved.
//

import Foundation

protocol DataServiceProtocol {

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
    
}

// MARK: - Private functions
extension DataService {
    
}
