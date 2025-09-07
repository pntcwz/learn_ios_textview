//
//  ViewController.swift
//  test25090603
//
//  Created by 黃庭璋 on 2025/9/6.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "TextView 教學示範"
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        // 設定導航列樣式
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

