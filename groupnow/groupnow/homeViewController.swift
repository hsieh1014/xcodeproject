import UIKit

class homeViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    struct Product
    {
        var productName : String
        var images: UIImage?
        var memberNum : Int
        var productDetail : String
        var firstMember : String?
    }
    
    var products:[Product] = [
        Product(productName:"netflix",images:UIImage(named:"netflix"),memberNum:4,productDetail:"一年480元",firstMember:""),
        Product(productName:"spotify",images:UIImage(named:"spotify"),memberNum:6,productDetail:"一年480元",firstMember:""),
        Product(productName:"youtube",images:UIImage(named:"youtube"),memberNum:4,productDetail:"一年480元",firstMember:""),]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return products.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier:"product",for:indexPath) as! productTableViewCell
        cell.homePageProduct.image = products[indexPath.row].images
        cell.homePageProductName.text = products[indexPath.row].productName
        return cell
    }


    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    @IBAction func backtohomepage(segue:UIStoryboardSegue)
    {
           print("backtohomepage")
    }
}
