//
//  TabBarController.swift
//  FiveMag
//
//  Created by matt_spb on 29.09.2021.
//

import UIKit

final class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupBarControllers()
    }

    private func setupBarControllers() {

        let items = [UITabBarItem(title: "Главная",
                                  image: UIImage(systemName: "house"),
                                  selectedImage: UIImage(systemName: "house.fill")),
                     UITabBarItem(title: "Каталог",
                                  image: UIImage(systemName: "square.grid.2x2"),
                                  selectedImage: UIImage(systemName: "square.grid.2x2")),
                     UITabBarItem(title: "Корзина",
                                  image: UIImage(systemName: "cart"),
                                  selectedImage: UIImage(systemName: "cart.fill")),
                     UITabBarItem(title: "Профиль",
                                  image: UIImage(systemName: "person"),
                                  selectedImage: UIImage(systemName: "person.fill"))
        ]

        let viewControllers = [ViewController(),
                              ViewController(),
                              ViewController(),
                              ViewController()
        ]

        let customViewControllers = zip(items, viewControllers).compactMap { item, viewController -> UIViewController in
            viewController.tabBarItem = item
            return viewController
        }

        setViewControllers(customViewControllers, animated: true)

    }
}
