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

    @IBOutlet weak var tableView: UITableView!

    // MARK: - Properties
    var viewModel: MainViewModelProtocol?
    
    // MARK: - Private properties
    private let disposeBag = DisposeBag()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        MainViewAssembly.instance().inject(into: self)

        setupViewBindings()
        setupTableView()
    }
}

// MARK: - Private functions
extension MainViewController {
    private func setupViewBindings() {
        guard let viewModel = self.viewModel else {
            return assertionFailure("viewModel doesnt set")
        }
    }

    func setupTableView() {
        viewModel?.dataArray.asObservable()
                .bind(to: tableView.rx.items(cellIdentifier: "cell", cellType: UITableViewCell.self)) {
                    (_, result: AnyDataProtocol, cell: UITableViewCell) in
                    cell.textLabel?.text = String(describing: type(of: result))
                    cell.detailTextLabel?.text = result.getDescription(isOneLine: true)
                }
                .disposed(by: self.disposeBag)

//        tableView.rx.modelSelected(NewsEntity.self)
//                .subscribe(onNext: { [unowned self] news in
//                    self.perform(segue: StoryboardSegue.Search.showWebViewController, sender: news)
//                })
//                .disposed(by: disposeBag)

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
