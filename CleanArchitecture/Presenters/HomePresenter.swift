//
//  HomePresenter.swift
//  CleanArchitecture
//
//  Created by Dounia BELANNAB on 19/03/2018.
//  Copyright (c) 2018 Dounia BELANNAB. All rights reserved.
//

import UIKit

protocol HomePresenterOutput: class {
}

final class HomePresenter: HomeInteractorOutput {
    weak var viewController: HomePresenterOutput?

    // MARK: - Presentation logic

}
