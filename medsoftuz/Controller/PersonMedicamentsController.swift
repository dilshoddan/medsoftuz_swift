//
//  PersonInfoController.swift
//  medsoftuz
//
//  Created by Admin on 07/02/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation

public class PersonMedicamentsController: ObservableObject {
    @Published var personMedicaments = [PersonMedicaments]()
    
    
    init(_pID: String, _page: Int = 1){
        GetPersonMedicaments(_pID: _pID, _page: _page)
    }
    
    public func GetPersonMedicaments(_pID : String, _page: Int = 1) {
            let pID = _pID
            let page = _page
            let session = URLSession.shared
            let url = URL(string: "http://rscu.gx.uz/app")!

            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.setValue("global", forHTTPHeaderField: "Authorization")
            
            
            let json = [
                "id": 123,
                "jsonrpc": "2.0",
                "method" : "person.medicaments",
                "params" : [
                    "person_id" : "\(pID)",
                    "token" : "local"
                    ,"page" : page
                ]
                ] as [String : Any]
            
            let jsonData = try! JSONSerialization.data(withJSONObject: json, options: [])
            
            
            
            let task = session.uploadTask(with: request, from: jsonData) { data, response, error in
                if let data = data
                {
                    
                    do {
                        let decoder = JSONDecoder()
                        let personDocumentBase = try decoder.decode(PersonMedicamentsBase.self, from: data)
                        if let personDocumentsResult = personDocumentBase.result,
                            let personDocuments = personDocumentsResult.medicaments
                        {
                            DispatchQueue.main.async {
                                self.personMedicaments = personDocuments
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
