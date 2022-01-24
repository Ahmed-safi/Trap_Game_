            //
            //  ViewController.swift
            //  Trap Game
            //
            //  Created by Mac-1 on 11/24/21.
            //

import UIKit

class ViewController: UIViewController {

@IBOutlet weak var avgPlayr2: UILabel!
@IBOutlet weak var avgPlayr1:UILabel!
@IBOutlet weak var inputVal: UITextField!
@IBOutlet weak var endPlay: UILabel!
@IBOutlet weak var startPlay: UILabel!
@IBOutlet weak var rangeValue: UILabel!
//__________________________________________
    var avg:Int = 0
    var rendomNumber:Int =  Int.random(in: 1...100)
    var range:Int = 0
    var player1 = 0
    var player2 = 0
//__________________________________________
        override func viewDidLoad() {
        super.viewDidLoad()
        avgPlayr1.text = "\(player1)"
        avgPlayr2.text = "\(player2)"
        startPlay.text = "1"
        endPlay.text = "100"
        range = rendomNumber
           
        }
//__________________________________________
        @IBAction func moveBtn(_ sender: Any) {
          
        if inputVal.text == "" {
//____________________alert_________________
        let alert = UIAlertController(title: "Input states", message: "The Inputs Empty", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        }
//____________________End alert_________________
        else{

        if range % 2 == 0 {
        rangeValue.text = "Player 2 Turn"

        }else {
        rangeValue.text = "Player 1 Turn"
        }
//__________________________________________
    if range == Int(inputVal.text ?? "0") {
    if  rangeValue.text == "Player 2 Turn" {
//____________________alert_________________
    let alert = UIAlertController(title: "The  Player 2 win", message: "", preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.default, handler: nil))
    self.present(alert, animated: true, completion: nil)
//____________________End alert_________________
    startPlay.text = "1"
    endPlay.text = "100"
    player2 = player2 + 1
    avgPlayr2.text = "\(player2)"

    range = Int.random(in: 1...100)
    inputVal.text?.removeAll()

    }
    else{
//____________________alert_________________
    let alert = UIAlertController(title: "The  Player 1 win", message: "", preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.default, handler: nil))
    self.present(alert, animated: true, completion: nil)
//____________________End alert_________________
    startPlay.text = "1"
    endPlay.text = "100"
    player2 = player2 + 1
    avgPlayr2.text = "\(player2)"

    range = Int.random(in: 1...100)
    inputVal.text?.removeAll()
    }

    }
    else{
    let inputs = Int(inputVal.text ?? "0") ?? 0
    let startnum = Int(startPlay.text ?? "0") ?? 0
    let endnum = Int(endPlay.text ?? "100") ?? 0
    if inputs > startnum && range > inputs{
    startPlay.text = "\(inputs)"

    }
    else if inputs < endnum && range < inputs  {
    endPlay.text = "\(inputs)"
    }
    }
    range = range + 1

    }




    }

    
    }
