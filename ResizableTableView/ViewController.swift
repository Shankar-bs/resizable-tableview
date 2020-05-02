//
//  ViewController.swift
//  ResizableTableView
//
//  Created by Shankar B S on 30/03/20.
//  Copyright © 2020 Slicode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var tableView: UITableView!
    let cellResueId = "CustomCell"
    
    //1
    var dataSourceArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //this is optional by default row height is automatic Dimension
        tableView.rowHeight = UITableView.automaticDimension
        
        //2. register cell
        tableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: cellResueId)
    }
    
    //3
    @IBAction func insertButtonAction(_ sender: Any) {
        if textView.isFirstResponder {
            textView.resignFirstResponder()
        }
        if let text = textView.text, text.count > 0 {
            dataSourceArray.insert(text, at: 0)
            tableView.reloadData()
        }
        textView.text = ""
    }
}

//4
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourceArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellResueId) as? CustomCell else { return UITableViewCell() }
        cell.updateCellWith(text: dataSourceArray[indexPath.row])
        return cell
    }
}



