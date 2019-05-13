//
//  DetailViewController.swift
//  WallPaper Viewer
//
//  Created by David Ilenwabor on 09/05/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import Cocoa

class DetailViewController: NSViewController {

    @IBOutlet weak var imageViewDisplay: NSImageView!
    @IBOutlet weak var customView: NSView!
    @IBOutlet weak var selectedText: NSTextField!
    var imageStringSelected : String = ""{
        didSet{
            customView.isHidden = true
            selectedText.isHidden = true
            let image = NSImage(imageLiteralResourceName: imageStringSelected)
            imageViewDisplay.image = image
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do view setup here.
    }
    
    func showNoImage(){
        imageViewDisplay.image = nil
        customView.isHidden = false
        selectedText.isHidden = false
        
    }
}
