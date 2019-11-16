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

    func getDetailViewModel(data: AnyDataProtocol)-> DetailViewModelProtocol {
        return define(init: DetailViewModel(data: data))
    }
}

class DetailViewAssembly: Assembly {
    private lazy var viewModelAssembly: DetailViewModelAssembly = self.context.assembly()

    func inject(into vc: DetailViewController, data: AnyDataProtocol) {
        defineInjection(into: vc) {
            $0.viewModel = self.viewModelAssembly.getDetailViewModel(data: data)
            return $0
        }
    }
}
