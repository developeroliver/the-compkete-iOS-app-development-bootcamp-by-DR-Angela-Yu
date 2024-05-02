//
//  SceneDelegate.swift
//  Core Data Todo List
//
//  Created by olivier geiger on 02/05/2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let viewController = ViewController()
        let navController = CustomNavigationController(rootViewController: viewController)
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()

    }
}

