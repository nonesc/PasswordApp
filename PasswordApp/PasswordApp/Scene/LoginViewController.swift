//
//  LoginViewController.swift
//  PasswordApp
//
//  Created by Sujin chaichanamongkol on 8/5/2561 BE.
//Copyright © 2561 Sujin chaichanamongkol. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class LoginViewController: BaseViewController {

    lazy var viewModel: LoginViewModelType = {
		return LoginViewModel()
	}()

    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
