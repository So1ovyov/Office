//
//  MoreViewController.swift
//  Office
//
//  Created by Максим Соловьёв on 22.12.2020.
//

import UIKit

class MoreViewController: UIViewController {
    
    let personNameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .systemGray3
        label.font = UIFont(name: "Copperplate", size: 25)
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 15
        return label
    }()
    
    let personImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "person")
        return image
    }()
    
    let phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .systemGray3
        label.font = UIFont(name: "Copperplate", size: 25)
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 15
        return label
    }()
    
    let phoneImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "call")
        return image
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .systemGray3
        label.font = UIFont(name: "Copperplate", size: 20)
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 15
        return label
    }()
    
    let emailImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "mail")
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        
        setupConstraints()
        setupNavigationBar()
    }
    
    private func setupConstraints() {
        
        view.addSubview(personNameLabel)
        personNameLabel.addSubview(personImage)
        view.addSubview(phoneNumberLabel)
        phoneNumberLabel.addSubview(phoneImage)
        view.addSubview(emailLabel)
        emailLabel.addSubview(emailImage)
        
        [personNameLabel,
         personImage,
         phoneNumberLabel,
         phoneImage,
         emailLabel,
         emailImage].forEach { $0.translatesAutoresizingMaskIntoConstraints = false}
        
        NSLayoutConstraint.activate([
            personNameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            personNameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            personNameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            personNameLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            personImage.topAnchor.constraint(equalTo: personNameLabel.topAnchor, constant: 5),
            personImage.bottomAnchor.constraint(equalTo: personNameLabel.bottomAnchor, constant: -5),
            personImage.leadingAnchor.constraint(equalTo: personNameLabel.leadingAnchor, constant: 5),
            personImage.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            phoneNumberLabel.topAnchor.constraint(equalTo: personNameLabel.bottomAnchor, constant: 20),
            phoneNumberLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            phoneNumberLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            phoneNumberLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            phoneImage.topAnchor.constraint(equalTo: phoneNumberLabel.topAnchor, constant: 5),
            phoneImage.bottomAnchor.constraint(equalTo: phoneNumberLabel.bottomAnchor, constant: -5),
            phoneImage.leadingAnchor.constraint(equalTo: phoneNumberLabel.leadingAnchor, constant: 5),
            phoneImage.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: phoneNumberLabel.bottomAnchor, constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            emailLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            emailLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            emailImage.topAnchor.constraint(equalTo: emailLabel.topAnchor, constant: 5),
            emailImage.bottomAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: -5),
            emailImage.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor, constant: 5),
            emailImage.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setupNavigationBar() {
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.black]
        
        navigationController?.setNavigationBarHidden(false, animated: true)
    
        let returnButton: UIButton = {
            let button = UIButton()
            button.setImage(UIImage(named: "return"), for: .normal)
            button.sizeToFit()
            button.addTarget(self, action: #selector(didTapReturnButton), for: .touchUpInside)
            return button
        }()
        
        let returnButtonItem: UIBarButtonItem = UIBarButtonItem(customView: returnButton)
        self.navigationItem.leftBarButtonItem = returnButtonItem
    }
    
    @objc func didTapReturnButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
}
