//
//  ViewController.swift
//  Lecture 11
//
//  Created by Mac on 19.05.2018.
//  Copyright © 2018 testOrg. All rights reserved.
//

import UIKit


//arrayOfCountry.append(ukraine)

class ViewController: UIViewController {
    
    var typeOfCell: Bool = true
    
    @IBOutlet var tableView: UITableView!
    @IBAction func onButtonClick(_ sender: Any) {
        typeOfCell = !typeOfCell
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCountry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cellIdentifier = tableView.c
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomeCell
        
        if typeOfCell {
            cell.flagPicture.image = UIImage(named: arrayOfCountry[indexPath.row].flag)
            cell.nameOfTheCountry.text = arrayOfCountry[indexPath.row].nameOfTheCountry
            cell.nameOfThePresident.text = ""
            cell.url.text = ""
            cell.labelNameOfThePresident.isHidden = true
            cell.labelOfUrl.isHidden = true
            cell.centrConstraint.isActive = true
            cell.leftConstraint.isActive = false
            cell.widthOfFlag.constant = 180
            
        } else {
            cell.flagPicture.image = UIImage(named: arrayOfCountry[indexPath.row].flag)
            cell.nameOfTheCountry.text = arrayOfCountry[indexPath.row].nameOfTheCountry
            cell.nameOfThePresident.text = arrayOfCountry[indexPath.row].nameOfThePresident
            cell.url.text = arrayOfCountry[indexPath.row].twitterUrl
            cell.labelNameOfThePresident.isHidden = false
            cell.labelOfUrl.isHidden = false
            cell.centrConstraint.isActive = false
            cell.leftConstraint.isActive = true
            cell.widthOfFlag.constant = 100
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .default, title: "Удалить") { (action, indexPath) in
            arrayOfCountry.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        delete.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        return [delete]
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let url = URL(string: arrayOfCountry[indexPath.row].twitterUrl)!
        UIApplication.shared.open(url)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func reload() {
        
    }
    
    
}



