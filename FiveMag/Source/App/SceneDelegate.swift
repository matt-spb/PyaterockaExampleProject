//
//  SceneDelegate.swift
//  FiveMag
//
//  Created by matt_spb on 29.09.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }

        window?.rootViewController = MainTabBarController()
        window?.makeKeyAndVisible()
    }



}

