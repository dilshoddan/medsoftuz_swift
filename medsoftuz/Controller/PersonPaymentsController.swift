//
//  PersonInfoController.swift
//  medsoftuz
//
//  Created by Admin on 07/02/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation

public class PersonPaymentsController: ObservableObject {
    @Published var payments = [PersonPayments]()
    
    
    init(_pID: String){
        GetPersonPayments(_pID: _pID)
    }
    
    public func GetPersonPayments(_pID : String) {
            let pID = _pID
            let session = URLSession.shared
            let url = URL(string: "http://rscu.gx.uz/app")!

            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.setValue("global", forHTTPHeaderField: "Authorization")
            
            
            let json = [
                "id": 123,
                "jsonrpc": "2.0",
                "method" : "person.payments",
                "params" : [
                    "person_id" : "\(pID)",
                    "token" : "local"
                ]
                ] as [String : Any]
            
            let jsonData = try! JSONSerialization.data(withJSONObject: json, options: [])
            
            
            
            let task = session.uploadTask(with: request, from: jsonData) { data, response, error in
                if let data = data
                    //, let dataString = String(data: data, encoding: .windowsCP1251)
                {
                    //print(String(dataString["result"]["person"]["lastname"]))
    //                print(dataString)
                    
                    do {
                        let decoder = JSONDecoder()
                        let personInfo = try decoder.decode(PersonPaymentsBase.self, from: data)
                        if let result = personInfo.result,
                            let payments = result.payments {
                            DispatchQueue.main.async {
                                self.payments = payments
                                //print(person.lastname!)
                            }
                            
                        }
                        
                    } catch {
                        print("JSONSerialization error:", error)
                        
                    }
                    
                }
            }

            task.resume()
            
            print(pID)
        }
    
    
}
