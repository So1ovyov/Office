//
//  ContactsViewController.swift
//  Office
//
//  Created by Максим Соловьёв on 22.12.2020.
//

import UIKit

class ContactsViewController: UIViewController {
    
    let personsTableView = UITableView()
    private let persons = DataManager.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.personsTableView.delegate = self
        self.personsTableView.dataSource = self
        
        setupNavigationBar()
        setupTableView()
        
        personsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "personCell")
    }
    
    private func setupNavigationBar() {
        navigationItem.title = "Контакты"
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.black]
    }
    
    private func setupTableView() {
        
        view.addSubview(personsTableView)
        
        personsTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            personsTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            personsTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            personsTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            personsTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
    }
    
}

extension ContactsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let lastName = persons[indexPath.row].lastName
        let firstName = persons[indexPath.row].firstName
        cell.textLabel?.text = "\(lastName ?? "") \(firstName ?? "")"
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = MoreViewController()
        vc.personNameLabel.text = "\(persons[indexPath.row].lastName ?? "") \(persons[indexPath.row].firstName ?? "")"
        vc.phoneNumberLabel.text = persons[indexPath.row].phoneNumber
        vc.emailLabel.text = persons[indexPath.row].email
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
