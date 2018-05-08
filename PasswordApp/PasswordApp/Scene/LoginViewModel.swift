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

public class BaseViewModel {
    
}

protocol LoginViewModelInputs {

}

protocol LoginViewModelOutputs {

}

protocol LoginViewModelType {
    var inputs: LoginViewModelInputs { get }
    var outputs: LoginViewModelOutputs { get }
}

class LoginViewModel: BaseViewModel, LoginViewModelType, LoginViewModelInputs, LoginViewModelOutputs {

    let disposeBag = DisposeBag()
    
    override init(){
        super.init()
        
    }   

    var inputs: LoginViewModelInputs { return self }
    var outputs: LoginViewModelOutputs { return self }                                         

}
