//
//  DetailViewController.swift
//  CryptoNews
//
//  Created by n.leontiev on 16/11/2019.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class DetailViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var textView: UITextView!

    var viewModel: DetailViewModelProtocol?

    var data: AnyDataProtocol?

    // MARK: - Private properties
    private let disposeBag = DisposeBag()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let data = self.data else {
            return assertionFailure()
        }
        DetailViewAssembly.instance().inject(into: self, data: data)

        setupViewBindings()
    }
}

// MARK: - Private functions
extension DetailViewController {
    private func setupViewBindings() {
        guard let viewModel = self.viewModel else {
            return assertionFailure("viewModel doesnt set")
        }

        viewModel.description.asObservable()
                .bind(to: self.textView.rx.text)
                .disposed(by: self.disposeBag)
    }
}