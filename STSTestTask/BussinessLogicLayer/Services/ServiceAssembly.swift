//
// Created by N.Leontiev on 16.11.2019.
// Copyright (c) 2019 bently_93. All rights reserved.
//

import Foundation
import EasyDi

class ServiceAssembly: Assembly {
    private lazy var repoAssembly: RepoAssembly = self.context.assembly()

    var dataSettingsService: DataServiceProtocol {
        return define(init: DataService(dataRepo: self.repoAssembly.dataRepo))
    }
}