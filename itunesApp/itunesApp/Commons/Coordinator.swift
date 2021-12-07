//
//  Coordinator.swift
//  itunesApp
//
//  Created by Nicolás López Cano on 7/12/21.
//

import UIKit

public protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    func start()
}
