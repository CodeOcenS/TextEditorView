//
//  PlaceholderViewController.swift
//  TextEditorView_Example
//
//  Created by Sven on 2021/3/3.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import TextEditorView
import UIKit

class PlaceholderViewController: UIViewController {
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
    }
    
    private func setupLayout() {
        view.addSubview(textEditorView)
        textEditorView.translatesAutoresizingMaskIntoConstraints = false
        textEditorView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        textEditorView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        textEditorView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
    }
}
