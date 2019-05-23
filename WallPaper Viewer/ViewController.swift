//
//  ViewController.swift
//  WallPaper Viewer
//
//  Created by David Ilenwabor on 08/05/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import Cocoa

class ViewController: NSSplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareImage(_ sender : NSButton){
        guard let detail = self.children[1] as? DetailViewController else{
            return
        }
        guard let image = detail.imageViewDisplay.image else{
            return
        }
        let picker = NSSharingServicePicker(items: [image])
        picker.show(relativeTo: .zero, of: sender, preferredEdge: .minY)
    }

}

