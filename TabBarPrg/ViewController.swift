//
//  ViewController.swift
//  TabBarPrg
//
//  Created by Hitesh V-PI on 30/05/17.
//  Copyright © 2017 Pixabit Infotech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate {

    @IBOutlet var TabBar: UITabBar!
    
    @IBOutlet var PageView: UIView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TabBar.delegate = self
        TabBar.selectedItem = TabBar.items?[0];
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 0:
       // if item.tag == 0{
            let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.navigationController?.pushViewController(ViewController, animated: true)
        
            break
        
        case 1:
        //else if item.tag == 1{
            let SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
            self.navigationController?.pushViewController(SecondViewController, animated: true)
        
            break
        
        case 2:
            
        //else if item.tag == 2{
            let Third = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
            self.navigationController?.pushViewController(Third, animated: true)
        
            break
        default:
            
        //else{
            let Fourth = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
            self.navigationController?.pushViewController(Fourth, animated: true)
         
        }
    }
    
    
    

}

