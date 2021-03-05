//
//  NumberViewController.swift
//  TextEditorView_Example
//
//  Created by Sven on 2021/3/3.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import TextEditorView

class NumberViewController: UIViewController {
    var textEditroView = TextEditorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        setupTextEditor()
        setupLayout()
    }
    
    private func setupTextEditor() {
        textEditroView.placeholder = "请输入文本内容"
        textEditroView.placeholderFont = UIFont.systemFont(ofSize: 15)
        textEditroView.placeholderTextColor = UIColor.gray
        textEditroView.placeholderNumberOfLines = 1 // 最大行数， 会影响初始 textView 高度
        let maxCount = 100
        textEditroView.maxTextCount = UInt(maxCount)
        textEditroView.isHiddenTextCountLabel = false
        textEditroView.textCountChanged = {
            numberLabel, count in
            // 修改 Lable 样式
            numberLabel.font = UIFont.systemFont(ofSize: 11)
            numberLabel.textColor = UIColor.orange
            numberLabel.text = "您还可以输入\(maxCount-count)字"
        }
    }
    
    private func setupLayout() {
        view.addSubview(textEditroView)
        textEditroView.translatesAutoresizingMaskIntoConstraints = false
        textEditroView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        textEditroView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        textEditroView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
    }
    
    
}
