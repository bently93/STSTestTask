//
// Created by N.Leontiev on 16.11.2019.
// Copyright (c) 2019 bently_93. All rights reserved.
//

import Foundation

protocol AnyDataProtocol {
    func getDescription()->String
}

extension AnyDataProtocol {
    func getDescription()->String {
        let reflected = Mirror(reflecting: self)
        var result = ""

        for child in reflected.children {
            guard let name = child.label else {
                return ""
            }
            let value = unwrap(child.value)
            result += "\(name): \(value) \n"
        }
        return result
    }

    func unwrap<T>(_ any: T) -> Any {
        let mirror = Mirror(reflecting: any)
        guard mirror.displayStyle == .optional, let first = mirror.children.first else {
            return any
        }
        return unwrap(first.value)
    }

}