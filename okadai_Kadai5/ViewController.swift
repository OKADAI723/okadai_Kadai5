//
//  ViewController.swift
//  okadai_Kadai5
//
//  Created by Yudai Fujioka on 2021/07/27.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var calculateButton: UIButton! {
        didSet {
            calculateButton.addTarget(self, action: #selector(tappedCalculateButton), for: .touchUpInside)
        }
    }
    @IBOutlet private weak var resultLabel: UILabel!
    
    private var resultNum : Double = 0.0
    
}

@objc private extension ViewController {
    func tappedCalculateButton() {
        guard let first = firstTextField.text,
              let second = secondTextField.text else {
            return
        }
        
        if first.isEmpty {
            return
        } else if Double(second) == 0 {
            return
        } else {
            let result = Double(first) ?? 0.0 / Double(second)!
            
            resultLabel.text = result.description
        }
    }
}
