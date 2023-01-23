
import UIKit
class ResultViewController: UIViewController {
    
    @IBOutlet weak var namePersonLabel: UILabel!
    @IBOutlet weak var surnamePersonLabel: UILabel!
    @IBOutlet weak var isReceivedLabel: UILabel!
    
    var info: PersonInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUserInterface()
    }
    
    private func updateUserInterface(){
        namePersonLabel.text = info.name
        surnamePersonLabel.text = info.position
        isReceivedLabel.text = info.received! ? "Accepted" : "Suspended"
        
    }
}
