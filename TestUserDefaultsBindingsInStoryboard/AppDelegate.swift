//
//  AppDelegate.swift
//  TestUserDefaultsBindingsInStoryboard
//
//  Created by ... on 17.06.24.
//
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
	
	/// Overwritten to register the default values. Register could take place later in te individual
	/// ViewController init constructors, but must be done before the corresponding nib is
	/// being loaded. Registering does not store any defaults until they have been changed!
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

