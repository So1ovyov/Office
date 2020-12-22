//
//  LaunchViewController.swift
//  Office
//
//  Created by Максим Соловьёв on 22.12.2020.
//

import UIKit

class LaunchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        openContactsView()
    }
    
    private func openContactsView() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            let tabBarVC = UITabBarController()
            let contactsVC = UINavigationController(rootViewController: ContactsViewController())
            let infoVC = UINavigationController(rootViewController: InfoViewController())

            contactsVC.title = "Контакты"
            infoVC.title = "Инфо"

            tabBarVC.setViewControllers([contactsVC, infoVC], animated: false)
            
            guard let items = tabBarVC.tabBar.items else {
                return
            }
            
            let images = ["contacts", "info"]
            for x in 0 ..< items.count {
                items[x].image = UIImage(named: images[x])
            }
            
            tabBarVC.modalPresentationStyle = .fullScreen
            self.present(tabBarVC, animated: true)
        }
    }

}
