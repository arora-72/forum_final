//
//  QuestionViewController.swift
//  forum_final_final
//
//  Created by arora_72 on 30/08/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

var inputData: [model] = []


class QuestionViewController: UIViewController {
    
    
    
    

    @IBOutlet weak var userIdentity: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var mainQuestField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        navigationController?.navigationBar.barTintColor = UIColor.blue
        navigationController?.title = "ask question"
        
        
        // Do any additional setup after loading the view.
    }

    

  
    @IBAction func postQuestion(_ sender: Any) {
        if let userData = mainQuestField.text{
            if let userIdentityData = userIdentity.text{
                if let descriptionData = descriptionField.text{
                    print(userData)
                    print(userIdentityData)
                    print(descriptionData)
                    
                    let af = model(main: userData, ask: userIdentityData, desc: descriptionData)
                    af.printData()
                    
                    inputData.append(af);
                    
                    navigationController?.popViewController(animated: true);
                    

                    
                }
                
            }
        }
        
        
        
    }
}
