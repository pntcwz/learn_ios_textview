//
//  WebLinksViewController.swift
//  test25090603
//
//  Created by 黃庭璋 on 2025/9/6.
//

import UIKit

class WebLinksViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "網址連結"
        setupTextView()
    }
    
    private func setupTextView() {
        // 建立帶有網址的文字內容
        let linksText = """
        點擊下方連結開啟外部瀏覽器：
        
        Apple 官方網站
        https://www.apple.com
        
        Google 搜尋引擎
        https://www.google.com
        
        Yahoo 入口網站
        https://www.yahoo.com
        """
        
        textView.text = linksText
        
        // 啟用連結檢測 - 網址
        textView.dataDetectorTypes = .link
        textView.isSelectable = true
        textView.isEditable = false
        textView.isUserInteractionEnabled = true
        
        // 設定字體和外觀
        textView.font = UIFont.systemFont(ofSize: 16)
        textView.textColor = .label
        textView.backgroundColor = .systemBackground
        
        // 設定文字對齊
        textView.textAlignment = .left
        
        // 設定邊距
        textView.textContainerInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        
        // 設定連結樣式
        textView.linkTextAttributes = [
            .foregroundColor: UIColor.systemBlue,
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
    }
}
