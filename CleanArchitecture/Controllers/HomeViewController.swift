//
//  HomeViewController.swift
//  CleanArchitecture
//
//  Created by Dounia BELANNAB on 19/03/2018.
//  Copyright (c) 2018 Dounia BELANNAB. All rights reserved.

import UIKit

protocol HomeViewControllerOutput {
}

final class HomeViewController: UIViewController, HomePresenterOutput {
    var interactor: HomeViewControllerOutput!
    var router: HomeRouterInput!

    // MARK: - Object lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()

        let router = HomeRouter()
        router.viewController = self

        let presenter = HomePresenter()
        presenter.viewController = self

        let interactor = HomeInteractor()
        interactor.presenter = presenter

        self.interactor = interactor
        self.router = router
    }

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Event handling

    // MARK: - Display logic

}
