//
//  SourceViewController.swift
//  WallPaper Viewer
//
//  Created by David Ilenwabor on 09/05/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import Cocoa

class SourceViewController: NSViewController {

    @IBOutlet weak var tableView: NSTableView!
    fileprivate let images = ["image1", "image2", "image3", "image4", "image5", "image6", "image7", "image8", "image9", "image10"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        tableView.delegate = self
        tableView.dataSource = self
        tableView.cell?.type = .imageCellType
    }
    
}

extension SourceViewController : NSTableViewDelegate, NSTableViewDataSource{
    func numberOfRows(in tableView: NSTableView) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        let identifier = NSUserInterfaceItemIdentifier("imageCell")
        let cell = tableView.makeView(withIdentifier: identifier, owner: nil) as! NSTableCellView
        cell.textField?.stringValue = images[row]
        cell.imageView?.image = NSImage(imageLiteralResourceName: images[row])
        return cell
    }
    
//    func tableView(_ tableView: NSTableView, shouldSelectRow row: Int) -> Bool {
    
    func tableViewSelectionDidChange(_ notification: Notification) {
        let splitVC = parent as? NSSplitViewController
        let detail = splitVC?.children[1] as! DetailViewController
        guard tableView.selectedRow != -1 else{
            detail.showNoImage()
            return
        }
        detail.imageStringSelected = images[tableView.selectedRow]
    }
}
