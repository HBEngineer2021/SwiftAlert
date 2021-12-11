//
//  Alert.swift
//  SwiftAlert
//
//  Created by Motoki Onayama on 2021/12/12.
//

import Foundation
import UIKit



class Alert {
    
    static var shared = Alert()
    
    /// 成功時に発生するアラート
    /// - Parameters:
    ///   - title: タイトル
    ///   - message: メッセージ
    /// - Returns: 設定した定数alertを返す
    func success(title: String, message: String) -> UIAlertController {
        
        /// アラートの設定
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        /// ボタンの設定
        let close = UIAlertAction(title: "閉じる", style: .cancel, handler: nil)
        alert.addAction(close)
        
        return alert
    }
    
    /// 失敗時に発生するアラート
    /// - Parameters:
    ///   - title: タイトル
    ///   - message: メッセージ
    ///   - handler: 処理させたいコードを書く
    /// - Returns: 設定した定数alertを返す
    func failure(title: String, message: String, handler: ((UIAlertAction) -> Void)?) -> UIAlertController {
        
        /// アラートの設定
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        /// リトライボタン
        let retry = UIAlertAction(title: "もう一度", style: .default, handler: handler)
        
        /// 閉じるボタン
        let close = UIAlertAction(title: "閉じる", style: .cancel, handler: nil)
        
        alert.addAction(retry)
        alert.addAction(close)
        
        return alert
    }
}
