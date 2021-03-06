//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Ben Gohlke on 8/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

enum Currency {
    case cad
    case mxn
}

var currency: Currency = .cad

class ViewController: UIViewController {
    
    // MARK: - Outlets/Properties
    
    @IBOutlet weak var fromCurrencyTextField: UITextField!
    @IBOutlet weak var toCurrencyTextField: UITextField!
    
    @IBOutlet weak var toCurrencyLabel: UILabel!
    
    @IBOutlet weak var cadButton: UIButton!
    @IBOutlet weak var mxnButton: UIButton!

    // MARK: - Actions
    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        guard let amount = fromCurrencyTextField.text else { return }
        
        let displayAmount = convert(Double(amount) ?? 0)
        toCurrencyTextField.text = "\(displayAmount)"
    }
    
    @IBAction func cadButtonTapped(_ sender: UIButton) {
        cadButton?.isSelected.toggle()
        mxnButton?.isSelected.toggle()
    
    
    if cadButton.isSelected {
        currency = .cad
        toCurrencyLabel.text = "Currency CAD"
        }
    }

    @IBAction func mxnButtonTapped(_ sender: UIButton) {
        mxnButton.isSelected.toggle()
        cadButton.isSelected.toggle()
        
        if mxnButton.isSelected {
            currency = .mxn
            toCurrencyLabel.text = "Currency MXN"
        }
        
    
        }
    }
    
    // MARK: - Helper Methods
func convert( _ dollars: Double) -> Double {
    if currency == .cad {
        return dollars * 1.32
    } else {
        return dollars * 18.72
    }
}

