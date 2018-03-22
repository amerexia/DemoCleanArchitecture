//
//  HomeInteractor.swift
//  CleanArchitecture
//
//  Created by Dounia BELANNAB on 19/03/2018.
//  Copyright (c) 2018 Dounia BELANNAB. All rights reserved.
//

import UIKit

protocol HomeInteractorOutput {
}

final class HomeInteractor: HomeViewControllerOutput {
    var presenter: HomeInteractorOutput!
    var worker: HomeWorkerProtocol! = HomeWorker()

    // MARK: - Business logic

}
