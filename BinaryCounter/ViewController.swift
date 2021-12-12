//
//  ViewController.swift
//  BinaryCounter
//
//  Created by Leena 1418 on 12/12/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var totalLabel: UILabel!
    let numbers = [1,10,100,1000,10000,100000,1000000,10000000,100000000,1000000000,10000000000,100000000000,1000000000000,10000000000000,100000000000000,1000000000000000]
    var total = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource {
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return numbers.count
   }
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath)  as! CustomCell
       cell.numberLabel!.text = "\(numbers[indexPath.row])"
       cell.delegate = self
     return cell
   }
}
extension ViewController: CustomCellDelegate {
    func minusTotal(number:String){
        total = total - Int(number)!
        totalLabel.text = "Total: \(total)"
    }
    func plusTotal(number:String){
        total = total + Int(number)!
        totalLabel.text = "Total: \(total)"
    }
}
