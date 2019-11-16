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

    private let move: AnyDataProtocol
    private let event: AnyDataProtocol
    private let notice: AnyDataProtocol

    // MARK: - Initialization
    init(){
        self.move = Move()
        self.event = Event()
        self.notice = Notice(flightDate: Date(), gate: "Gate 1")
    }
}

// MARK: - Override functions
extension DataRepository {
    func getData()-> AnyDataProtocol {
        switch Int.random(in: 0...2) {
        case 0:
            return self.move
        case 1:
            return self.event
        default:
            return self.notice
        }
    }
}

// MARK: - Private functions
extension DataRepository {

}