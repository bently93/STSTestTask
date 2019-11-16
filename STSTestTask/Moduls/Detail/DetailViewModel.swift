//
//  DetailViewModel.swift
//  CryptoNews
//
//  Created by n.leontiev on 16/11/2019.
//  Copyright © 2019 user. All rights reserved.
//

import RxSwift

protocol DetailViewModelProtocol {
    // MARK: - Variable
    var description: Variable<String?> { get }

    // MARK: - PublishSubject

    // MARK: - Properties

    //MARK: - Public functions
}

final class DetailViewModel: DetailViewModelProtocol {
    // MARK: - Variable
	private(set) var description: Variable<String?> = Variable("")

    // MARK: - PublishSubject

    // MARK: - Public properties

    // MARK: - Properties
    private let disposeBag = DisposeBag()

    // MARK: - Initialization
    init(data: AnyDataProtocol) {
		self.description.value = data.getDescription(isOneLine: false)
	}
}

// MARK: - Override public functions
extension DetailViewModel {

}

// MARK: - Private functions
extension DetailViewModel {

}