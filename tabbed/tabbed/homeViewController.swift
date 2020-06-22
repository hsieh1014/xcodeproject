import UIKit

class homeViewController: UIViewController
{
    var username : String?
    @IBOutlet weak var greeting: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        greeting.text = username
    }

}
