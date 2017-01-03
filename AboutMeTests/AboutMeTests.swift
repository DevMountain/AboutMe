//
//  AboutMeTests.swift
//  AboutMeTests
//
//  Copyright © 2015 DevMountain. All rights reserved.
//

import XCTest
@testable import AboutMe

class AboutMeTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInitialSceneClass() {
        
        guard let tabBarController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? UITabBarController,
            let navigationController = tabBarController.viewControllers?.first as? UINavigationController,
            let viewController = navigationController.viewControllers.first as? ViewController else {
            
                XCTAssert(false, "Expected initial scene to be of class ViewController")
                return
        }
    }
    
    func testViewControllerSubViewElementUsage() {

        guard let tabBarController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? UITabBarController else {
                
                XCTAssert(false, "Expected a UITabBarController")
                return
        }
        
        tabBarController.selectedIndex = 1
        
        guard let interestsNavigationController = tabBarController.viewControllers?[1] as? UINavigationController,
            let interestsViewController = interestsNavigationController.viewControllers.first as? InterestsViewController else {
            XCTAssert(false, "Expected second scene to be of class InterestsViewController")
            return
        }
        
        _ = interestsViewController.view
        
        let subViewCount = childViewCount(interestsViewController.view)
        
        if subViewCount < 15 {
            XCTAssert(false, "Expected more information. Tell us more!")
        }

    }
    
    func childViewCount(_ view: UIView) -> Int {
        
        var count = view.subviews.count
        
        for subView in view.subviews {
            count += childViewCount(subView)
        }
        
        return count
    }
    
    func testForThreeOrMoreDetailViews() {
        
        guard let tabBarController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? UITabBarController else {
            
            XCTAssert(false, "Expected a UITabBarController")
            return
        }
        
        tabBarController.selectedIndex = 1
        
        guard let interestsNavigationController = tabBarController.viewControllers?[1] as? UINavigationController,
            let interestsViewController = interestsNavigationController.viewControllers.first as? InterestsViewController else {
                XCTAssert(false, "Expected second scene to be of class InterestsViewController")
                return
        }
        
        // As of writing on 9/22/2015 in Xcode 7 and iOS 9 this undocumented behavior returns an array of segues. Has existed since at least iOS 5, but may break in the future.
        
        guard let seguesOptional = interestsViewController.value(forKey: "storyboardSegueTemplates") else {
            XCTAssert(false, "No segues recognized from ViewController class. Expected at least one segue from your ViewController class. Confirm you have at least one segue. This test uses undocumented APIs that may break in future versions of iOS or Xcode. If you have more than one segue and this test fails, please contact your mentor about this test.")
            return
        }
        
        let segues = seguesOptional as! NSArray as Array
        
        if segues.count < 3 {
            XCTAssert(false, "Give us more details. Expected at least three detail scenes.")
        }
        
    }
    
}
