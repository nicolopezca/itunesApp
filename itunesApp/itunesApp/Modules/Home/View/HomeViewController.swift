//
//  HomeViewController.swift
//  itunesApp
//
//  Created by Nicolás López Cano on 7/12/21.
//

import UIKit

protocol HomeView: AnyObject {
    
}

final class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var presenter: HomePresenterProtocol
    var viewModels: [ItunesAuthorViewModel] = []
    
    init(presenter: HomePresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: "HomeViewController", bundle: .main)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @IBOutlet private weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "AuthorCell", bundle: nil)
        tableview.register(nib, forCellReuseIdentifier: AuthorCell.cellReuseIdentifier)
        tableview.delegate = self
        tableview.dataSource = self
        createMockViewModels()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: AuthorCell = self.tableview.dequeueReusableCell(withIdentifier: AuthorCell.cellReuseIdentifier) as! AuthorCell
        cell.setViewModel(viewModels[indexPath.row])
        return cell
    }
}

private extension HomeViewController {
    func createMockViewModels() {
        
        let mockViewModel1 = ItunesAuthorViewModel(name: "Name: Bruno Mars", style: "Style: pop")
        let mockViewModel2 = ItunesAuthorViewModel(name: "Name: Nirvana", style: "Style: punk")
        let mockViewModel3 = ItunesAuthorViewModel(name: "Name: Daft punk", style: "Style: electronic")
        let mockViewModel4 = ItunesAuthorViewModel(name: "Name: Drake", style: "Style: rap")
        viewModels.append(mockViewModel1)
        viewModels.append(mockViewModel2)
        viewModels.append(mockViewModel3)
        viewModels.append(mockViewModel4)
    }
}

extension HomeViewController: HomeView {
    
}

