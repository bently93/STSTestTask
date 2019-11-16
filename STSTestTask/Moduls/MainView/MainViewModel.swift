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

    // MARK: - PublishSubject

    // MARK: - Properties

    //MARK: - Public functions
}

final class MainViewModel: MainViewModelProtocol {
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
extension MainViewModel{
	
}

// MARK: - Private functions
extension MainViewModel{
	private func setupView() {

	}

	private func setupBindings() {

	}
}
