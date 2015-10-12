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
    
    func testViewControllerSubviewCount() {
        guard let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? ViewController else {
            XCTAssert(false, "Expected initial scene to be of class ViewController")
            return
        }
        
        // As of writing on 9/22/2015 in Xcode 7 and iOS 9, scenes loaded via Storyboard start with 2 subviews
        
        if viewController.view.subviews.count < 12 {
            XCTAssert(false, "Tell us more about yourself. Expected 10 or more things about you.")
        }
    }
    
    func testViewControllerSubViewElementUsage() {
        guard let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? ViewController else {
            XCTAssert(false, "Expected initial scene to be of class ViewController")
            return
        }
        
        let labelCount = viewController.view.subviews.filter{$0 is UILabel}.count
        let buttonCount = viewController.view.subviews.filter{$0 is UIButton}.count
        let imageViewCount = viewController.view.subviews.filter{$0 is UIImageView}.count
        
        if labelCount == 0 {
            XCTAssert(false, "All action, no talk. Expected at least one UILabel.")
        }
        
        if buttonCount == 0 {
            XCTAssert(false, "Do something when the user taps. Expected at least one UIButton.")
        }
        
        if imageViewCount == 0 {
            XCTAssert(false, "A picture is worth 1,000 words. Expected at least one UIImageView.")
        }

    }
    
    func testForThreeOrMoreDetailViews() {
        
        guard let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? ViewController else {
            XCTAssert(false, "Expected initial scene to be of class ViewController")
            return
        }
        
        // As of writing on 9/22/2015 in Xcode 7 and iOS 9 this undocumented behavior returns an array of segues. Has existed since at least iOS 5, but may break in the future.
        
        guard let seguesOptional = viewController.valueForKey("storyboardSegueTemplates") else {
            XCTAssert(false, "No segues recognized from ViewController class. Expected at least one segue from your ViewController class. Confirm you have at least one segue. This test uses undocumented APIs that may break in future versions of iOS or Xcode. If you have more than one segue and this test fails, please contact your mentor about this test.")
            return
        }
        
        let segues = seguesOptional as! NSArray as Array
        
        if segues.count < 3 {
            XCTAssert(false, "Give us more details. Expected at least three detail scenes.")
        }
        
    }
    
}
