//
//  AppDelegate.swift
//  TentacleSampleApp
//
//  Created by Romain Pouclet on 2017-11-24.
//  Copyright © 2017 Perfectly-Cooked. All rights reserved.
//

import Cocoa
import Tentacle

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let token = ProcessInfo.processInfo.environment["GITHUB_TOKEN"]!
        let repo = Repository(owner: "Palleas", name: "CommitMessageEditor")

        let client = Client(.dotCom, token: token)
        client
            .execute(repo.branches)
            .logEvents()
            .start()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

