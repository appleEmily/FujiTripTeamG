//
//  ViewController.swift
//  FujiTripTeamG
//
//  Created by Emily Nozaki on 2023/11/28.
//

import UIKit

//どこから富士山を見るのか選択する画面

/*ステップ
 1.富士山の画像をMain.storyboardでセットしていく
 2.UIButtonのタグを0~5までつける
 3.プラン等を表示するためのパーツを配置(RecomendTripViewController)
 4.情報をどんどん追加していく。(RecomendTripViewController)
 5.関連ずけ(RecomendTripViewController)
 */

class ViewController: UIViewController {
    
    //左上だけ関連付けしてあるので、残りも関連付けをする。
    //名前は、"富士山の見える土地の名前"にするといいと思います。
    //fujiAも書き換えましょう！ (書き換え方法伝えますので聞いてください☺️)
    
    @IBOutlet weak var fujiA: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goRecomendVC(sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let recomendVC = storyboard.instantiateViewController(withIdentifier: "RecomendTripViewController") as? RecomendTripViewController {
            
            //どのボタンからタップされたのか、の情報を渡す。
            recomendVC.fujiNum = sender.tag
            
            //画面遷移をする
            navigationController?.pushViewController(recomendVC, animated: true)
        
        }
        
    }
    
    
    
    
    
}

