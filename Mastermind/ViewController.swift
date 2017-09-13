//
//  ViewController.swift
//  Mastermind
//
//  Created by Chester Lam on 8/27/16.
//  Copyright © 2016 Chester Lam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var A1: UIButton!
    @IBOutlet weak var A2: UIButton!
    @IBOutlet weak var A3: UIButton!
    @IBOutlet weak var A4: UIButton!
    @IBOutlet weak var B1: UIButton!
    @IBOutlet weak var B2: UIButton!
    @IBOutlet weak var B3: UIButton!
    @IBOutlet weak var B4: UIButton!
    @IBOutlet weak var C1: UIButton!
    @IBOutlet weak var C2: UIButton!
    @IBOutlet weak var C3: UIButton!
    @IBOutlet weak var C4: UIButton!
    @IBOutlet weak var D1: UIButton!
    @IBOutlet weak var D2: UIButton!
    @IBOutlet weak var D3: UIButton!
    @IBOutlet weak var D4: UIButton!
    @IBOutlet weak var E1: UIButton!
    @IBOutlet weak var E2: UIButton!
    @IBOutlet weak var E3: UIButton!
    @IBOutlet weak var E4: UIButton!
    @IBOutlet weak var F1: UIButton!
    @IBOutlet weak var F2: UIButton!
    @IBOutlet weak var F3: UIButton!
    @IBOutlet weak var F4: UIButton!
    @IBOutlet weak var G1: UIButton!
    @IBOutlet weak var G2: UIButton!
    @IBOutlet weak var G3: UIButton!
    @IBOutlet weak var G4: UIButton!
    @IBOutlet weak var H1: UIButton!
    @IBOutlet weak var H2: UIButton!
    @IBOutlet weak var H3: UIButton!
    @IBOutlet weak var H4: UIButton!
    @IBOutlet weak var I1: UIButton!
    @IBOutlet weak var I2: UIButton!
    @IBOutlet weak var I3: UIButton!
    @IBOutlet weak var I4: UIButton!
    
    @IBOutlet weak var hidden1: UIButton!
    @IBOutlet weak var hidden2: UIButton!
    @IBOutlet weak var hidden3: UIButton!
    @IBOutlet weak var hidden4: UIButton!
    
    @IBOutlet weak var Abox: UIButton!
    @IBOutlet weak var Bbox: UIButton!
    @IBOutlet weak var Cbox: UIButton!
    @IBOutlet weak var Dbox: UIButton!
    @IBOutlet weak var Ebox: UIButton!
    @IBOutlet weak var Fbox: UIButton!
    @IBOutlet weak var Gbox: UIButton!
    @IBOutlet weak var Hbox: UIButton!
    
    @IBOutlet weak var hintA1: UIButton!
    @IBOutlet weak var hintA2: UIButton!
    @IBOutlet weak var hintA3: UIButton!
    @IBOutlet weak var hintA4: UIButton!
    @IBOutlet weak var hintB1: UIButton!
    @IBOutlet weak var hintB2: UIButton!
    @IBOutlet weak var hintB3: UIButton!
    @IBOutlet weak var hintB4: UIButton!
    @IBOutlet weak var hintC1: UIButton!
    @IBOutlet weak var hintC2: UIButton!
    @IBOutlet weak var hintC3: UIButton!
    @IBOutlet weak var hintC4: UIButton!
    @IBOutlet weak var hintD1: UIButton!
    @IBOutlet weak var hintD2: UIButton!
    @IBOutlet weak var hintD3: UIButton!
    @IBOutlet weak var hintD4: UIButton!
    @IBOutlet weak var hintE1: UIButton!
    @IBOutlet weak var hintE2: UIButton!
    @IBOutlet weak var hintE3: UIButton!
    @IBOutlet weak var hintE4: UIButton!
    @IBOutlet weak var hintF1: UIButton!
    @IBOutlet weak var hintF2: UIButton!
    @IBOutlet weak var hintF3: UIButton!
    @IBOutlet weak var hintF4: UIButton!
    @IBOutlet weak var hintG1: UIButton!
    @IBOutlet weak var hintG2: UIButton!
    @IBOutlet weak var hintG3: UIButton!
    @IBOutlet weak var hintG4: UIButton!
    @IBOutlet weak var hintH1: UIButton!
    @IBOutlet weak var hintH2: UIButton!
    @IBOutlet weak var hintH3: UIButton!
    @IBOutlet weak var hintH4: UIButton!
    
    @IBOutlet weak var red: UIButton!
    @IBOutlet weak var blue: UIButton!
    @IBOutlet weak var yellow: UIButton!
    @IBOutlet weak var green: UIButton!
    @IBOutlet weak var purple: UIButton!
    @IBOutlet weak var orange: UIButton!
    
    @IBOutlet weak var optionsBackground: UILabel!
    @IBOutlet weak var titleScreenButton: UIButton!
    @IBOutlet weak var newGameButton: UIButton!
    @IBOutlet weak var resumeGameButton: UIButton!
    
    var redSelected = false
    var blueSelected = false
    var yellowSelected = false
    var greenSelected = false
    var purpleSelected = false
    var orangeSelected = false
    
    var colorSelected = "red"
    
    let colors = ["red", "blue", "yellow", "green", "purple", "orange"]
    
    var toPass1: String!
    var toPass2: String!
    var toPass3: String!
    var toPass4: String!
    var toPass5: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        red(red)
        
        let cells: [UIButton] = [A1, A2, A3, A4, B1, B2, B3, B4, C1, C2, C3, C4, D1, D2, D3, D4, E1, E2, E3, E4, F1, F2, F3, F4, G1, G2, G3, G4, H1, H2, H3, H4, I1, I2, I3, I4]
        
        let hints: [UIButton] = [hintA1, hintA2, hintA3, hintA4, hintB1, hintB2, hintB3, hintB4, hintC1, hintC2, hintC3, hintC4, hintD1, hintD2, hintD3, hintD4, hintE1, hintE2, hintE3, hintE4, hintF1, hintF2, hintF3, hintF4, hintG1, hintG2, hintG3, hintG4, hintH1, hintH2, hintH3, hintH4]
        
        // set cells to default values
        for cell in 0...(cells.count - 1) {
            cells[cell].backgroundColor = UIColor.darkGray
            if cell > 3 && cell < (cells.count - 4) {
                cells[cell].alpha = 0.3
                cells[cell].isEnabled = false
            } else {
                cells[cell].alpha = 1.0
                cells[cell].isEnabled = true
            }
        }
        
        // set hints to default values
        for hint in 0...(hints.count - 1) {
            hints[hint].backgroundColor = UIColor.red
            hints[hint].alpha = 0.0
        }
        
        // hide code
        hidden1.alpha = 1.0
        hidden2.alpha = 1.0
        hidden3.alpha = 1.0
        hidden4.alpha = 1.0
        
        // generate random colors
        let firstRandomNumber = Int(arc4random_uniform(6))
        let firstColor = colors[firstRandomNumber]
        let secondRandomNumber = Int(arc4random_uniform(6))
        let secondColor = colors[secondRandomNumber]
        let thirdRandomNumber = Int(arc4random_uniform(6))
        let thirdColor = colors[thirdRandomNumber]
        let fourthRandomNumber = Int(arc4random_uniform(6))
        let fourthColor = colors[fourthRandomNumber]
        
        // create sequence
        setColor(I1, color: firstColor)
        setColor(I2, color: secondColor)
        setColor(I3, color: thirdColor)
        setColor(I4, color: fourthColor)
        
        // overwrite sequence if needed
        if toPass5 != nil {
            setColor(I1, color: toPass1)
            setColor(I2, color: toPass2)
            setColor(I3, color: toPass3)
            setColor(I4, color: toPass4)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func runAfterDelay(_ delay: TimeInterval, block: @escaping ()->()) {
        let time = DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: time, execute: block)
    }

    // highlight selected color button
    func selectColor(_ selectedColor: UIButton) {
        red.layer.borderColor = UIColor.clear.cgColor
        blue.layer.borderColor = UIColor.clear.cgColor
        yellow.layer.borderColor = UIColor.clear.cgColor
        green.layer.borderColor = UIColor.clear.cgColor
        purple.layer.borderColor = UIColor.clear.cgColor
        orange.layer.borderColor = UIColor.clear.cgColor
        
        selectedColor.layer.borderColor = UIColor.black.cgColor
        selectedColor.layer.borderWidth = 3
    }
    
    // select colors
    @IBAction func red(_ sender: UIButton) {
        colorSelected = "red"
        red.alpha = 1.0
        blue.alpha = 0.25
        yellow.alpha = 0.25
        green.alpha = 0.25
        purple.alpha = 0.25
        orange.alpha = 0.25
        selectColor(sender)
    }
   
    @IBAction func blue(_ sender: UIButton) {
        colorSelected = "blue"
        red.alpha = 0.25
        blue.alpha = 1.0
        yellow.alpha = 0.25
        green.alpha = 0.25
        purple.alpha = 0.25
        orange.alpha = 0.25
        selectColor(sender)
    }
    
    @IBAction func yellow(_ sender: UIButton) {
        colorSelected = "yellow"
        red.alpha = 0.25
        blue.alpha = 0.25
        yellow.alpha = 1.0
        green.alpha = 0.25
        purple.alpha = 0.25
        orange.alpha = 0.25
        selectColor(sender)
    }
    
    @IBAction func green(_ sender: UIButton) {
        colorSelected = "green"
        red.alpha = 0.25
        blue.alpha = 0.25
        yellow.alpha = 0.25
        green.alpha = 1.0
        purple.alpha = 0.25
        orange.alpha = 0.25
        selectColor(sender)
    }
    
    @IBAction func purple(_ sender: UIButton) {
        colorSelected = "purple"
        red.alpha = 0.25
        blue.alpha = 0.25
        yellow.alpha = 0.25
        green.alpha = 0.25
        purple.alpha = 1.0
        orange.alpha = 0.25
        selectColor(sender)
    }
    
    @IBAction func orange(_ sender: UIButton) {
        colorSelected = "orange"
        red.alpha = 0.25
        blue.alpha = 0.25
        yellow.alpha = 0.25
        green.alpha = 0.25
        purple.alpha = 0.25
        orange.alpha = 1.0
        selectColor(sender)
    }
    
    // set color
    func setColor(_ button: UIButton, color: String) {
        switch color {
        case "red":
            button.backgroundColor = UIColor.red
        case "blue":
            button.backgroundColor = UIColor.blue
        case "yellow":
            button.backgroundColor = UIColor.yellow
        case "green":
            button.backgroundColor = UIColor.green
        case "purple":
            button.backgroundColor = UIColor.purple
        case "orange":
            button.backgroundColor = UIColor.orange
        default:
            break
        }
    }
    
    // show correct sequence
    func reveal() {
        runAfterDelay(0.5) {
            self.hidden1.alpha = 0.0
        }
        runAfterDelay(1.0) {
            self.hidden2.alpha = 0.0
        }
        runAfterDelay(1.5) {
            self.hidden3.alpha = 0.0
        }
        runAfterDelay(2.0) {
            self.hidden4.alpha = 0.0
        }
        runAfterDelay(2.5) {
            self.optionsBackground.alpha = 0.75
        }
        runAfterDelay(4.5) {
            self.titleScreenButton.alpha = 1.0
            self.newGameButton.alpha = 1.0
            //self.optionsBackground.text = " "
        }
    }
    
    // check submitted sequence and produce hints
    func checkRow (_ firstCell: UIButton, secondCell: UIButton, thirdCell: UIButton, fourthCell:UIButton, firstHint: UIButton, secondHint: UIButton, thirdHint: UIButton, fourthHint: UIButton, firstNext: UIButton, secondNext: UIButton, thirdNext: UIButton, fourthNext: UIButton) {
        
        firstCell.isEnabled = false
        secondCell.isEnabled = false
        thirdCell.isEnabled = false
        fourthCell.isEnabled = false
        
        var reds = 0
        var whites = 0
        var firstCodeMarked = false
        var secondCodeMarked = false
        var thirdCodeMarked = false
        var fourthCodeMarked = false
        var firstGuessMarked = false
        var secondGuessMarked = false
        var thirdGuessMarked = false
        var fourthGuessMarked = false
        
        if firstCell.backgroundColor == I1.backgroundColor {
            reds += 1
            firstCodeMarked = true
            firstGuessMarked = true
        }
        if secondCell.backgroundColor == I2.backgroundColor {
            reds += 1
            secondCodeMarked = true
            secondGuessMarked = true
        }
        if thirdCell.backgroundColor == I3.backgroundColor {
            reds += 1
            thirdCodeMarked = true
            thirdGuessMarked = true
        }
        if fourthCell.backgroundColor == I4.backgroundColor {
            reds += 1
            fourthCodeMarked = true
            fourthGuessMarked = true
        }
        
        if !firstGuessMarked {
            if firstCell.backgroundColor == I2.backgroundColor && !secondCodeMarked {
                whites += 1
                secondCodeMarked = true
            } else if firstCell.backgroundColor == I3.backgroundColor && !thirdCodeMarked {
                whites += 1
                thirdCodeMarked = true
            } else if firstCell.backgroundColor == I4.backgroundColor && !fourthCodeMarked {
                whites += 1
                fourthCodeMarked = true
            }
        }
        if !secondGuessMarked {
            if secondCell.backgroundColor == I1.backgroundColor && !firstCodeMarked {
                whites += 1
                firstCodeMarked = true
            } else if secondCell.backgroundColor == I3.backgroundColor && !thirdCodeMarked {
                whites += 1
                thirdCodeMarked = true
            } else if secondCell.backgroundColor == I4.backgroundColor && !fourthCodeMarked {
                whites += 1
                fourthCodeMarked = true
            }
        }
        if !thirdGuessMarked {
            if thirdCell.backgroundColor == I1.backgroundColor && !firstCodeMarked {
                whites += 1
                firstCodeMarked = true
            } else if thirdCell.backgroundColor == I2.backgroundColor && !secondCodeMarked {
                whites += 1
                secondCodeMarked = true
            } else if thirdCell.backgroundColor == I4.backgroundColor && !fourthCodeMarked {
                whites += 1
                fourthCodeMarked = true
            }
        }
        if !fourthGuessMarked {
            if fourthCell.backgroundColor == I1.backgroundColor && !firstCodeMarked {
                whites += 1
                firstCodeMarked = true
            } else if fourthCell.backgroundColor == I2.backgroundColor && !secondCodeMarked {
                whites += 1
                secondCodeMarked = true
            } else if fourthCell.backgroundColor == I3.backgroundColor && !thirdCodeMarked {
                whites += 1
                thirdCodeMarked = true
            }
        }
        
        let hints = [firstHint, secondHint, thirdHint, fourthHint]
        var count = 0
        
        if reds > 0 {
            for hint in 0...(reds - 1) {
                hints[hint].alpha = 1.0
                count += 1
            }
        }
        if whites > 0 {
            for hint in (count)...(count + whites - 1) {
                hints[hint].backgroundColor = UIColor.white
                hints[hint].alpha = 1.0
            }
        }
        
        if reds < 4 {
            firstNext.isEnabled = true; firstNext.alpha = 1.0
            secondNext.isEnabled = true; secondNext.alpha = 1.0
            thirdNext.isEnabled = true; thirdNext.alpha = 1.0
            fourthNext.isEnabled = true; fourthNext.alpha = 1.0
        } else {
            optionsBackground.text = "YOU WIN"
            reveal()
        }
    }
    
    // check current row and enable next row
    @IBAction func checkRow1(_ sender: UIButton) {
        sender.backgroundColor = UIColor.lightGray
        sender.setTitle("", for: UIControlState())
        sender.isEnabled = false
        
        checkRow(A1, secondCell: A2, thirdCell: A3, fourthCell: A4, firstHint: hintA1, secondHint: hintA2, thirdHint: hintA3, fourthHint: hintA4, firstNext: B1, secondNext: B2, thirdNext: B3, fourthNext: B4)
    }
    
    @IBAction func checkRow2(_ sender: UIButton) {
        sender.backgroundColor = UIColor.lightGray
        sender.setTitle("", for: UIControlState())
        sender.isEnabled = false
        
        checkRow(B1, secondCell: B2, thirdCell: B3, fourthCell: B4, firstHint: hintB1, secondHint: hintB2, thirdHint: hintB3, fourthHint: hintB4, firstNext: C1, secondNext: C2, thirdNext: C3, fourthNext: C4)
    }
    
    @IBAction func checkRow3(_ sender: UIButton) {
        sender.backgroundColor = UIColor.lightGray
        sender.setTitle("", for: UIControlState())
        sender.isEnabled = false
        
        checkRow(C1, secondCell: C2, thirdCell: C3, fourthCell: C4, firstHint: hintC1, secondHint: hintC2, thirdHint: hintC3, fourthHint: hintC4, firstNext: D1, secondNext: D2, thirdNext: D3, fourthNext: D4)
    }
    
    @IBAction func checkRow4(_ sender: UIButton) {
        sender.backgroundColor = UIColor.lightGray
        sender.setTitle("", for: UIControlState())
        sender.isEnabled = false
        
        checkRow(D1, secondCell: D2, thirdCell: D3, fourthCell: D4, firstHint: hintD1, secondHint: hintD2, thirdHint: hintD3, fourthHint: hintD4, firstNext: E1, secondNext: E2, thirdNext: E3, fourthNext: E4)
    }
    
    @IBAction func checkRow5(_ sender: UIButton) {
        sender.backgroundColor = UIColor.lightGray
        sender.setTitle("", for: UIControlState())
        sender.isEnabled = false
        
        checkRow(E1, secondCell: E2, thirdCell: E3, fourthCell: E4, firstHint: hintE1, secondHint: hintE2, thirdHint: hintE3, fourthHint: hintE4, firstNext: F1, secondNext: F2, thirdNext: F3, fourthNext: F4)
    }
    
    @IBAction func checkRow6(_ sender: UIButton) {
        sender.backgroundColor = UIColor.lightGray
        sender.setTitle("", for: UIControlState())
        sender.isEnabled = false
        
        checkRow(F1, secondCell: F2, thirdCell: F3, fourthCell: F4, firstHint: hintF1, secondHint: hintF2, thirdHint: hintF3, fourthHint: hintF4, firstNext: G1, secondNext: G2, thirdNext: G3, fourthNext: G4)
    }
    
    @IBAction func checkRow7(_ sender: UIButton) {
        sender.backgroundColor = UIColor.lightGray
        sender.setTitle("", for: UIControlState())
        sender.isEnabled = false
        
        checkRow(G1, secondCell: G2, thirdCell: G3, fourthCell: G4, firstHint: hintG1, secondHint: hintG2, thirdHint: hintG3, fourthHint: hintG4, firstNext: H1, secondNext: H2, thirdNext: H3, fourthNext: H4)
    }
    
    @IBAction func checkRow8(_ sender: UIButton) {
        sender.backgroundColor = UIColor.lightGray
        sender.setTitle("", for: UIControlState())
        sender.isEnabled = false
        
        optionsBackground.text = "YOU LOSE"
        
        checkRow(H1, secondCell: H2, thirdCell: H3, fourthCell: H4, firstHint: hintH1, secondHint: hintH2, thirdHint: hintH3, fourthHint: hintH4, firstNext: H1, secondNext: H2, thirdNext: H3, fourthNext: H4)
        
        reveal()
    }
    
    // fill cell with selected color
    @IBAction func insertPeg(_ sender: UIButton) {
        switch colorSelected {
        case "red":
            sender.backgroundColor = UIColor.red
        case "blue":
            sender.backgroundColor = UIColor.blue
        case "yellow":
            sender.backgroundColor = UIColor.yellow
        case "green":
            sender.backgroundColor = UIColor.green
        case "purple":
            sender.backgroundColor = UIColor.purple
        case "orange":
            sender.backgroundColor = UIColor.orange
        default:
            break
        }
        if sender.backgroundColor != UIColor.darkGray {
            switch sender {
            case A1, A2, A3, A4:
                Abox.backgroundColor = UIColor.cyan
                Abox.setTitle("check", for: UIControlState())
                Abox.isEnabled = true
            case B1, B2, B3, B4:
                Bbox.backgroundColor = UIColor.cyan
                Bbox.setTitle("check", for: UIControlState())
                Bbox.isEnabled = true
            case C1, C2, C3, C4:
                Cbox.backgroundColor = UIColor.cyan
                Cbox.setTitle("check", for: UIControlState())
                Cbox.isEnabled = true
            case D1, D2, D3, D4:
                Dbox.backgroundColor = UIColor.cyan
                Dbox.setTitle("check", for: UIControlState())
                Dbox.isEnabled = true
            case E1, E2, E3, E4:
                Ebox.backgroundColor = UIColor.cyan
                Ebox.setTitle("check", for: UIControlState())
                Ebox.isEnabled = true
            case F1, F2, F3, F4:
                Fbox.backgroundColor = UIColor.cyan
                Fbox.setTitle("check", for: UIControlState())
                Fbox.isEnabled = true
            case G1, G2, G3, G4:
                Gbox.backgroundColor = UIColor.cyan
                Gbox.setTitle("check", for: UIControlState())
                Gbox.isEnabled = true
            case H1, H2, H3, H4:
                Hbox.backgroundColor = UIColor.cyan
                Hbox.setTitle("check", for: UIControlState())
                Hbox.isEnabled = true
            default:
                break
            }
        }
    }
    
    // show options menu
    @IBAction func options(_ sender: UIButton) {
        optionsBackground.alpha = 0.75
        titleScreenButton.alpha = 1.0
        newGameButton.alpha = 1.0
        resumeGameButton.alpha = 1.0
    }
    
    // start new game
    @IBAction func newGame(_ sender: UIButton) {
        if toPass1 != nil {
            performSegue(withIdentifier: "newGame2Player", sender: self)
        } else {
            self.viewDidLoad()
            self.viewWillAppear(true)
        }
        optionsBackground.alpha = 0.0
        titleScreenButton.alpha = 0.0
        newGameButton.alpha = 0.0
        resumeGameButton.alpha = 0.0
    }
    
    // close options menu
    @IBAction func resumeGame(_ sender: UIButton) {
        optionsBackground.alpha = 0.0
        titleScreenButton.alpha = 0.0
        newGameButton.alpha = 0.0
        resumeGameButton.alpha = 0.0
    }
    
    

    
  
    
    
    
    
    
    
    
}



class CodemakerViewController: UIViewController {

    @IBOutlet weak var code1: UIButton!
    @IBOutlet weak var code2: UIButton!
    @IBOutlet weak var code3: UIButton!
    @IBOutlet weak var code4: UIButton!
    
    @IBOutlet weak var red: UIButton!
    @IBOutlet weak var blue: UIButton!
    @IBOutlet weak var yellow: UIButton!
    @IBOutlet weak var green: UIButton!
    @IBOutlet weak var purple: UIButton!
    @IBOutlet weak var orange: UIButton!
    
    @IBOutlet weak var confirmCode: UIButton!
    
    var colorSelected = "red"
    
    var firstColor = ""
    var secondColor = ""
    var thirdColor = ""
    var fourthColor = ""
    
    var twoPlayerModeEnabled = "false"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        red(red)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        
        // pass elements to game viewcontroller
        if (segue.identifier == "PassCode") {
            let svc = segue.destination as! ViewController;
            
            svc.toPass1 = firstColor
            svc.toPass2 = secondColor
            svc.toPass3 = thirdColor
            svc.toPass4 = fourthColor
            svc.toPass5 = twoPlayerModeEnabled
            
        }
    }

    // select color
    func selectColor(_ selectedColor: UIButton) {
        red.alpha = 0.25
        blue.alpha = 0.25
        yellow.alpha = 0.25
        green.alpha = 0.25
        purple.alpha = 0.25
        orange.alpha = 0.25
        selectedColor.alpha = 1.0
        
        red.layer.borderColor = UIColor.clear.cgColor
        blue.layer.borderColor = UIColor.clear.cgColor
        yellow.layer.borderColor = UIColor.clear.cgColor
        green.layer.borderColor = UIColor.clear.cgColor
        purple.layer.borderColor = UIColor.clear.cgColor
        orange.layer.borderColor = UIColor.clear.cgColor
        
        selectedColor.layer.borderColor = UIColor.black.cgColor
        selectedColor.layer.borderWidth = 3
    }
    
    // color buttons
    @IBAction func red(_ sender: UIButton) {
        colorSelected = "red"
        selectColor(sender)
    }
    
    @IBAction func blue(_ sender: UIButton) {
        colorSelected = "blue"
        selectColor(sender)
    }
    
    @IBAction func yellow(_ sender: UIButton) {
        colorSelected = "yellow"
        selectColor(sender)
    }
    
    @IBAction func green(_ sender: UIButton) {
        colorSelected = "green"
        selectColor(sender)
    }
    
    @IBAction func purple(_ sender: UIButton) {
        colorSelected = "purple"
        selectColor(sender)
    }
    
    @IBAction func orange(_ sender: UIButton) {
        colorSelected = "orange"
        selectColor(sender)
    }
    
    // fill cell with selected color
    @IBAction func insertPeg(_ sender: UIButton) {
        switch colorSelected {
        case "red":
            sender.backgroundColor = UIColor.red
        case "blue":
            sender.backgroundColor = UIColor.blue
        case "yellow":
            sender.backgroundColor = UIColor.yellow
        case "green":
            sender.backgroundColor = UIColor.green
        case "purple":
            sender.backgroundColor = UIColor.purple
        case "orange":
            sender.backgroundColor = UIColor.orange
        default:
            break
        }
        
        switch sender {
        case code1:
            firstColor = colorSelected
        case code2:
            secondColor = colorSelected
        case code3:
            thirdColor = colorSelected
        case code4:
            fourthColor = colorSelected
        default:
            break
        }
        
        sender.alpha = 1.0
        
        if (code1.alpha == 1 && code2.alpha == 1 && code3.alpha == 1 && code4.alpha == 1) {
            
            confirmCode.alpha = 1.0
            confirmCode.isEnabled = true
            twoPlayerModeEnabled = "true"
        }
    }

}
