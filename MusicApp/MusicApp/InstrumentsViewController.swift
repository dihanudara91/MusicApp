//
//  InstrumentsViewController.swift
//  MusicApp
//
//  Created by HEWA DEWAGE DIHAN UDARA SANDARUWAN on 25/09/2562 BE.
//  Copyright © 2562 HEWA DEWAGE DIHAN UDARA SANDARUWAN. All rights reserved.
//

import UIKit
import AVFoundation

class InstrumentsViewController: UIViewController {

    var audioPlayer : AVAudioPlayer?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }

        @IBAction func buttonPressed(_ sender: UIButton) {
        
            
            
            let soundList = ["Sound0", "Sound1", "Sound2", "Sound3", "Sound4", "Sound5", "Sound6"]
            var soundName = ""
            
            if sender.tag < soundList.count && sender.tag >= 0 {
                soundName = soundList[sender.tag]
            }
            
            
            
            if let soundResource = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
                do {
                    
                    audioPlayer = try AVAudioPlayer(contentsOf: soundResource)
                    
                    
                    audioPlayer?.play()
                } catch  {
                    
                    print(error)
                }
            }
        }

    }

