//
//  ElectronicViewController.swift
//  MusicApp
//
//  Created by HEWA DEWAGE DIHAN UDARA SANDARUWAN on 25/09/2562 BE.
//  Copyright © 2562 HEWA DEWAGE DIHAN UDARA SANDARUWAN. All rights reserved.
//

import UIKit
import AVFoundation

class ElectronicViewController: UIViewController {
    
    var musicalEffect : AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let musicFile = Bundle.main.path (forResource: "electronic", ofType: ".mp3")
        
        do {
            
            try musicalEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile! ))
        }
        catch{
            print(error)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func Playmusic(_ sender: UIButton) {
        musicalEffect.play()
    }
    @IBAction func StopMusic(_ sender: UIButton) {
        musicalEffect.stop()
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
