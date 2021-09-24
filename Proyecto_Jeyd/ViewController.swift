//
//  ViewController.swift
//  Proyecto_Jeyd
//
//  Created by David Encinas on 23/09/21.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    var playerFondo = AVAudioPlayer()
    var playerAnimal = AVAudioPlayer()

    let urlFondo = Bundle.main.url(forResource: "granja", withExtension: "mp3")
    let urlPollo = Bundle.main.url(forResource: "pollito", withExtension: "mp3")
    let urlAbeja = Bundle.main.url(forResource: "abeja", withExtension: "mp3")
    let urlVaca = Bundle.main.url(forResource: "vaca", withExtension: "mp3")

    
       
    let urlPollo_voz = Bundle.main.url(forResource: "pollo_voz", withExtension: "mp3")
    let urlAbeja_voz = Bundle.main.url(forResource: "abeja_voz", withExtension: "mp3")
    let urlVaca_voz = Bundle.main.url(forResource: "vaca_voz", withExtension: "mp3")


    let secuencePollo1 = [
         UIImage(named: "pollo1.1")!,
            UIImage(named: "pollo1.2")!,
            UIImage(named: "pollo1.3")!,
            UIImage(named: "pollo1.4")!,
            UIImage(named: "pollo1.5")!
    ]

    let secuencePollo2 = [
         UIImage(named: "pollo2.1")!,
            UIImage(named: "pollo2.2")!,
            UIImage(named: "pollo2.3")!,
            UIImage(named: "pollo2.4")!,
            UIImage(named: "pollo2.5")!
    ]


    let secuenceVaca1 = [
         UIImage(named: "vaca1.1")!,
            UIImage(named: "vaca1.2")!,
            UIImage(named: "vaca1.3")!,
            UIImage(named: "vaca1.4")!,
            UIImage(named: "vaca1.5")!
    ]


    let secuenceVaca2 = [
         UIImage(named: "vaca2.1")!,
            UIImage(named: "vaca2.2")!,
            UIImage(named: "vaca2.3")!,
            UIImage(named: "vaca2.4")!,
            UIImage(named: "vaca2.5")!
    ]



    let secuenceAbeja1 = [
         UIImage(named: "abeja1.1")!,
            UIImage(named: "abeja1.2")!,
            UIImage(named: "abeja1.3")!,
            UIImage(named: "abeja1.4")!,
            UIImage(named: "abeja1.5")!
    ]


    let secuenceAbeja2 = [
         UIImage(named: "abeja2.1")!,
            UIImage(named: "abeja2.2")!,
            UIImage(named: "abeja2.3")!,
            UIImage(named: "abeja2.4")!,
            UIImage(named: "abeja2.5")!
    ]



    
    
    
    
    @IBOutlet weak var lblAnimal: UILabel!
    
    @IBOutlet weak var imgVaca: UIImageView!
    
    @IBOutlet weak var imgAbeja: UIImageView!
    
    
    @IBOutlet weak var imgPollo: UIImageView!
    
    @IBOutlet weak var imgAnimales: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        do{
                    try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                    try AVAudioSession.sharedInstance().setActive(true)
                    playerFondo = try AVAudioPlayer(contentsOf: urlFondo!, fileTypeHint: AVFileType.mp3.rawValue)
                    playerFondo.numberOfLoops = -1
                    playerFondo.volume = 0.2
                    playerFondo.play()
                } catch let error {
                    print(error.localizedDescription)
                }
        
        
        //viewImage de pollo
            imgPollo.animationImages = secuencePollo1
                imgPollo.animationDuration = 1
                imgPollo.startAnimating()


            //viewImage de vaca
            imgVaca.animationImages = secuenceVaca1
                imgVaca.animationDuration = 1
                imgVaca.startAnimating()


            //viewImage de Abeja
            imgAbeja.animationImages = secuenceAbeja1
                imgAbeja.animationDuration = 1
                imgAbeja.startAnimating()

    }

  
    
    @IBAction func doTapVaca(_ sender: Any) {
        imgAnimales.animationImages = secuenceVaca2
                imgAnimales.animationDuration = 1
                imgAnimales.startAnimating()

            lblAnimal.text = "Cow"

             do{
                    playerAnimal = try AVAudioPlayer(contentsOf: urlVaca!, fileTypeHint: AVFileType.mp3.rawValue)
                    playerAnimal.play()
                } catch let error {
                    print(error.localizedDescription)
                }

             do{
                    playerAnimal = try AVAudioPlayer(contentsOf: urlVaca_voz!, fileTypeHint: AVFileType.mp3.rawValue)
                    playerAnimal.play()
                } catch let error {
                    print(error.localizedDescription)
                }
        
    }
    
    
    
    
    
    @IBAction func doTapPollo(_ sender: Any) {
        imgAnimales.animationImages = secuencePollo2
                imgAnimales.animationDuration = 1
                imgAnimales.startAnimating()
            
            lblAnimal.text = "Chicken"
            
             do{
                    playerAnimal = try AVAudioPlayer(contentsOf: urlPollo!, fileTypeHint: AVFileType.mp3.rawValue)
                    playerAnimal.play()
                } catch let error {
                    print(error.localizedDescription)
                }
            
             do{
                    playerAnimal = try AVAudioPlayer(contentsOf: urlPollo_voz!, fileTypeHint: AVFileType.mp3.rawValue)
                    playerAnimal.play()
                } catch let error {
                    print(error.localizedDescription)
                }

    }
    
    
    
    @IBAction func doTapAbeja(_ sender: Any) {
        imgAnimales.animationImages = secuenceAbeja2
                imgAnimales.animationDuration = 1
                imgAnimales.startAnimating()
            
            lblAnimal.text = "Bee"

            //Sonido de abeja
             do{
                    playerAnimal = try AVAudioPlayer(contentsOf: urlAbeja!, fileTypeHint: AVFileType.mp3.rawValue)
                    playerAnimal.play()
                } catch let error {
                    print(error.localizedDescription)
                }

            //sonido de voz

             do{
                    playerAnimal = try AVAudioPlayer(contentsOf: urlAbeja_voz!, fileTypeHint: AVFileType.mp3.rawValue)
                    playerAnimal.play()
                } catch let error {
                    print(error.localizedDescription)
                }

    }
    
    
    
}

