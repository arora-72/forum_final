//
//  ViewController.swift
//  forum_final_final
//
//  Created by arora_72 on 29/08/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var addQuestion: UIButton!
    @IBOutlet weak var tableView: UITableView!
    //Outlets
    var countVar=0;
    var likes = [String]()
    
    var selectedPathIndex: IndexPath!
    let questionArray = ["how is this going on","hell yeah?"]
    let users = ["16bce-28","6273bx"]
    let descibeSection = ["hcavhjbc ,a","dsbkhbcakbcahbjdbhjabJBxjkbdncm  badcnkn jebsc hsdgh"]

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self;
        self.tableView.delegate = self;
        
        likes = [String](repeating:"like", count:20)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "forumCell", for: indexPath) as! ForumTableViewCell
        
        selectedPathIndex = indexPath
        
        cell.mainQuestion.text = questionArray[indexPath.row]
        cell.user.text = users[indexPath.row]
        cell.quesDescription.text = descibeSection[indexPath.row]
        cell.likeBUtton.tag=indexPath.row
        //cell.likeBUtton.addTarget(self, action: #selector(ViewController.handleLikes(_:)), for: .touchUpInside)
        cell.likeBUtton.setTitle(likes[indexPath.row], for: .normal)
        
        return cell
    }
    
//   
//    @IBAction func handleLikes(_ sender: Any) {
//        print((sender as AnyObject).tag)
//        if likes[(sender as AnyObject).tag]=="like"{
//            likes[(sender as AnyObject).tag] = "unlike"
//        
//        }else{
//            likes[(sender as AnyObject).tag]="like"
//        }
//        
//        (sender as AnyObject).setTitle(likes[(sender as AnyObject).tag], forState: .norm)
//
//    }
//    
    
    
    


}

