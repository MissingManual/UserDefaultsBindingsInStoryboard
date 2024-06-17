//
//  AppDelegate.swift
//  TestUserDefaultsBindingsInStoryboard
//
//  Created by ... on 17.06.24.
//  - add slider and label to view of ViewController in IB storyboard
//	- add MenuItem to windows menu in Application Scene
//		When running the app this menu item remains disabled as no action is connected
//	- bind value of the created menu item to the shared user defaults
//
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

	override init() {
		super.init()
		UserDefaults.standard.register(defaults: ["first": 0.0
												  , "showTerminal": false
												 ]
		)
	}


	func applicationDidFinishLaunching(_ aNotification: Notification) {
		// Insert code here to initialize your application
	}

	func applicationWillTerminate(_ aNotification: Notification) {
		// Insert code here to tear down your application
	}

	func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
		return true
	}


}

