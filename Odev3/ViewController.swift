//
//  ViewController.swift
//  Odev3
//
//  Created by Ahsen Bahtışen on 28.09.2022.
//

import UIKit
import Lottie



class ViewController: UIViewController {

    @IBOutlet weak var animationView: AnimationView!
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       lottieAnimation()
        textLabel.font = UIFont(name: "Kanit-Regular", size: 32)
        
        
        
    }

    func lottieAnimation(){

        let width = view.frame.size.width  // ekranın genişliğini aldık
        let height = view.frame.size.height
       let animationview = AnimationView(name: "lf30_editor_di40tmqw")
        animationview.frame = CGRect(x: width * 0.5 - 150, y: height * 0.5 - 240 , width: 300, height: 300)
        //animationview.center = self.view.center
        animationview.contentMode = .scaleAspectFit
        view.addSubview(animationview)
        animationview.play()
        animationview.loopMode = .loop
    }

}

