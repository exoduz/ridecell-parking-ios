//
//  ViewController.swift
//  Ridecell
//
//  Created by Robin Roy Julius on 4/02/2016.
//  Copyright © 2016 Robin Roy Julius. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    private var url: String {
        return "http://ridecell.robinjulius.com"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.delegate = self
        
        self.initialize()
        
        let profileURL = url
        let requestURL = NSURL(string: profileURL)
        let request = NSURLRequest(URL: requestURL!)
        webView.loadRequest(request)
    }
    
    func initialize() {
        navigationController?.navigationBar.barTintColor = UIColor(red: 4.0/255.0, green: 215.0/255.0, blue: 81.0/255.0, alpha: 1.0)
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        navigationController?.navigationBar.translucent = false
        self.navigationItem.title? = "Ridecell Parking App"
    }


}

