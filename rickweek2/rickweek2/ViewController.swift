//
//  ViewController.swift
//  rickweek2
//
//  Created by RickSun on 2019/11/19.
//  Copyright © 2019 RickSun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var middleLable: UILabel!
    @IBOutlet weak var bgrandom: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func randomButton(_ sender: Any) {
        let array = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus." ,
        "Contrary to popular belief, Lorem Ipsum is not simply random text." ,
        "Richard McClintock, a Latin professor at Hampden-Sydney College in " ,
        "looked up one of the more obscure Latin words, consectetur" ,
        "from a Lorem Ipsum passage, and going through the cites of the word" ,
        "This book is a treatise on the theory of ethics, very popular during the." ,
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.." ,
        ]
        let colors = [
        UIColor(red: 245/255, green: 123/225, blue: 103, alpha: 1.0).cgColor,
        UIColor(red: 70/255, green: 123/225, blue: 103, alpha: 1.0).cgColor,
        UIColor(red: 215/255, green: 123/225, blue: 214, alpha: 1.0).cgColor,
        UIColor(red: 16/255, green: 192/225, blue: 214, alpha: 1.0).cgColor,
        UIColor(red: 149/255, green: 203/225, blue: 214, alpha: 1.0).cgColor,
        UIColor(red: 149/255, green: 45/225, blue: 214, alpha: 1.0).cgColor,
        UIColor(red: 128/255, green: 100/225, blue: 0, alpha: 1.0).cgColor,

        ]
        let a = Int(arc4random_uniform(7))
        bgrandom.layer.backgroundColor = colors[a]
        middleLable.text = array[a]
        
    }
}
