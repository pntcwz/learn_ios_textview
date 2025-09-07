//
//  SelectableTextViewController.swift
//  test25090603
//
//  Created by 黃庭璋 on 2025/9/6.
//

import UIKit

class SelectableTextViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "選取文字"
        setupTextView()
    }
    
    private func setupTextView() {
        // 設定文字內容
        let poemText = """
        作者：劉禹錫
        作品：烏衣巷
        
        朱雀橋邊野草花，
        烏衣巷口夕陽斜。
        舊時王謝堂前燕，
        飛入尋常百姓家。
        """
        
        textView.text = poemText
        
        // 啟用文字選取功能
        textView.isSelectable = true
        textView.isUserInteractionEnabled = true
        textView.isEditable = false
        
        // 設定字體和外觀
        textView.font = UIFont.systemFont(ofSize: 18)
        textView.textColor = .label
        textView.backgroundColor = .systemBackground
        
        // 設定文字對齊方式
        textView.textAlignment = .center
        
        // 設定邊距
        textView.textContainerInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        
        // 設定選取時的外觀
        textView.tintColor = .systemBlue
    }
}
