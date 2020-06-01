import UIKit

class productViewController: UIViewController
{

    @IBOutlet weak var ProductPageProductImage: UIImageView!
    @IBOutlet weak var ProductPageProductName: UILabel!
    @IBOutlet weak var ProductPageProductPrice: UILabel!
    @IBOutlet weak var ProductPageProductDetail: UILabel!
    @IBOutlet weak var ProductPageMemberNum: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
//    {
//        let controller = segue.destination as? productTableViewController
//        let indexPath = self.foodTableView.indexPathForSelectedRow
//        controller?.storeName = food[indexPath!.row].name
//        controller?.information  = food[indexPath!.row].information
//        controller?.theMenu = food[indexPath!.row].theMenu
//        controller?.storeMap = food[indexPath!.row].storeMap
//    }
}
