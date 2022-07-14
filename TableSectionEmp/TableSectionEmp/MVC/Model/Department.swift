//
//  Department.swift
//  TableSectionEmp
//
//  Created by Bimal@AppStation on 04/05/22.
//

import Foundation

class Department {
    var deptName: String
    var employeesDetls: [Employee]
    
    init(deptName: String, employeesDetls: [Employee]) {
        self.deptName = deptName
        self.employeesDetls = employeesDetls
    }
}
