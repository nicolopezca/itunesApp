//
//  AuthorCell.swift
//  itunesApp
//
//  Created by Nicolás López Cano on 7/12/21.
//

import UIKit

class AuthorCell: UITableViewCell {

    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var styleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setViewModel(_ viewModel: ItunesAuthorViewModel) {
        self.nameLabel.text = viewModel.name
        self.styleLabel.text = viewModel.style
    }
}
