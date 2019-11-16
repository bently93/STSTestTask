//
// Created by N.Leontiev on 16.11.2019.
// Copyright (c) 2019 bently_93. All rights reserved.
//

import Foundation

class Move: AnyDataProtocol {
    var fromPlace: String?
    var toPlace: String?
    var estimateTime: TimeInterval?
}