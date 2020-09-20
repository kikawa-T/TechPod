//
//  ViewController.swift
//  TechPod
//
//  Created by tatsuomi kikawa on 2020/09/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    
    
    @IBOutlet var table: UITableView!
    
    var songNameArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        table.dataSource = self
    }
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    //ID付きのセルを収得して，セル付属のtextlabelに”テスト”と表示させてみる．
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = "テスト"
        
        return cell!
    }
    
    
    
    

}

