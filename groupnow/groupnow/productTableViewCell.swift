import UIKit

class productTableViewCell: UITableViewCell
{

    @IBOutlet weak var homePageProduct: UIImageView!
    @IBOutlet weak var homePageProductName: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }

}
