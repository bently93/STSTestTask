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

    // MARK: - PublishSubject

    // MARK: - Properties

    //MARK: - Public functions
}

final class DetailViewModel: DetailViewModelProtocol {
	// MARK: - Variable

    // MARK: - PublishSubject

	// MARK: - Public properties

	// MARK: - Properties
	private let disposeBag = DisposeBag()

	// MARK: - Initialization
	init(){
		setupView()
		setupBindings()
	}	
}

// MARK: - Override public functions
extension DetailViewModel{
	
}

// MARK: - Private functions
extension DetailViewModel{
	private func setupView() {

	}

	private func setupBindings() {

	}
}