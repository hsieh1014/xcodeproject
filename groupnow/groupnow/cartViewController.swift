import UIKit

class cartViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default
            , reuseIdentifier: "wanttobuy")
        cell.textLabel?.text = "order1"
        return cell
    }
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
