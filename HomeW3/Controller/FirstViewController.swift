//
//  FirstViewController.swift
//  HomeW3
//
//  Created by Milos Otasevic on 24/04/2019.
//  Copyright © 2019 Milos Otasevic. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    
    let imagesForCellLogo  = [#imageLiteral(resourceName: "dashboard"),#imageLiteral(resourceName: "apple"),#imageLiteral(resourceName: "twitter"),#imageLiteral(resourceName: "help"),#imageLiteral(resourceName: "Investment"),#imageLiteral(resourceName: "keypad"),#imageLiteral(resourceName: "lock"),#imageLiteral(resourceName: "instagram"),#imageLiteral(resourceName: "layers"),#imageLiteral(resourceName: "home"),#imageLiteral(resourceName: "laptop"),#imageLiteral(resourceName: "for_you")]

    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }
    
}


extension FirstViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 5 == 0 {
            let cell = Bundle.main.loadNibNamed("SecondTableViewCell", owner: self, options: nil)?.first as! SecondTableViewCell
            for image in cell.sameLogoCollection{
                image.image = UIImage(named: "apple.png")
                cell.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 0.75)
                return cell
            }
        }
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        cell.brLabel.text = "CELL No.\(indexPath.row)"
        cell.profilImg.image = imagesForCellLogo[indexPath.row % imagesForCellLogo.count]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row % 5 == 0 {
            return 30
        }
        return 50
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
}
