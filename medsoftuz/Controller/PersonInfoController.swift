//
//  PersonInfoController.swift
//  medsoftuz
//
//  Created by Admin on 07/02/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation

public class PersonInfoController: ObservableObject {
    @Published var people = [Person]()
    
    
    
    public func GetPersonInfo(_pID : String) {
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
                "method" : "person.info",
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
                        let personInfo = try decoder.decode(PersonInfoBase.self, from: data)
                        if let result = personInfo.result,
                            let person = result.person {
                            DispatchQueue.main.async {
                                self.people.append(person)
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
