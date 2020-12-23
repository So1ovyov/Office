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
        
        self.infoTableView.delegate = self
        self.infoTableView.dataSource = self
        
        setupTableView()
        
        infoTableView.register(InfoTableViewCell.self, forCellReuseIdentifier: "infoCell")
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

extension InfoViewController: UITableViewDelegate, UITableViewDataSource {
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoCell", for: indexPath) as! InfoTableViewCell
        let email = persons[indexPath.section].email
        let phoneNumber = persons[indexPath.section].phoneNumber
        if indexPath.row == 0 {
            cell.infoLabel.text = "\(email ?? "")"
            cell.infoImage.image = UIImage(named: "mail")
        } else {
            cell.infoLabel.text = "\(phoneNumber ?? "")"
            cell.infoImage.image = UIImage(named: "call")
        }
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}
