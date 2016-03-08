//
//  ViewController.swift
//  multiples_app
//
//  Created by Mike Piatin on 3/03/2016.
//  Copyright © 2016 Aurora Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var multiplesLogoTxt: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var multipleBoxTxt: UITextField!
    @IBOutlet weak var pressAddToAddLbl: UILabel!
    
    @IBOutlet weak var outcomeLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    //properties
    var maxRepetitions = 10
    var multipleNum = 0
    var multipleSum = 0
    
    var currentClicks = 0
    var numFirst = 0
    
    @IBAction func onPlayBtn(sender: UIButton) {
        
        if multipleBoxTxt.text != nil && multipleBoxTxt.text != "" {
        multiplesLogoTxt.hidden = true
        playBtn.hidden = true
        multipleBoxTxt.hidden = true
        
        pressAddToAddLbl.hidden = false
        outcomeLbl.hidden = false
        addBtn.hidden = false
            
            multipleNum = Int(multipleBoxTxt.text!)!
            updateOutcomeLbl()
        }
        
    }
    
    @IBAction func onAddBtn(sender: UIButton) {

        currentClicks+=1
        
        if isGameOver() {
            restartGame()
            
        } else {
        
            updateOutcomeLbl()
        
    }
    }
    
    func updateOutcomeLbl() {
        
        numFirst = currentClicks * multipleNum
        multipleSum = numFirst + multipleNum
        
        outcomeLbl.text = "\(numFirst) + \(multipleNum) = \(multipleSum)"
        
    }
    

    
    func restartGame() {
        
        multipleBoxTxt.text = ""
        outcomeLbl.text = ""
        
        numFirst = 0
       multipleNum = 0
    //   multipleSum = 0
       currentClicks = 0
        
        
        multiplesLogoTxt.hidden = false
        playBtn.hidden = false
        multipleBoxTxt.hidden = false
        
        pressAddToAddLbl.hidden = true
        outcomeLbl.hidden = true
        addBtn.hidden = true
    }
    
    
    func isGameOver () -> Bool {
        if currentClicks >= maxRepetitions {
            return true
        } else {
            return false
        }

}
}
