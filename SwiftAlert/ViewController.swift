//
//  ViewController.swift
//  SwiftAlert
//
//  Created by Motoki Onayama on 2021/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionAlert(_ sender: UIButton) {
        
        makeAlert(title: "タイトル", message: "メッセージ")
        
    }
    
}

extension UIViewController {
    
    func makeAlert(title: String, message: String) {
    // ① UIAlertControllerクラスのインスタンスを生成
    let alert: UIAlertController = UIAlertController(title: title, message: message, preferredStyle:  UIAlertController.Style.alert)

    // ② Actionの設定
    let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{
            // ボタンが押された時の処理を書く（クロージャ実装）
            (action: UIAlertAction!) -> Void in
            print("OK")
        })
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "キャンセル", style: UIAlertAction.Style.cancel, handler:{
            // ボタンが押された時の処理を書く（クロージャ実装）
            (action: UIAlertAction!) -> Void in
            print("Cancel")
        })

        // ③ UIAlertControllerにActionを追加
        alert.addAction(cancelAction)
        alert.addAction(defaultAction)

        // ④ Alertを表示
        self.present(alert, animated: true, completion: nil)
    }
}
