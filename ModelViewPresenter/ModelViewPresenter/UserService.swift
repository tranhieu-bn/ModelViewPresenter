//
//  UserService.swift
//  ModelViewPresenter
//
//  Created by MacOne on 9/29/20.
//


import Foundation

class UserService {

    //the service delivers mocked data with a delay
    func getUsers(_ callBack:@escaping ([User]) -> Void){
        let users = [User(firstName: "Boo", lastName: "Trần", email: "boo@test.com", age: 36),
                     User(firstName: "Bull", lastName: "Trần", email: "bull@test.om", age: 24),
                     User(firstName: "Hiệu", lastName: "Công", email: "tranhieu@test.com", age: 20),
                     User(firstName: "Công", lastName: "Trần", email: "abcd@test.com", age: 40),
                     User(firstName: "ABC", lastName: "Nguyễn", email: "nguyenabc@test.com", age: 15),
                     User(firstName: "BCD", lastName: "Nguyễn", email: "nguyenBCD@test.com", age: 10)
        ]
        let delayTime = DispatchTime.now() + Double(Int64(2 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: delayTime) {
            callBack(users)
        }
    }
}

