//
//  Network.swift
//  medsoftuz
//
//  Created by Admin on 03/02/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation

func GetPersonInfo(_pID : String) {
        let pID = _pID ?? "3333"
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
            if let data = data, let dataString = String(data: data, encoding: .windowsCP1251) {
                //print(String(dataString["result"]["person"]["lastname"]))
//                print(dataString)
                
                do {
                    let encoder = JSONEncoder()
                    let decoder = JSONDecoder()
                    let personInfo = try decoder.decode(PersonInfoBase.self, from: data)
                    if let result = personInfo.result,
                        let person = result.person,
                        let firstname = person.firstname,
                        let lastname = person.lastname {
                        print((firstname) + " " + (lastname))
                    }
                    
                } catch {
                    print("JSONSerialization error:", error)
                    
                }
                
            }
        }

        task.resume()
        
        print(pID)
    }


/*
curl -X POST \
http://rscu.gx.uz/app \
-H 'Authorization: 7d4c6ba8619344ae5d50d69cbe8868d9' \
-H 'Content-Type: application/json' \
-d '{
  "id": 123,
  "jsonrpc": "2.0",
  "method": "person.info",
  "params":{
      "person_id":"3333",
      "token":"378130d7734a06977bbf251e6deae9a8"
  }
}'
 */
