//
//  BaseViewController.swift
//  itunesApp
//
//  Created by Nicolás López Cano on 7/12/21.
//
import UIKit

protocol BaseView: AnyObject {
    func stopActivityIndicator()
}

final class BaseViewController: UIViewController {
    @IBOutlet private weak var activityIndicator: UIActivityIndicatorView!
    var presenter: BasePresenterProtocol
    
    init(presenter: BasePresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: "BaseViewController", bundle: .main)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.presenter.viewDidLoad()
    }
}

private extension BaseViewController {
    func setupView() {
        self.view.backgroundColor = .lightGray
        self.activityIndicator.startAnimating()
    }
}

extension BaseViewController: BaseView {
    func stopActivityIndicator() {
        self.activityIndicator.stopAnimating()
    }
}
