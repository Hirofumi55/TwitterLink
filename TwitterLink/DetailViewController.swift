//
//  DetailViewController.swift
//  TwitterLink
//
//  Created by Sasakura Hirofumi on 2017/11/06.
//  Copyright © 2017年 Sasakura Hirofumi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // Twitter Web View
    @IBOutlet weak var twitterWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TwitterData.urlをURL型に変換
        let url = URL(string: TwitterData.url)
        // urlでリクエストする
        let request = URLRequest(url: url!)
        //指定したURLをWebViewに表示する
        self.twitterWebView.loadRequest(request)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
