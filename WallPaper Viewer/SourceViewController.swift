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
    fileprivate var detailViewController : NSViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        tableView.delegate = self
        tableView.dataSource = self
        detailViewController = DetailViewController()
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
        return cell
    }
    
//    func tableView(_ tableView: NSTableView, shouldSelectRow row: Int) -> Bool {
//        let splitVC = parent as? NSSplitViewController
//        let detail = splitVC?.children[1] as! DetailViewController
//        //detailViewController.changeIma
//        detail.imageStringSelected = images[row]
//        //detail.changeImage(string: images[row])
//        return true
//    }
    
    func tableViewSelectionDidChange(_ notification: Notification) {
        print("Selected row number is \(tableView.selectedRow)")
        guard tableView.selectedRow != -1 else{
            return
        }
        let splitVC = parent as? NSSplitViewController
        let detail = splitVC?.children[1] as! DetailViewController
        //detailViewController.changeIma
        detail.imageStringSelected = images[tableView.selectedRow]
    }
}
