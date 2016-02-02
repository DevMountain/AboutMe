# About Me

### Level 0

About Me is an opportunity for students to introduce themselves via their first app. Students will explore Storyboards, use a variety of UIKit elements, add images, and use Xcode to install the application on an iOS device.

Students who complete this project independently are able to:

* instantiate and place UIView objects on the screen
* edit properties on UIView objects
* create and use segues to navigate between views
* configure Xcode to install project on hardware device

## Guide

### AboutMe Intro Scene

Build a view with a photo of yourself, your name, and something specific about you. This view should be a simple, clean, professional way to introduce yourself.

1. Open the ViewController scene in Main.storyboard
2. Using UIViews, UILabels, UIButtons, UIImageViews, create a simple scene that you can use to introduce yourself
3. Use a Stack View, Auto Layout, and the layout guides to create a clean, structured view
4. Verify that the scene appears as desired in two different Size Classes in the Interface Builder Preview mode or in Simulator

### AboutMe Interests Scene

Build a view with at least 10 facts that you could use to introduce your interests. List goals, motivations, hobbies, or personal favorites. Include a photo.

1. Create a new `InterestsViewController.swift` class and accompanying scene in Main.storyboard
2. Using Stack Views, UIViews, UILabels, UIButtons, and UIImageViews, create a scene that you can use to introduce at least 10 facts about you or interests you have
    * Use a UIScrollView if you cannot fit what you want to display
3. Use layout guides and basic Autolayout features to avoid overlapping or incorrectly placed views
4. Verify the scene appears as desired in two different Size Classes in Simulator

### Tab Bar Controller

Embed both the Intro and Interests scenes into a Tab Bar Controller. Change the names of the Tab Bar Items to reflect what the scenes will display.

1. Add the Tab Bar Controller to Main.storyboard
2. Wire up the relationship segue from the Intro and Interests scenes to the Tab Bar Controller
3. Make sure to display the Intro scene first by making it the first Tab Bar Item
4. Run the application in Simulator and ensure that nothing in the views is cut off or truncated
5. Install the project on an iOS device

### Detail Scenes

Build three detail scenes that give extra insight into the view's topic.

1. Embed the Interests scene in a Navigation Controller
2. Create at least three new scenes with details about a specific fact or interest you included on the Interests scene
3. Create segues from UIButtons on your Interests scene to present the new detail scenes
    * use 'Show' presentations that will push the new view on the Navigation Controller's view controller stack
    * ex. button titled 'Family' presents new view with photos of family
2. Create new subclasses of UIViewController to match with your detail scenes
    * ex. FamilyViewController.swift for Family detail scene
3. Run the application in Simulator and ensure that you can navigate to each new detail view

### Explain Your Choices

Use your app to introduce yourself to three people. Describe your navigation hierarchy as you do so, and why the choices for Tabs, Navigation Controllers, and presentation styles make sense.

### Black Diamonds

* Add an additional tab with Contact Information
* Research good design principles and apply them to each view in your application
* Submit your application to Test Flight
* Replace your list of hobbies with a UITableView implementation
* Create a Unit or UITest that verifies the user can reach and dismiss each detail scene

### Tests

* Requires at least 10 subviews to the view property of the ViewController class
* Requires at least one UILabel, UIButton, and UIImageView
* Requires at least three detail scenes

## Contributions

Please refer to CONTRIBUTING.md.

## License

Projects inspired by or derived from Apple's Swift Education community are licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/), by Yong Bakos.

## Copyright

All other work © DevMountain LLC, 2015. Unauthorized use and/or duplication of this material without express and written permission from DevMountain, LLC is strictly prohibited. Excerpts and links may be used, provided that full and clear credit is given to DevMountain with appropriate and specific direction to the original content.