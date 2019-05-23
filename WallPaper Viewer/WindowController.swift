//
//  WindowController.swift
//  WallPaper Viewer
//
//  Created by David Ilenwabor on 23/05/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

    @IBOutlet weak var shareButton: NSButton!
    override func windowDidLoad() {
        super.windowDidLoad()
        shareButton.sendAction(on: .leftMouseDown)
    }

}
