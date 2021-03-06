//  CometChatGroupView.swift
//  CometChatUIKit
//  Created by CometChat Inc. on 20/09/19.
//  Copyright ©  2020 CometChat Inc. All rights reserved.


/* >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

CometChatGroupView: This component will be the class of UITableViewCell with components such as groupAvatar(Avatar), groupName(UILabel), groupDetails(UILabel).

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>  */

// MARK: - Importing Frameworks.

import UIKit
import CometChatPro

/*  ----------------------------------------------------------------------------------------- */

class CometChatGroupView: UITableViewCell {

     // MARK: - Declaration of IBOutlets
    
    @IBOutlet weak var groupAvatar: Avatar!
    @IBOutlet weak var groupName: UILabel!
    @IBOutlet weak var groupDetails: UILabel!
    @IBOutlet weak var typing: UILabel!
    
    // MARK: - Declaration of Variables
    
    var group: Group! {
        didSet {
            groupName.text = group.name
            switch group.groupType {
            case .public:
                 groupDetails.text = NSLocalizedString("PUBLIC", comment: "")
            case .private:
                groupDetails.text = NSLocalizedString("PRIVATE", comment: "")
            case .password:
                groupDetails.text = NSLocalizedString("PASSWORD_PROTECTED", comment: "")
            @unknown default:
                break
            }
//            groupAvatar.setImage(string: group.name)
            groupAvatar.set(image: group.icon ?? "", with: group.name ?? "")
        }
    }
    
    // MARK: - Initialization of required Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

/*  ----------------------------------------------------------------------------------------- */
