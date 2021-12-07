//
//  HomePresenter.swift
//  itunesApp
//
//  Created by Nicolás López Cano on 7/12/21.
//

import Foundation

protocol HomePresenterProtocol: AnyObject {
    var view: HomeView? { get set }
    func viewDidLoad()
}

final class HomePresenter {
    weak var view: HomeView?
    private let dependenciesResolver: DependenciesContainer
    
    init(dependenciesResolver: DependenciesContainer) {
        self.dependenciesResolver = dependenciesResolver
    }
    
    private var interactor: HomeInputInteractorProtocol? {
        self.dependenciesResolver.resolve(type: HomeInputInteractorProtocol.self)
    }
    
    private var coordinator: HomeCoordinatorProtocol? {
        self.dependenciesResolver.resolve(type: HomeCoordinatorProtocol.self)
    }
}

extension HomePresenter: HomePresenterProtocol {
    func viewDidLoad() {
        
    }
}

extension HomePresenter: HomeOutputInteractorProtocol {
    
}
