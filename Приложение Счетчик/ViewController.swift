//
//  ViewController.swift
//  Приложение Счетчик
//
//  Created by Daud Tsechoev on 04.02.2024.
//

import UIKit
class ViewController: UIViewController {
    private func Time()->String{
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .medium
            dateFormatter.timeStyle = .short
            let formattedDate = dateFormatter.string(from: Date())
            return "[\(formattedDate)]:"
        }
    // Action Minus
    @IBAction func ButtonMinus(_ sender: Any) {
        if counter != 0 {
            counter -= 1
            counterValue.text = "\(counter)"
            history += "\(Time()) значение изменено на -1\n"
            HistoryChanges.text = history
        } else {
            history += "\(Time()) попытка уменьшить значение счётчика ниже 0\n"
            HistoryChanges.text = history
        }
    }
    
   // Action Plus
    @IBAction func ButtonPlus(_ sender: Any) {
        counter += 1
        counterValue.text = "\(counter)"
        history += "\(Time()) значение изменено на +1\n"
        HistoryChanges.text = history
    }
    
    
   // Action Reset
    @IBAction func ButtonReset(_ sender: Any) {
        counter = 0
        counterValue.text = "\(counter)"
        history += "\(Time()) значение сброшено\n"
        HistoryChanges.text = history
        }
    // Outlet Value
    @IBOutlet weak var counterValue: UILabel!
    var counter: Int = 0
    
    @IBOutlet weak var HistoryChanges: UITextView!
    var history: String = "История изменений\n"
    
    override func viewDidLoad() {
        counterValue.text = "\(counter)"
        super.viewDidLoad()
        HistoryChanges.text = "\(history)"
        }


}

