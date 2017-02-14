//
//  NewShoppingItemViewController.swift
//  Shopping List
//
//  Created by Olga Guseva on 14/02/2017.
//
//

import UIKit

class NewShoppingItemViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var addButton: UIButton!
    
    @IBAction func addItem(_ sender: Any)
    {
        if (input.text != "")
        {
            list.append(input.text!)
            input.text = ""
            input.resignFirstResponder()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addButton.clipsToBounds = true
        addButton.layer.cornerRadius = 5
        input.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        input.resignFirstResponder()
        return true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        input.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

