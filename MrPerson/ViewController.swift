
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var namePersonField: UITextField!
    @IBOutlet weak var positionPersonField: UITextField!
    @IBOutlet weak var receivedSwitch: UISwitch!
    @IBOutlet weak var dossierButton: UIButton!
    
    var infoPerson: PersonInfo!
    var dossierButtonName = "Dossier"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let  resultViewController = segue.destination as? ResultViewController
        else {
            return
        }
        sendPersonInfo(to: resultViewController)
    }
    
    private func sendPersonInfo(to reciever: ResultViewController) {
        reciever.info = PersonInfo(
            name: namePersonField.text != "" ? namePersonField.text! : "No name",
            position: positionPersonField.text != "" ? positionPersonField.text! : "No position",
            received: receivedSwitch.isOn
        )
    }
}
