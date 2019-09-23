//
//  ViewController.swift
//  tipIt
//
//  Created by Bryan Rivas on 9/9/19.
//  Copyright © 2019 Bryan Rivas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var splitOne: UITextField!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var fourthView: UIView!
    @IBOutlet weak var splitFour: UITextField!
    @IBOutlet weak var splitTwo: UITextField!
    @IBOutlet weak var splitThree: UITextField!
    @IBOutlet weak var splitter: UIStepper!
    @IBOutlet weak var splitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpAnimation()
        if tipControl.selectedSegmentIndex == 3{
            splitter.isEnabled = false
        }
        
        splitter.isEnabled = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        billField?.becomeFirstResponder()
        if tipControl.selectedSegmentIndex == 3 {
            splitLabel.text = "split: \(UserDefaults.standard.integer(forKey: "MySplit"))"
            splitter.isEnabled = false
        }
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tipControl.selectedSegmentIndex = 3
        splitter.isEnabled = false
    }
    
    func setUpAnimation(){
        let duration : Double = 2
        UIView.animate(withDuration: duration) {
            self.mainView.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.3019607843, blue: 0.2941176471, alpha: 1)
            self.firstView.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.3019607843, blue: 0.2941176471, alpha: 1)
            self.secondView.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.3019607843, blue: 0.2941176471, alpha: 1)
            self.splitOne.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.3019607843, blue: 0.2941176471, alpha: 1)
            self.splitTwo.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.3019607843, blue: 0.2941176471, alpha: 1)
            self.splitThree.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.3019607843, blue: 0.2941176471, alpha: 1)
            self.splitFour.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.3019607843, blue: 0.2941176471, alpha: 1)
        }
    }
    
    func animateColorOnSplit(value: Double){
        let duration : Double = 0.5
        if Int(value) == 1{
            UIView.animate(withDuration: duration) {
                self.mainView.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.3019607843, blue: 0.2941176471, alpha: 1)
                self.firstView.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.3019607843, blue: 0.2941176471, alpha: 1)
                self.secondView.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.3019607843, blue: 0.2941176471, alpha: 1)
                self.splitOne.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.3019607843, blue: 0.2941176471, alpha: 1)
                self.splitTwo.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.3019607843, blue: 0.2941176471, alpha: 1)
                self.splitThree.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.3019607843, blue: 0.2941176471, alpha: 1)
                self.splitFour.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.3019607843, blue: 0.2941176471, alpha: 1)
            }
        }
        else if Int(value) == 2{
            UIView.animate(withDuration: duration) {
                self.mainView.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
                self.firstView.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
                self.secondView.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
                self.splitOne.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
                self.splitTwo.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
                self.splitThree.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
                self.splitFour.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
            }
        }
        else if Int(value) == 3{
            UIView.animate(withDuration: duration) {
                self.mainView.backgroundColor = #colorLiteral(red: 1, green: 0.9490196078, blue: 0, alpha: 1)
                self.firstView.backgroundColor = #colorLiteral(red: 1, green: 0.9490196078, blue: 0, alpha: 1)
                self.secondView.backgroundColor = #colorLiteral(red: 1, green: 0.9490196078, blue: 0, alpha: 1)
                self.splitOne.backgroundColor = #colorLiteral(red: 1, green: 0.9490196078, blue: 0, alpha: 1)
                self.splitTwo.backgroundColor = #colorLiteral(red: 1, green: 0.9490196078, blue: 0, alpha: 1)
                self.splitThree.backgroundColor = #colorLiteral(red: 1, green: 0.9490196078, blue: 0, alpha: 1)
                self.splitFour.backgroundColor = #colorLiteral(red: 1, green: 0.9490196078, blue: 0, alpha: 1)
            }
        }
        else if Int(value) == 4{
            UIView.animate(withDuration: duration) {
                self.mainView.backgroundColor = #colorLiteral(red: 0.1803921569, green: 0.8352941176, blue: 0.4509803922, alpha: 1)
                self.firstView.backgroundColor = #colorLiteral(red: 0.1803921569, green: 0.8352941176, blue: 0.4509803922, alpha: 1)
                self.secondView.backgroundColor = #colorLiteral(red: 0.1803921569, green: 0.8352941176, blue: 0.4509803922, alpha: 1)
                self.splitOne.backgroundColor = #colorLiteral(red: 0.1803921569, green: 0.8352941176, blue: 0.4509803922, alpha: 1)
                self.splitTwo.backgroundColor = #colorLiteral(red: 0.1803921569, green: 0.8352941176, blue: 0.4509803922, alpha: 1)
                self.splitThree.backgroundColor = #colorLiteral(red: 0.1803921569, green: 0.8352941176, blue: 0.4509803922, alpha: 1)
                self.splitFour.backgroundColor = #colorLiteral(red: 0.1803921569, green: 0.8352941176, blue: 0.4509803922, alpha: 1)
            }
        }
    }
    
    func animateOnSplit(value: Double){
        if Int(value) == 1{
            let duration : Double = 0.5
            UIView.animate(withDuration: duration, animations: {
                self.moveUp(view: self.firstView)
            }) { (finished) in
                if finished {
                    UIView.animate(withDuration: duration, animations: {
                        self.moveDown(view: self.firstView)
                    })
                }
            }
        }
        else if Int(value) == 2{
            let duration : Double = 0.5
            UIView.animate(withDuration: duration, animations: {
                self.moveUp(view: self.secondView)
            }) { (finished) in
                if finished {
                    UIView.animate(withDuration: duration, animations: {
                        self.moveDown(view: self.secondView)
                    })
                }
            }
            
        }
        else if Int(value) == 3{
            let duration : Double = 0.5
            UIView.animate(withDuration: duration, animations: {
                self.moveUp(view: self.thirdView)
            }) { (finished) in
                if finished {
                    UIView.animate(withDuration: duration, animations: {
                        self.moveDown(view: self.thirdView)
                    })
                }
            }
        }
        else if Int(value) == 4{
            let duration : Double = 0.5
            UIView.animate(withDuration: duration, animations: {
                self.moveUp(view: self.fourthView)
            }) { (finished) in
                if finished {
                    UIView.animate(withDuration: duration, animations: {
                        self.moveDown(view: self.fourthView)
                    })
                }
            }
        }
        
    }
    
    func animateOnCustom(){
        let duration : Double = 0.5
        UIView.animate(withDuration: duration, animations: {
            self.moveUp(view: self.firstView)
            self.moveUp(view: self.secondView)
            self.moveUp(view: self.thirdView)
            self.moveUp(view: self.fourthView)
        }) { (finished) in
            if finished{
                UIView.animate(withDuration: duration, animations: {
                    self.moveDown(view: self.firstView)
                    self.moveDown(view: self.secondView)
                    self.moveDown(view: self.thirdView)
                    self.moveDown(view: self.fourthView)
                })
            }
        }
    }
    
    func moveUp(view: UIView){
        view.center.y -= 10
    }
    
    func moveDown(view: UIView){
        view.center.y += 10
    }

    @IBAction func userTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    @IBAction func calcTip(_ sender: Any) {
        
        if billField.text!.count < 1{
            billField.text = "$"
        }
        
        splitter.isEnabled = true
        
        if tipControl.selectedSegmentIndex == 3{
            splitter.isEnabled = false
            splitLabel.text = "Split: \(UserDefaults.standard.integer(forKey: "MySplit"))"
            animateColorOnSplit(value: 4)
            animateOnCustom()
        }
        else if tipControl.selectedSegmentIndex < 3{
            splitLabel.text = String(format: "split: %.0f", splitter.value)
            animateColorOnSplit(value: splitter.value)
            animateOnSplit(value: splitter.value)
        }
        
        
        let startPos = billField.position(from: billField.beginningOfDocument, offset: 1)
        let thisRange = billField.textRange(from: startPos!, to: billField.endOfDocument)
        
        let bill = Double(billField.text(in: thisRange!)!) ?? 0
        
        
        //Calculate the tip and total
        if (tipControl.selectedSegmentIndex > -1 && tipControl.selectedSegmentIndex < 3){
            let percentages : [Double] = [0.1, 0.19, 0.2]
        
            let tip : Double = bill * percentages[tipControl.selectedSegmentIndex]
            let total: Double = bill + tip
        
            //update the tip and total label
            tipLabel.text = String(format: "$%.2f", tip/splitter.value)
            totalLabel.text = String(format: "$%.2f", total)
        }
        else if tipControl.selectedSegmentIndex == 3{
            let tip : Double  = bill * Double(UserDefaults.standard.integer(forKey: "Percent"))/100
            let total : Double = bill + tip
            tipLabel.text = String(format: "$%.2f", tip/Double(UserDefaults.standard.integer(forKey: "MySplit")))
            totalLabel.text = String(format: "$%.2f", total)
        }
    }
    
}

/*
 -push to github with readMe 
 */

