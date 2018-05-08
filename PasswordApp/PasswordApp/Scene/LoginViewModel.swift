//
//  LoginViewModel.swift
//  PasswordApp
//
//  Created by Sujin chaichanamongkol on 8/5/2561 BE.
//Copyright © 2561 Sujin chaichanamongkol. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import FirebaseAuth
public class BaseViewModel {
    
}

protocol LoginViewModelInputs {
    func registerButtonTapped()
    func loginButtonTapped(email: String, password: String)
}

protocol LoginViewModelOutputs {

}

protocol LoginViewModelType {
    var inputs: LoginViewModelInputs { get }
    var outputs: LoginViewModelOutputs { get }
}

extension ObservableType {
    
    public func asDriverIgnoreError() -> Driver<E> {
        return self.asDriver(onErrorDriveWith: Driver.empty())
    }
}

class LoginViewModel: BaseViewModel, LoginViewModelType, LoginViewModelInputs, LoginViewModelOutputs {
   
    

    let disposeBag = DisposeBag()
    
    override init(){
        super.init()
    }
    
    func registerButtonTapped() {
        
    }
    
    private let loginTrigger = PublishSubject<(String,String)>()
    func loginButtonTapped(email: String, password: String) {
        // create secret from email and password
        // save to userdefault
        // generate real password from secret and password
        // request
        Auth
            .auth()
            .signIn(withEmail: email, password: password) { (user, error) in
                if error != nil {
                    print(error)
                    return
                } else {
                    // success
                    print(user)
                }
        }
    }
    
    
    
    
    
    
    
    

    var inputs: LoginViewModelInputs { return self }
    var outputs: LoginViewModelOutputs { return self }                                         

}
