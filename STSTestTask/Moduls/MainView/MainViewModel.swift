//
//  MainViewViewModel.swift
//  CryptoNews
//
//  Created by n.leontiev on 16/11/2019.
//  Copyright © 2019 user. All rights reserved.
//

import RxSwift

protocol MainViewModelProtocol {
    // MARK: - Variable
    var dataArray: Variable<[AnyDataProtocol]> { get }

    // MARK: - PublishSubject

    // MARK: - Properties

    //MARK: - Public functions
}

final class MainViewModel: MainViewModelProtocol {
    // MARK: - Variable
    private(set) var dataArray: Variable<[AnyDataProtocol]> = Variable([])

    // MARK: - PublishSubject

    // MARK: - Public properties

    // MARK: - Properties
    private let disposeBag = DisposeBag()
    private let dataService: DataServiceProtocol

    // MARK: - Initialization
    init(dataService: DataServiceProtocol) {
        self.dataService = dataService
        setupView()
        setupBindings()
        updateData()
    }
}

// MARK: - Override public functions
extension MainViewModel {

}

// MARK: - Private functions
extension MainViewModel {
    private func setupView() {

    }

    private func setupBindings() {

    }

    private func updateData() {
        self.dataArray.value = self.dataService.getDataArray()
    }
}
