//
//  HomeViewController.swift
//  itunesApp
//
//  Created by Nicolás López Cano on 7/12/21.
//

import UIKit

protocol HomeView: AnyObject {
    
}

final class HomeViewController: UIViewController {
    var presenter: HomePresenterProtocol
    
    init(presenter: HomePresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: "HomeViewController", bundle: .main)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

private extension HomeViewController {
    
}

extension HomeViewController: HomeView {
    
}

