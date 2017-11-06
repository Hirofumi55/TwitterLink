//
//  ViewController.swift
//  TwitterLink
//
//  Created by Sasakura Hirofumi on 2017/11/06.
//  Copyright © 2017年 Sasakura Hirofumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var twitterTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // tableViewを使用するための準備
        // ここはお決まりの書き方
        self.twitterTableView.delegate = self
        self.twitterTableView.dataSource = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // セクション数
    func numberOfSections(in tableView: UITableView) -> Int {
        // 現状セクションは一つ
        return 1
    }
    
    // テーブルセル数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // HashMapの個数分返す
        let number = TwitterData.twitterMap.count
        return number
    }
    
    // テーブルセルの中身について
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.twitterTableView.dequeueReusableCell(withIdentifier: "twitterCell", for: indexPath)
        
        let name = Array(TwitterData.twitterMap.keys)
        let path = Array(TwitterData.twitterMap.values)
        
        
        cell.textLabel?.text = name[indexPath.row]
        cell.detailTextLabel?.text = path[indexPath.row]
        
        return cell
    }
    
    // セルがタップ
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let cell = tableView.cellForRow(at: indexPath)
        
        // アクセス先となるURLを生成する
        // TwitterData.urlにアクセス先となるURLが更新される
        let paths = Array(TwitterData.twitterMap.values)
        let path = paths[indexPath.row]
        
        TwitterData.url = TwitterData.urlString + path
        
        self.performSegue(withIdentifier: "detailTwitter", sender: nil)
    }
    
    


}

