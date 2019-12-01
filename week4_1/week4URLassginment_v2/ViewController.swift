//
//  ViewController.swift
//  week4URLassginment_v2
//
//  Created by RickSun on 2019/11/25.
//  Copyright © 2019 RickSun. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
    UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var aTableView: UITableView!
    
    
    var sceneArry = ["This is section 0, row 0", "This is section 0, row 1", "This is section 0, row 2", "This is section 0, row 3", "This is section 0, row 4", "This is section 0, row 5", "This is section 0, row 6", "This is section 0, row 7", "This is section 0, row 8" , "This is section 0, row 9"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sceneArry.count
        }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = sceneArry[indexPath.row]
        tableView.rowHeight = 100
        return cell!
        }


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aTableView.delegate = self
        aTableView.dataSource = self

    }

 
    
}

