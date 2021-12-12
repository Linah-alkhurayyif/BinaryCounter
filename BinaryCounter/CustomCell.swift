// we have to use UIKit to have access to UITableViewCell
import UIKit
protocol CustomCellDelegate{
    func minusTotal(number:String)
    func plusTotal(number:String)
}
class CustomCell: UITableViewCell {
    
    var delegate: CustomCellDelegate?
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func plusButton(_ sender: UIButton) {
        delegate?.plusTotal(number: (self.numberLabel?.text)!)
    }
    @IBAction func minusButton(_ sender: UIButton) {
        
        delegate?.minusTotal(number: (self.numberLabel?.text)!)
    }
}
