import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
	var preferencesWindowController: PreferencesWindowController?

	func applicationDidFinishLaunching(aNotification: NSNotification) {
		preferencesWindowController = PreferencesWindowController()
		preferencesWindowController?.window?.makeKeyAndOrderFront(self)
	}

	func applicationWillTerminate(aNotification: NSNotification) {
		preferencesWindowController?.close()
		preferencesWindowController = nil
	}
}
