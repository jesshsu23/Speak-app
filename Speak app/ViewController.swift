//
//  ViewController.swift
//  Speak app
//
//  Created by Jess Hsu on 2021/8/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

   //輸入文字
    @IBOutlet weak var TextField: UITextField!
    
    //聲音

    @IBOutlet weak var volumeSlider: UISlider!
    
    
    @IBOutlet weak var rateSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //女朋友
    func girlfriend(language: String){
            let speechUtterance =  AVSpeechUtterance(string: TextField.text!)
            speechUtterance.voice = AVSpeechSynthesisVoice(language: language)
            let synthesizer = AVSpeechSynthesizer()
        speechUtterance.rate = rateSlider.value
                        speechUtterance.volume = volumeSlider.value
        synthesizer.speak(speechUtterance)
        }

    @IBAction func AmericanGirlfriend(_ sender: Any) {
        girlfriend(language:"en-US" )
    }
    
    @IBAction func JapanGirlfriend(_ sender: Any) {
        girlfriend(language:"ja-JP" )
    }
    
    @IBAction func TaiwanGrilfriend(_ sender: Any){ girlfriend(language:"zh-TW" )
    }
    
   
  
    
}

