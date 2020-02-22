//
//  PersonDocumentsView.swift
//  medsoftuz
//
//  Created by Admin on 10/02/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI

struct PersonPaymentsView: View {
    @ObservedObject var personPaymentsController : PersonPaymentsController
    
    init(personID: String) {
        personPaymentsController = PersonPaymentsController(_pID: personID)
    }
    
    var body: some View {
        List{
            ForEach(self.personPaymentsController.payments) { payment in
                VStack(alignment: .leading) {
                    HStack {
                        Text("id: ")
                        Text(payment.id!)
                    }
                    .padding(.all, 5)
                    
                    Divider()
                    HStack {
                        Text("amount: ")
                        Text(payment.amount!)
                    }
                    .padding(.all, 5)
                    Divider()
                    HStack {
                        Text("date: ")
                        Text(payment.payment_date!)
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

struct PersonPaymentsView_Previews: PreviewProvider {
    static var previews: some View {
        PersonPaymentsView(personID: "")
    }
}



