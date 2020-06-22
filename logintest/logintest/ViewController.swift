import UIKit
import FirebaseAuth

class ViewController: UIViewController
{

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func login(_ sender: Any)
    {
        if emailTextField.text != "" && passwordTextField.text != ""
        {
            authService(email: emailTextField.text!, password: passwordTextField.text!)
        }
        else
        {
            print("try again")
            displayAlert(title: "error", message: "Please entry your email and password.")
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    //touch screen to hide the keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true)
    }
    
    //return btn
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
          textField.resignFirstResponder()
          return true
    }
    
    //login auth
    func authService(email: String, password: String)
    {
        Auth.auth().signIn(withEmail: email, password: password){(user,error) in
            if error != nil
            {
                print(error!)
                Auth.auth().createUser(withEmail: email, password: password, completion:{(user,error) in
                    if error != nil
                    {
                        print(error!)
                    }
                    else
                    {
                        print("user already created.")
                    }
                })
            }
            else
            {
                print("user already sign in.")
            }
        }
    }
    
    //login error alert
    func displayAlert(title: String, message: String)
    {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alertController.addAction(alertAction)
        self.present(alertController,animated: true,completion: nil)
    }

}

