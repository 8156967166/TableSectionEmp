//
//  ViewController.swift
//  TableSectionEmp
//
//  Created by Bimal@AppStation on 04/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    
    var depSections = [Department] ()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        datasOfEmployee()
    }
    func datasOfEmployee() {
        
        let emp1 = Employee(emplyName: "Amal", emplyAge: "30")
        let emp2 = Employee(emplyName: "Kannan", emplyAge: "32")
        let emp3 = Employee(emplyName: "Saravanan", emplyAge: "31")
        let emp4 = Employee(emplyName: "Vishnu", emplyAge: "28")
        let iosEmpArray = [emp1,emp2,emp3,emp4]
        let dep1 = Department(deptName: "IOS", employeesDetls: iosEmpArray)
        depSections.append(dep1)
        
        let emp5 = Employee(emplyName: "Anil", emplyAge: "29")
        let emp6 = Employee(emplyName: "Vishnu", emplyAge: "26")
        let emp7 = Employee(emplyName: "Anand", emplyAge: "30")
        let androidEmpArray = [emp5,emp6,emp7]
        let dep2 = Department(deptName: "Android", employeesDetls: androidEmpArray)
        depSections.append(dep2)
        
        let emp8 = Employee(emplyName: "Sujin", emplyAge: "28")
        let emp9 = Employee(emplyName: "Sruthi", emplyAge: "27")
        let emp10 = Employee(emplyName: "Amal", emplyAge: "25")
        let reactEmpArray = [emp8,emp9,emp10]
        let dep3 = Department(deptName: "React Native", employeesDetls: reactEmpArray)
        depSections.append(dep3)
    }

}
extension ViewController: UITableViewDataSource,UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return depSections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let rowSectionIndex = depSections[section]
        let emplyArray = rowSectionIndex.employeesDetls
        return emplyArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowCellIndex = depSections[indexPath.section]
        let emplysArray = rowCellIndex.employeesDetls
        let emplyModel = emplysArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "empCell", for: indexPath) as? EmployeeTableViewCell
        cell?.setEmplyCell(emplyStr: emplyModel)
        return cell!
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerSection = depSections[section]
        
        let sections = tableview.dequeueReusableCell(withIdentifier: "depCell") as? DepartmntTableViewCell
        sections?.setDeptCell(deptStr: headerSection)
        return sections!
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}

