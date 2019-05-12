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
    var imageStringSelected : String = ""{
        didSet{
            let image = NSImage(imageLiteralResourceName: imageStringSelected)
            imageViewDisplay.image = image
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    func changeImage(string : String){
        let image = NSImage(named: NSImage.Name(stringLiteral: string + ".jpg"))
        imageViewDisplay.image = image
    }
}
