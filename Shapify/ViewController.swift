//
//  ViewController.swift
//  Shapify
//
//  Created by IT on 11/17/20.
//  Copyright © 2020 IT. All rights reserved.
//
import UIKit
import SideMenu

class ViewController: UIViewController ,menuControllerDelegate {
    var menu: SideMenuNavigationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        let smenu = MenuListController()
        menu = SideMenuNavigationController(rootViewController: smenu)
        menu?.leftSide = true
        smenu.delegate = self
        menu?.setNavigationBarHidden(true, animated: false)
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        // Do any additional setup after loading the view.
    }
    @IBAction func MenuTapped(_ sender: Any) {
     present(menu! , animated: true)
    }
    func didSelectMenuItem(named: String){
        menu?.dismiss(animated: true, completion: {
            
            if named == "Circle"{
                let circle = self.storyboard?.instantiateViewController(identifier: "CircleViewController") as! CircleViewController
                self.navigationController?.pushViewController(circle, animated: true)
            }
            else if named == "Rectangle"{
                let rectangle = self.storyboard?.instantiateViewController(identifier: "RectangleViewController") as! RectangleViewController
                self.navigationController?.pushViewController(rectangle, animated: true)
                
            }
            else if named == "Oval"{
                let oval = self.storyboard?.instantiateViewController(identifier: "OvalViewController") as! OvalViewController
                self.navigationController?.pushViewController(oval, animated: true)
            }
            else if named == "Triangle"{
                let triangle = self.storyboard?.instantiateViewController(identifier: "TriangleViewController") as! TriangleViewController
                self.navigationController?.pushViewController(triangle, animated: true)
            }
        })
    }

}
protocol menuControllerDelegate {
    func didSelectMenuItem(named: String)
}
class MenuListController: UITableViewController {
    public var delegate: menuControllerDelegate?
    let darkColor = UIColor(red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 1)
    override func viewDidLoad() {
        tableView.backgroundColor = darkColor
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    var items = ["Circle", "Rectangle" , "Oval", "Triangle"]
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.backgroundColor = darkColor
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           //tableView.deselectRow(at: indexPath, animated: true)
        let selectedItems = items[indexPath.row]
        delegate?.didSelectMenuItem(named: selectedItems)
    }
}

