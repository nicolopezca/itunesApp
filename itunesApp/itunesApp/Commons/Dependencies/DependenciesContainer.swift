//
//  DependenciesContainer.swift
//  itunesApp
//
//  Created by Nicolás López Cano on 7/12/21.
//
import Foundation

class DependenciesContainer {
    init() {}

    private var dependecies: [DependencyKey: Any] = [:]

    func register<T>(type: T.Type, name: String? = nil, service: Any) {
        let dependencyKey = DependencyKey(type: type, name: name)
        self.dependecies[dependencyKey] = service
    }

    func resolve<T>(type: T.Type, name: String? = nil) -> T? {
        let dependencyKey = DependencyKey(type: type, name: name)
        return self.dependecies[dependencyKey] as? T
    }
}
