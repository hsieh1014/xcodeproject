import UIKit

class firstViewController: UIViewController
{

    @IBOutlet weak var namefield: UITextField!
    @IBOutlet weak var openning: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //logo -> TOP
        openning.center.y = openning.center.y - view.frame.height
        
        //other
        //let square = UIView(frame: CGRect(x: view.frame.width/2-125, y: view.frame.height/2-150, width: 250, height: 300))
        //CG -> core graph
        //square.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        //view.addSubview(square)
    }
    
    //偵測點按空白處
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "signintohomepage"
        {
            let destinationViewController = segue.destination as! homeViewController
            let inputname: String = namefield.text!
            var string1 = "hello,"
            string1.append(inputname)
            destinationViewController.username = string1
            
        }
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        //動畫開始到結束的時間
        UIView.animate(withDuration: 2)
        {
            self.openning.center.y = self.openning.center.y + self.view.frame.height
        }
    }
}
