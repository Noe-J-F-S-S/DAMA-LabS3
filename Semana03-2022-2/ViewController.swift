//
//  ViewController.swift
//  Semana03-2022-2
//
//  Created by Mac41 on 9/09/22.
//

import UIKit

class ViewController: UIViewController {

    /// in¿stanciamos a auto
    let auto: Auto = Auto()
    
    /// vamos a referenciar los labels de la vista
    
    @IBOutlet weak var lblBrand: UILabel!
    @IBOutlet weak var lblModel: UILabel!
    @IBOutlet weak var lblColor: UILabel!
    @IBOutlet weak var lblSpeed: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // recordemos que esta fi¿uncion se ejecuta cuando la pantalla inicia
        setUpLabel(auto: auto)
        
    }
    
    ///los actions y func siempre van despues de viewDiload
    
    @IBAction func onTapNewCar(_ sender: UIButton) {
        auto.brand = "Nissan"
        auto.model = "Frontier"
        auto.color = " Rojo"
        auto.speed = 50.3
        setUpLabel(auto:    auto)
    }
    
    @IBAction func onTapAcelerate(_ sender: UIButton) {
        let newSpeed = Float.random(in: 1...100)
        auto.move(moreSpeed: newSpeed)
        if auto.speed > 160{
            auto.stop()
        }
        setUpLabel(auto: auto)
    }
    
    @IBAction func onTapStop(_ sender: UIButton) {
        auto.stop()
        setUpLabel(auto: auto)
    }
    
    @IBAction func onTapSlowDown(_ sender: UIButton) {
        let newSpeed = Float.random(in: 1...100)
        auto.slowDown(lessSpeed: newSpeed)
        setUpLabel(auto: auto)
    }
    
    func setUpLabel(auto:Auto){
        lblBrand.text = auto.brand
        lblColor.text = auto.color
        lblModel.text = auto.model
        lblSpeed.text = String(auto.speed)
    }
    
}

