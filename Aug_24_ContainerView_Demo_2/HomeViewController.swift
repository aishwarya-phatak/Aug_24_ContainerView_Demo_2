//
//  HomeViewController.swift
//  Aug_24_ContainerView_Demo_2
//
//  Created by Vishal Jagtap on 16/10/24.
//

import UIKit
import SDWebImage
import Kingfisher

class HomeViewController: UIViewController {
    
    @IBOutlet weak var btnAudio1: UIButton!
    @IBOutlet weak var btnAudio2: UIButton!
    @IBOutlet weak var btnAudio3: UIButton!
    
    @IBOutlet weak var imageView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://images.pexels.com/photos/45853/grey-crowned-crane-bird-crane-animal-45853.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
//        By using SDwebImage Pod.
        
//        imageView1.sd_setImage(with: url)
        
        // By using Kingfisher Pod.
        imageView1.kf.setImage(with: url)
    }
    
    @IBAction func btnAudioCLicked(_ sender: UIButton) {
        print(sender.titleLabel)
        print(sender.tag)
        print(sender.backgroundColor)
        
    }
}
