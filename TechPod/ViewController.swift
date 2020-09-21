//
//  ViewController.swift
//  TechPod
//
//  Created by tatsuomi kikawa on 2020/09/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    @IBOutlet var table: UITableView!
    
    var songNameArray = [String]()
    var fileNameArray = [String]()
    var imageNameArray = [String]()
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        table.dataSource = self
        
        table.delegate = self
        
        songNameArray = ["カノン", "エリーゼのために", "G線上のアリア"]
        
        fileNameArray = ["cannon", "elise", "aria"]
        
        imageNameArray = ["Panchel.jpg", "Beethoven.jpg", "Bach.jpg"]
    }
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songNameArray.count
    }
    //ID付きのセルを収得して，セル付属のtextlabelに”テスト”と表示させてみる．
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = songNameArray[indexPath.row]
        
        return cell!
    }
    //セルが押された時に呼ばれるデリゲートメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("osaretayo")
        
        //audio再生
        let audiopath = URL(fileURLWithPath: Bundle.main.path(forResource: fileNameArray[indexPath.row], ofType: "mp3")!)
        audioPlayer = try? AVAudioPlayer(contentsOf: audiopath)
        
        audioPlayer.play()
    }
    
    
    
    

}

