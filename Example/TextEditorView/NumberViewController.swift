//
//  NumberViewController.swift
//  TextEditorView_Example
//
//  Created by Sven on 2021/3/3.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import TextEditorView
import UIKit

class NumberViewController: UIViewController {
    var textEditorView = TextEditorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        setupTextEditor()
        setupLayout()
    }
    
    private func setupTextEditor() {
        textEditorView.placeholder = "请输入文本内容"
        textEditorView.placeholderFont = UIFont.systemFont(ofSize: 15)
        textEditorView.placeholderTextColor = UIColor.gray
        textEditorView.placeholderNumberOfLines = 1 // 最大行数， 会影响初始 textView 高度
        let maxCount = 100
        textEditorView.maxTextCount = UInt(maxCount)
        textEditorView.isHiddenTextCountLabel = false
        textEditorView.textCountChanged = {
            numberLabel, count in
            // 修改 Lable 样式
            numberLabel.font = UIFont.systemFont(ofSize: 11)
            numberLabel.textColor = UIColor.orange
            numberLabel.text = "您还可以输入\(maxCount - count)字"
        }
    }
    
    private func setupLayout() {
        view.addSubview(textEditorView)
        textEditorView.translatesAutoresizingMaskIntoConstraints = false
        textEditorView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        textEditorView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        textEditorView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
    }
}
