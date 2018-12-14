//
//  ViewController.swift
//  AutoLayout2
//
//  Created by Yüksel Ağgöz on 10.12.2018.
//  Copyright © 2018 Yüksel Ağgöz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isFirstNum: Bool = true
    var isFirstComma: Bool = true
    var numFirst: Double = 0
    var numLast: Double = 0
    var keyOp: Int = 17
    
    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func btnActions(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            lblResult.text = isFirstNum ? "0" : lblResult.text! + "0"
            numLast = Double(lblResult.text!)!
            isFirstNum = false
            break
        case 1:
            lblResult.text = isFirstNum ? "1" : lblResult.text! + "1"
            numLast = Double(lblResult.text!)!
            isFirstNum = false
            break
        case 2:
            lblResult.text = isFirstNum ? "2" : lblResult.text! + "2"
            numLast = Double(lblResult.text!)!
            isFirstNum = false
            break
        case 3:
            lblResult.text = isFirstNum ? "3" : lblResult.text! + "3"
            numLast = Double(lblResult.text!)!
            isFirstNum = false
            break
        case 4:
            lblResult.text = isFirstNum ? "4" : lblResult.text! + "4"
            numLast = Double(lblResult.text!)!
            isFirstNum = false
            break
        case 5:
            lblResult.text = isFirstNum ? "5" : lblResult.text! + "5"
            numLast = Double(lblResult.text!)!
            isFirstNum = false
            break
        case 6:
            lblResult.text = isFirstNum ? "6" : lblResult.text! + "6"
            numLast = Double(lblResult.text!)!
            isFirstNum = false
            break
        case 7:
            lblResult.text = isFirstNum ? "7" : lblResult.text! + "7"
            numLast = Double(lblResult.text!)!
            isFirstNum = false
            break
        case 8:
            lblResult.text = isFirstNum ? "8" : lblResult.text! + "8"
            numLast = Double(lblResult.text!)!
            isFirstNum = false
            break
        case 9:
            lblResult.text = isFirstNum ? "9" : lblResult.text! + "9"
            numLast = Double(lblResult.text!)!
            isFirstNum = false
            break
        case 10:
            numFirst = 0
            numLast = 0
            lblResult.text = "0"
            keyOp = 17
            isFirstComma = true
            isFirstNum = true
            break
        case 11:
            numLast = numLast * ( -1 )
            lblResult.text = String(numLast)
            isFirstNum = false
            break
        case 12:
            numLast = numLast / 100
            lblResult.text = String(numLast)
            isFirstNum = true
            break
        case 13:
            keyOp = 13
            numFirst = numLast
            isFirstComma = true
            isFirstNum = true
            break
        case 14:
            keyOp = 14
            numFirst = numLast
            isFirstComma = true
            isFirstNum = true
            break
        case 15:
            keyOp = 15
            numFirst = numLast
            isFirstComma = true
            isFirstNum = true
            break
        case 16:
            keyOp = 16
            numFirst = numLast
            isFirstComma = true
            isFirstNum = true
            break
        case 17:
            switch keyOp {
            case 13:
                numLast = numFirst / numLast
                break
            case 14:
                numLast = numFirst * numLast
                break
            case 15:
                numLast = numFirst - numLast
                break
            case 16:
                numLast = numFirst + numLast
                break
            default:
                break
            }
            numFirst = numLast
            lblResult.text = String(numLast)
            isFirstComma = true
            isFirstNum = true
            break
        case 18:
            if isFirstNum {
                lblResult.text = isFirstNum ? "0." : lblResult.text! + "."
                isFirstNum = false
            } else {
                if isFirstComma {
                    lblResult.text = isFirstNum ? "0." : lblResult.text! + "."
                    isFirstComma = false
                }
            }
            break
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
