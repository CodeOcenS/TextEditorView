//
//  ViewController.swift
//  TextEditorView
//
//  Created by CodeOcenS on 03/03/2021.
//  Copyright (c) 2021 CodeOcenS. All rights reserved.
//

import UIKit
import TextEditorView

class ViewController: UIViewController {
    var datasource: [String] = ["placeholder 设置", "自动扩展", "字数统计" ]
    @IBOutlet private weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "TextEditorView 功能 Demo"
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return datasource.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        cell.textLabel?.text = datasource[indexPath.section]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var vc = UIViewController()
        switch indexPath.section {
        case 0:
            vc = PlaceholderViewController()
            
        case 1:
            vc = AutoViewController()
           
        case 2:
            vc = NumberViewController()
        default:
            return
        }
        vc.title = datasource[indexPath.section]
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

