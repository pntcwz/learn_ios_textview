//
//  PhoneNumberViewController.swift
//  test25090603
//
//  Created by 黃庭璋 on 2025/9/6.
//

import UIKit

class PhoneNumberViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "電話號碼"
        setupTextView()
    }
    
    private func setupTextView() {
        // 設定包含電話號碼的文字內容
        let phoneText = """
        點擊下方電話號碼撥打電話：
        
        銀行客服專線
        
        國泰世華銀行
        客服專線：0800-818-008
        
        中國信託銀行
        客服專線：0800-001-234
        
        玉山銀行
        客服專線：02-2182-1313
        """
        
        textView.text = phoneText
        
        // 啟用連結檢測 - 電話號碼
        textView.dataDetectorTypes = .phoneNumber
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
        
        // 設定電話號碼連結樣式
        textView.linkTextAttributes = [
            .foregroundColor: UIColor.systemGreen,
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
    }
}
