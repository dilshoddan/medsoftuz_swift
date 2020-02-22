//
//  PersonDocumentsView.swift
//  medsoftuz
//
//  Created by Admin on 10/02/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI

struct PersonDocumentsMainView: View {
    @ObservedObject var personDocumentsController : PersonDocumentsController
    
    init(personID: String) {
        personDocumentsController = PersonDocumentsController(_pID: personID)
    }
    
    var body: some View {
        List{
            ForEach(self.personDocumentsController.personDocuments) { document in
                VStack(alignment: .leading) {
                    HStack {
                        Text("Nazvaniye: ")
                        Text(document.document_caption!)
                    }
                    .padding(.all, 5)
                    
                    Divider()
                    HStack {
                        Text("created_date: ")
                        Text(document.created_date!)
                    }
                    .padding(.all, 5)
                    
                    Divider()
                    HStack {
                        Text("sign_date: ")
                        Text(document.sign_date!)
                    }
                    .padding(.all, 5)
                    
                    Divider()
                    HStack {
                        Text("status: ")
                        Text(document.status!)
                    }
                    .padding(.all, 5)
                    
                    Divider()
                    
                }
                .frame(alignment: .topLeading)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.2), radius: 7, x: 0, y: 2)
                .padding(.top, 15)
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .padding(.bottom, 15)
                
            }
        }
    }
}

struct PersonDocumentsMainView_Previews: PreviewProvider {
    static var previews: some View {
        PersonDocumentsMainView(personID: "")
    }
}



