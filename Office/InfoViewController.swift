//
//  InfoViewController.swift
//  Office
//
//  Created by Максим Соловьёв on 22.12.2020.
//

import UIKit

class InfoViewController: UIViewController {
    
    let infoTableView = UITableView()
    private let persons = DataManager.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Инфо"
        
        view.backgroundColor = .white
        
        self.infoTableView.dataSource = self
        
        setupTableView()
        
        infoTableView.register(UITableViewCell.self, forCellReuseIdentifier: "infoCell")
    }
    
    private func setupTableView() {
        
        view.addSubview(infoTableView)
        
        infoTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            infoTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            infoTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            infoTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            infoTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
    }
    
}

extension InfoViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let fullName = "\(persons[section].lastName ?? "") \(persons[section].firstName ?? "")"
        return fullName
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoCell", for: indexPath)
        let email = persons[indexPath.section].email
        let phoneNumber = persons[indexPath.section].phoneNumber
        if indexPath.row == 0 {
            cell.textLabel?.text = "\(email ?? "")"
        } else {
            cell.textLabel?.text = "\(phoneNumber ?? "")"
        }
        cell.selectionStyle = .none
        return cell
    }
    
}
