//
//  AddressMapViewController.swift
//  test25090603
//
//  Created by 黃庭璋 on 2025/9/6.
//

import UIKit
import MapKit

class AddressMapViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "地址地圖"
        setupTextView()
    }
    
    private func setupTextView() {
        // 設定地址文字內容
        let addressText = """
        點擊下方地址開啟地圖：
        
        台北101
        台北市信義區信義路五段7號
        
        國立故宮博物院
        台北市士林區至善路二段221號
        
        中正紀念堂
        台北市中正區中山南路21號
        """
        
        textView.text = addressText
        
        // 啟用連結檢測 - 地址
        textView.dataDetectorTypes = .address
        textView.isSelectable = true
        textView.isEditable = false
        textView.isUserInteractionEnabled = true
        
        // 設定字體和外觀
        textView.font = UIFont.systemFont(ofSize: 16)
        textView.textColor = .label
        textView.backgroundColor = .systemBackground
        
        // 設定邊距
        textView.textContainerInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        
        // 設定連結顏色
        textView.linkTextAttributes = [
            .foregroundColor: UIColor.systemBlue,
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
    }
}
