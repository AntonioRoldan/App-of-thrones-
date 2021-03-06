
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let episodeViewController = EpisodeViewController()
        let castViewController = CastViewController()
        let settingsViewController = SettingsViewController()
        let houseViewController = HouseViewController()
        let favouritesViewController = FavouritesViewController()
            
        favouritesViewController.title = "Favourites"
        episodeViewController.title = "Seasons"
        castViewController.title = "Cast"
        settingsViewController.title = "Settings"
        houseViewController.title = "House"
//        episodeViewController.tabBarItem = UITabBarItem.init(title: "Seasons", image: nil, tag: 0)
//        castViewController.tabBarItem = UITabBarItem.init(title: "Cast", image: nil, tag: 1)
//        houseViewController.tabBarItem = UITabBarItem.init(title: "House", image: nil, tag: 2)
//        settingsViewController.tabBarItem = UITabBarItem.init(title: "Settings", image: nil, tag: 3)
        
        let navigationEpisodeViewController = UINavigationController.init(rootViewController: episodeViewController)
        let navigationCastViewController = UINavigationController.init(rootViewController: castViewController)
        let navigationHouseViewController = UINavigationController.init(rootViewController: houseViewController)
        let navigationSettingsViewController = UINavigationController.init(rootViewController: settingsViewController)
        let navigationFavouritesViewController = UINavigationController.init(rootViewController: favouritesViewController)
        
        navigationEpisodeViewController.tabBarItem = UITabBarItem.init(title: "Seasons", image: UIImage.init(systemName: "film.fill"), tag: 0)
        
        navigationCastViewController.tabBarItem = UITabBarItem.init(title: "Cast", image: UIImage.init(systemName: "person.3.fill"), tag: 1)
        
        navigationHouseViewController.tabBarItem = UITabBarItem.init(title: "House", image: UIImage.init(systemName: "shield.lefthalf.fill"), tag: 2)
        
        
    navigationSettingsViewController.tabBarItem = UITabBarItem.init(title: "Settings", image: UIImage.init(systemName: "gear"), tag: 3)
        
        navigationFavouritesViewController.tabBarItem = UITabBarItem.init(title: "Favourites", image: UIImage.init(systemName: "heart.fill"), tag: 4)
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [navigationEpisodeViewController, navigationCastViewController, navigationHouseViewController, navigationFavouritesViewController, navigationSettingsViewController]
        
        tabBarController.tabBar.barStyle = .black
        tabBarController.tabBar.isTranslucent = true
        tabBarController.tabBar.tintColor = UIColor.init(red: 235/255.0, green: 172/255.0, blue: 38/255.0, alpha: 1.0)
        
        UINavigationBar.appearance().overrideUserInterfaceStyle = .dark
        UINavigationBar.appearance().tintColor = UIColor.init(red: 235/255.0, green: 172/255.0, blue: 38/255.0, alpha: 1.0)
        
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.

        // Save changes in the application's managed object context when the application transitions to the background.
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }


}

