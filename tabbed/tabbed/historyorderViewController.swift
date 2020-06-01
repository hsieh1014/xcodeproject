import UIKit

class historyorderViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default
            , reuseIdentifier: "cell1")
        cell.textLabel?.text = "order1"
        return cell
    }
}
