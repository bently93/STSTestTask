//
// Created by N.Leontiev on 16.11.2019.
// Copyright (c) 2019 bently_93. All rights reserved.
//

import Foundation


protocol DataRepositoryProtocol {
    func getData()-> AnyDataProtocol
}

final class DataRepository: DataRepositoryProtocol {
    // MARK: - Properties

    private var dataArray: [AnyDataProtocol] = []

    // MARK: - Initialization
    init(){
        self.dataArray.append(Move())
        self.dataArray.append(Event())
        self.dataArray.append(Notice(flightDate: Date(), gate: "Gate 1"))
    }
}

// MARK: - Override functions
extension DataRepository {
    func getData()-> AnyDataProtocol {
       return self.dataArray[Int.random(in: 0...self.dataArray.count - 1)]
    }
}

// MARK: - Private functions
extension DataRepository {

}