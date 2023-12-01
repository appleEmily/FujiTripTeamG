//
//  RecomendTripViewController.swift
//  FujiTripTeamG
//
//  Created by Emily Nozaki on 2023/11/29.
//

import UIKit

class RecomendTripViewController: UIViewController {
    
    //関連付け系をここにやる
    
    @IBOutlet weak var planLabel: UILabel!
    
    
    //どこから富士山を見るのか、の情報を受け取るための変数(箱)
    var fujiNum: Int!
    
    //プランを入れておく配列。配列の中に配列を入れる「2重配列」を使っています。参考になる教科書はクイズです。
    var PlanArray: Array<Array<String>> = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setPlan()
        
        planLabel.text = PlanArray[0][fujiNum]

    }
    
    func setPlan() {
        //1~6のプランを順番に追加しましょう！一つ目をコピーして内容を書いてください
        //サンプルで「みえる地点、概要、プランサンプル、写真のファイル名」を入れてみています。増やしたい場合は「,(カンマ)」で仕切って増やしてください！
        //\nをかくと、改行ができます。
        
        PlanArray.append(["みえる地点","〇〇は富士山の麓から全て見えるところであり、その大きさは圧巻です。大きく聳え立つ立派な富士山をぜひ感じてみてほしいです！","11:00：到着\n11:00-12:00：散策","画像のファイル名"])
    }
    
}
