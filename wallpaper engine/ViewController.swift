//
//  ViewController.swift
//  wallpaper engine
//
//  Created by AoiKazto on 23/05/2019.
//  Copyright © 2019 AoiKazto. All rights reserved.
//

import Cocoa
import AppKit

class ViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func PressButton(_ sender: Any) {
        for i in 1...100 {
            for n in 0...178 {
                var l = String(n)
                if (l.count == 1){
                    l = "00" + l;
                }
                if l.count == 2{
                    l = "0" + l;
                }
                print(l)
                
                setWallpaper(wallpaperPath: "/Users/ak/Desktop/image/\(l).jpg")
                
                Thread.sleep(forTimeInterval: 0.04)
            }
            print("\(i)")
        }
    }
    
    func setWallpaper(wallpaperPath: String){
        let p = NSWorkspace.shared
        do{
            if let main = NSScreen.main {
                try p.setDesktopImageURL(URL(fileURLWithPath: wallpaperPath), for: main, options: [:])
            }
        }catch{
            print("Error!!")
        }
        
        
        
    }
}

