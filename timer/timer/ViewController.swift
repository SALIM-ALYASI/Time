//
//  ViewController.swift
//  timer
//
//  Created by ALYASI on 18/02/2021.
//

import UIKit

class ViewController: UIViewController {
    var timerTest = Timer()
     var time = 0
    let timestamp = NSDate().timeIntervalSince1970
    @IBOutlet weak var timerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  
    open override func viewDidAppear(_ animated: Bool) {
        NSLog("viewDidAppear ")
        timerTest = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(actionBundle), userInfo: nil, repeats: true)
    }
    @objc func actionBundle()
       {
      
          time += 1
         timerLabel.text = Today_Sweetened(timestamp)
        //"\(time)"
   print(Today_Sweetened(timestamp))
    }
    
 //توقيت محلي
   func Today_Sweetened(_ date:Double) -> String {
     
    let date = Date(timeIntervalSince1970: TimeInterval(date))
         let dateFormatter = DateFormatter()
         dateFormatter.timeStyle = DateFormatter.Style.medium //Set time style
         dateFormatter.dateStyle = DateFormatter.Style.medium //Set date style
   
      dateFormatter.dateFormat = "EEEE,h:mm a "

        return dateFormatter.string(from: date)
    }
}

