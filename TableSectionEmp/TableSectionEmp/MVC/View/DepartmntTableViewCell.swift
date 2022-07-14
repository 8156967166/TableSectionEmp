//
//  DepartmntTableViewCell.swift
//  TableSectionEmp
//
//  Created by Bimal@AppStation on 04/05/22.
//

import UIKit

class DepartmntTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelDept: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setDeptCell(deptStr: Department) {
        self.labelDept.text = deptStr.deptName
    }

}
