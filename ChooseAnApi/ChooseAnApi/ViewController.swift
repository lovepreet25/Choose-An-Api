//
//  ViewController.swift
//  ChooseAnApi
//
//  Created by Macbook on 2022-10-17.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
       @IBAction func NewsApi(_ sender: UIButton) {
            NewsFeed.fetchDir()
        
        
    }
    
    @IBAction func RandomUser(_ sender: Any) {
        randomuser.fetchRandomDir()
    }
    
        
    @IBAction func UniApi(_ sender: Any) {
        UniversitiesApi.fetchUniDir()
    }
}
    

