//
//  LoginWorker.swift
//  CleanArchitecture
//
//  Created by Dounia BELANNAB on 19/03/2018.
//  Copyright (c) 2018 Dounia BELANNAB. All rights reserved.
//

import UIKit


typealias responseHandler = (_ response:LoginModel.Fetch.Response) ->()


final class LoginWorker {
    
    // MARK: - Business Logic
    func fetch(email:String!, password:String!, success: @escaping(responseHandler), fail:@escaping(responseHandler))
    {
        // NOTE: Do the work
        //call network etc ...
        let manager = ApiManager()

//        manager.fetch(email: email, password: password, success: { (data) in
//            do{
//            let user = try JSONDecoder().decode(LoggedUser.self, from: (data)!) }
//            success(LoginModel.Fetch.Response(user: user, state: true, error:nil))
//        } catch {
//            // JSONDecoder
//        }
//
//        }) { (state, error) in
//            fail(TestModel.Fetch.Response(user: nil, state: false, error: nil))
//        }
    }
}
