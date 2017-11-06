//
//  TwitterData.swift
//  TwitterLink
//
//  Created by Sasakura Hirofumi on 2017/11/06.
//  Copyright © 2017年 Sasakura Hirofumi. All rights reserved.
//

import Foundation

class TwitterData {
    
    // HashMapの定義
    // ここは都度更新の必要があり、今後どのようにしていくかは考えなくてはいけない
    static let twitterMap = ["堀江貴文":"takapon_jp",
                      "Now or Never":"catnap707",
                      "落合陽一":"ochyai",
                      "徳丸浩":"ockeghem",
                      " Vitalik Buterin":"vitalikbuterin",
                      "Jeff Bezos":"jeffbezos",
                      "Jihan Wu":"jihanwu",
                      "Elon Musk":"elonmusk"
    ]
    
    // TwitterのFQDN
    static let urlString = "https://twitter.com/"
    
    // アクセスするTwitterのURL
    static var url = "https://twitter.com/"
    
}
