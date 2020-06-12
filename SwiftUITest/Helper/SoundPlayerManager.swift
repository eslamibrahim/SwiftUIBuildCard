//
//  SoundPlayerManager.swift
//  SwiftUITest
//
//  Created by islam on 6/9/20.
//  Copyright © 2020 islam. All rights reserved.
//

import AVFoundation
import Foundation

class SoundPlayerManager {
    
    var soundPlayer : AVAudioPlayer? = nil
    func playSound(name : String , type : String)  {
        if let path = Bundle.main.path(forResource: name, ofType: type){
            do {
                soundPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                soundPlayer?.play()
            }catch{
                print("error")
            }
        }
    }
}
