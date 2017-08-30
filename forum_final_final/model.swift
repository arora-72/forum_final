//
//  model.swift
//  forum_final_final
//
//  Created by arora_72 on 30/08/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import Foundation




class model{
 
    
    var mainQuestion:[String] = []
    var askedBy: [String] = []
    var description: [String] = []
    init(main:String,ask:String,desc:String) {
        mainQuestion.append(main);
        askedBy.append(ask);
        description.append(desc);
    }
    
    
    func printData(){
        print(mainQuestion);
        print(askedBy)
        print(description)
    }
    
    func addData(main_Question:String,askedByP:String,descriptionP:String) -> Void {
        
        mainQuestion.append(main_Question);
        askedBy.append(askedByP)
        description.append(descriptionP);
        
    }

    
}
