import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    let images = [UIImage(named: "netflix"), UIImage(named: "yputube"), UIImage(named: "spotify")]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let testimage = tableView.dequeueReusableCell(withIdentifier:"imagetest",for: indexPath) as! testTableViewCell

        let product = images[indexPath .row]
        testimage.productImage.image = product
        return testimage
    }
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }


}

