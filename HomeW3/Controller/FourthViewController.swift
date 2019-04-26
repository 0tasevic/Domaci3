//
//  ThirddViewController.swift
//  HomeW3
//
//  Created by Milos Otasevic on 26/04/2019.
//  Copyright © 2019 Milos Otasevic. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var scroll: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scroll.minimumZoomScale = 0.5
        self.scroll.maximumZoomScale = 2
        self.scroll.delegate = self
        }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return bgImage
    }
}
