//
//  AppCoordinator.swift
//  RikMasters
//
//  Created by Сергей Юханов on 24.07.2023.
//

import UIKit

class AppCoordinator: Coordinator {


    var navigationController: UINavigationController?


    func start() {
        var vc: UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }

    func eventOccured(with type: Event) {
        switch type {
        case .goToListVC:
            var vc: UIViewController & Coordinating = ViewController()
            vc.coordinator = self
            navigationController?.setViewControllers([vc], animated: true)
        }
//        switch type {
//        case .loginButtonTapped:
//            var vc: UIViewController & Coordinating = CryptoViewController()
//            vc.coordinator = self
//            navigationController?.setViewControllers([vc], animated: true)
//        case .isUserAuthorised:
//            var vc: UIViewController & Coordinating = CryptoViewController()
//            vc.coordinator = self
//            navigationController?.setViewControllers([vc], animated: true)
//        case .logout:
//            var vc: UIViewController & Coordinating = LoginViewController()
//            vc.coordinator = self
//            navigationController?.setViewControllers([vc], animated: false)
//        case .goToDetailVC(let data):
//            var vc: UIViewController & CoordinatingAndData = DetailViewController()
//            vc.detailCoinsData.append(data)
//            vc.coordinator = self
//            navigationController?.setViewControllers([vc], animated: true)
//        }
    }


}
