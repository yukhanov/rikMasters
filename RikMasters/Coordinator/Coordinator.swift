//
//  Coordinator.swift
//  RikMasters
//
//  Created by Сергей Юханов on 24.07.2023.
//

import UIKit

// Событие для перехода на другой вьюконтроллер
enum Event {
    case goToListVC
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }

    func eventOccured(with type: Event)
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
