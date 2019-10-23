//
//  ViewController.swift
//  randomImage
//
//  Created by Hoang Tung on 10/23/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var randomImageView: UIImageView!
    
    @IBOutlet weak var pickButtonView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickButtonView.setTitle("Press", for: UIControl.State.normal)
        pickButtonView.layer.cornerRadius = 16
    }

    @IBAction func onPress(_ sender: Any) {
        let images: [String] = ["aries", "taurus", "gemini", "cancer", "leo", "virgo", "libra", "scorpio", "sagittarius", "capricorn", "aquarius", "pisces"]
        
        let image = images.randomElement()
        randomImageView.image = UIImage(named: image ?? "leo")
    }
    
}

