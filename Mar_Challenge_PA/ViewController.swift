//
//  ViewController.swift
//  Mar_Challenge_PA
//
//  Created by Dev OSD on 2023/02/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imgView1: UIImageView!
    @IBOutlet var imgView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoadimgView1(_ sender: UIButton) {
        imgView1.image = UIImage(systemName: "photo")
        let url = URL(string: "https://developer.apple.com/swift/images/swift-og.png")
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url!) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self!.imgView1.image = image
                    }
                }
            }
        }
    }
    @IBAction func LoadimgView2(_ sender: UIButton) {
        imgView2.image = UIImage(systemName: "photo")
        let url = URL(string: "https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/objective-c/objective-c.png")
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url!) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self!.imgView2.image = image
                    }
                }
            }
        }
    }
    
}

