//
//  ViewController.swift
//  kooci
//
//  Created by Ute Schiehlen on 22.04.17.
//  Copyright © 2017 Ute Schiehlen. All rights reserved.
//

import UIKit
import TextToSpeechV1
import AVFoundation

class ViewController: UIViewController {
    
    // the audio player
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let username = "b39e1e6a-f4cd-46ec-8236-e90680c0d23b"
        let password = "JGsVO86XLDsW"
        let textToSpeech = TextToSpeech(username: username, password: password)
        
        let text = "Hello, I'm kuki!"
        
        textToSpeech.synthesize(text, voice: SynthesisVoice.us_Allison.rawValue , success: { data in
            do {
                self.audioPlayer = try AVAudioPlayer(data: data)
                self.audioPlayer.play()
            } catch let error {
                print("error \(error) playing audio file")
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

