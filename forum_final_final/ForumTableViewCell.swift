//
//  ForumTableViewCell.swift
//  forum_final_final
//
//  Created by arora_72 on 30/08/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

class ForumTableViewCell: UITableViewCell {
    
    
    //outlets
    
    @IBOutlet weak var mainQuestion: UILabel!
    @IBOutlet weak var user: UILabel!

    @IBOutlet weak var quesDescription: UITextView!
    @IBOutlet weak var likeBUtton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    

}
