//
//  ViewController.swift
//  PinchImage
//
//  Created by iGridMAC on 29/01/19.
//  Copyright © 2019 iGridMAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var scrollVView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(self.pinch(sender:)))
        self.imgView.addGestureRecognizer(pinch)
//        scrollVView.delegate = self
//         scrollVView   .alwaysBounceVertical = false
//        scrollVView.alwaysBounceHorizontal = false
//        scrollVView.showsVerticalScrollIndicator = true
//        scrollVView.flashScrollIndicators()
//        
//        scrollVView.minimumZoomScale = 1.0
//        scrollVView.maximumZoomScale = 10.0
//        
//        
//        
//        imgView!.layer.cornerRadius = 11.0
//        imgView!.clipsToBounds = false
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    
    @objc func pinch(sender:UIPinchGestureRecognizer) {
        if sender.state == .began || sender.state == .changed {
            let currentScale = self.imgView.frame.size.width / self.imgView.bounds.size.width
            let newScale = currentScale*sender.scale
            let transform = CGAffineTransform(scaleX: newScale, y: newScale)
            self.imgView.transform = transform
            sender.scale = 1
            
        }
    }
}

