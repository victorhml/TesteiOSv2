//
//  ExtratoPresenter.swift
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

protocol ExtratoPresentationLogic
{
  func presentSomething(response: Extrato.Something.Response)
}

class ExtratoPresenter: ExtratoPresentationLogic
{
  weak var viewController: ExtratoDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Extrato.Something.Response)
  {
//    let statementList = response
    viewController?.displayStatementList(responseExtrato: response)
  }
}