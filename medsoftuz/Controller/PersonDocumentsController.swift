//
//  PersonInfoController.swift
//  medsoftuz
//
//  Created by Admin on 07/02/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation

public class PersonDocumentsController: ObservableObject {
    @Published var personDocuments = [PersonDocuments]()
    
    
    init(_pID: String, _page: Int = 1){
        GetPersonDocuments(_pID: _pID, _page: _page)
    }
    
    public func GetPersonDocuments(_pID : String, _page: Int = 1) {
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
                "method" : "person.documents",
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
                        let personDocumentBase = try decoder.decode(PersonDocumentsBase.self, from: data)
                        if let personDocumentsResult = personDocumentBase.result,
                            let personDocuments = personDocumentsResult.documents
                        {
                            DispatchQueue.main.async {
                                self.personDocuments = personDocuments
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
