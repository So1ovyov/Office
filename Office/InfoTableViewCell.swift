//
//  InfoTableViewCell.swift
//  Office
//
//  Created by Максим Соловьёв on 23.12.2020.
//

import UIKit

class InfoTableViewCell: UITableViewCell {
    
    let infoImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .center
        image.layer.cornerRadius = 20
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let infoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(infoImage)
        self.contentView.addSubview(infoLabel)
        
        NSLayoutConstraint.activate([
            infoImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            infoImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            infoImage.heightAnchor.constraint(equalToConstant: 40),
            infoImage.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            infoLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            infoLabel.leadingAnchor.constraint(equalTo: infoImage.trailingAnchor, constant: 8),
            infoLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 8),
            infoLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
