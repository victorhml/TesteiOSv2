//
//  LoginInteractor.swift
//  BankApp
//
//  Created by Victor Lisboa on 20/09/19.
//  Copyright (c) 2019 Victor Lisboa. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol LoginBusinessLogic
{
    func doLogin(request: Login.Something.Request)
}

protocol LoginDataStore
{
    var userAccount: Login.Something.UserAccount! { get set }
}

class LoginInteractor: LoginBusinessLogic, LoginDataStore
{
    var presenter: LoginPresentationLogic?
    var worker: LoginWorker? = LoginWorker()
    var userAccount: Login.Something.UserAccount!
    
    // MARK: Do something
    
    func doLogin(request: Login.Something.Request)
    {
        worker?.doLoginWork(user: request.user ?? "", password: request.password ?? "", completion: { (response) in
            
            if (response.error?.code) != nil {
                return
            }
            else {
                self.userAccount = response.userAccount
                self.presenter?.presentLogin()
            }
            
        })
    }
}
