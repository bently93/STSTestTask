//
//  DetailAssembly.swift
//  CryptoNews
//
//  Created by n.leontiev on 16/11/2019.
//  Copyright © 2019 user. All rights reserved.
//

import EasyDi

class DetailViewModelAssembly: Assembly {
    private lazy var serviceAssembly: ServiceAssembly = self.context.assembly()

    var detailViewModel: DetailViewModelProtocol {
        return define(init: DetailViewModel())
    }
}

class DetailViewAssembly: Assembly {
    private lazy var viewModelAssembly: DetailViewModelAssembly = self.context.assembly()

    func inject(into vc: DetailViewController) {
        defineInjection(into: vc) {
            $0.viewModel = self.viewModelAssembly.detailViewModel
            return $0
        }
    }
}
