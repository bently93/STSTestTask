//
//  MainViewViewController.swift
//  CryptoNews
//
//  Created by n.leontiev on 16/11/2019.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class MainViewController: UIViewController {

    // MARK: - IB Outlets

    // MARK: - Properties
    var viewModel: MainViewModelProtocol?
    
    // MARK: - Private properties
    private let disposeBag = DisposeBag()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        MainViewAssembly.instance().inject(into: self)

        setupViewBindings()
    }
}

// MARK: - Private functions
extension MainViewController {
    private func setupViewBindings() {
        guard let viewModel = self.viewModel else {
            return assertionFailure("viewModel doesnt set")
        }
    }
}

extension MainViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            switch identifier {
            case "":
//                if let viewController = segue.destination as? AnyViewController,
//                    let data = sender as? Any {
//                    viewController.data = data
//                }
                break
            default:
                break
            }
        }
    }
}
