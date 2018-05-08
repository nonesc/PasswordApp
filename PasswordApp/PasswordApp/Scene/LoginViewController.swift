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


extension Optional where Wrapped == String {
    func orEmpty() -> String{
        if let strongSelf = self {
            return strongSelf.isEmpty ? "" : strongSelf
        }
        return ""
    }
}
class LoginViewController: BaseViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    lazy var viewModel: LoginViewModelType = {
		return LoginViewModel()
	}()

    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        bindInputs()
        bindOutputs()

        // Do any additional setup after loading the view.
    }
    
    func bindInputs() {
        registerButton
            .rx
            .tap
            .asDriver()
            .drive(onNext: { [weak self] (_) in
                self?.viewModel.inputs.registerButtonTapped()
        }).disposed(by: disposeBag)
        
        loginButton
            .rx
            .tap
            .asDriver()
            .drive(onNext: { [weak self] (_) in
                guard let `self` = self else { return }
                self.viewModel.inputs.loginButtonTapped(email: self.emailTextField.text.orEmpty(), password: self.passwordTextField.text.orEmpty())
            }).disposed(by: disposeBag)
    }
    
    func bindOutputs() {
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
