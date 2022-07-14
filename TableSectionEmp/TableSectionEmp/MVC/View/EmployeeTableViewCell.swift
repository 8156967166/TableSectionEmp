//
//  EmployeeTableViewCell.swift
//  TableSectionEmp
//
//  Created by Bimal@AppStation on 04/05/22.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setEmplyCell(emplyStr: Employee) {
        self.labelName.text = emplyStr.emplyName
        self.labelAge.text = emplyStr.emplyAge
    }

}
