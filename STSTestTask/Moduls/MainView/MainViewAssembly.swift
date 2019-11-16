//
//  MainViewAssembly.swift
//  CryptoNews
//
//  Created by n.leontiev on 16/11/2019.
//  Copyright © 2019 user. All rights reserved.
//

import EasyDi

class MainViewModelAssembly: Assembly {
    private lazy var serviceAssembly: ServiceAssembly = self.context.assembly()

    var mainViewModel: MainViewModelProtocol {
        return define(init: MainViewModel())
    }
}

class MainViewAssembly: Assembly {
    private lazy var viewModelAssembly: MainViewModelAssembly = self.context.assembly()

    func inject(into vc: MainViewController) {
        defineInjection(into: vc) {
            $0.viewModel = self.viewModelAssembly.mainViewModel
            return $0
        }
    }
}
