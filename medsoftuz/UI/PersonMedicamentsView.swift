//
//  PersonDocumentsView.swift
//  medsoftuz
//
//  Created by Admin on 10/02/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI

struct PersonMedicamentsView: View {
    @ObservedObject var personMedicamentsController : PersonMedicamentsController
    
    init(personID: String) {
        personMedicamentsController = PersonMedicamentsController(_pID: personID)
    }
    
    var body: some View {
        List{
            ForEach(self.personMedicamentsController.personMedicaments) { medicaments in
                VStack(alignment: .leading) {
                    HStack {
                        Text("UserID: ")
                        Text(medicaments.user_id!)
                    }
                    .padding(.all, 5)
                    
                    Divider()
                    HStack {
                        Text("Doctor firstname: ")
                        Text(medicaments.doctor!.firstname!)
                    }
                    .padding(.all, 5)
                    
                    Divider()
                    HStack {
                        Text("Doctor Lastname: ")
                        Text(medicaments.doctor!.lastname!)
                    }
                    .padding(.all, 5)
                    
                    Divider()
                    HStack {
                        Text("Quantity: ")
                        Text(medicaments.quantity!)
                    }
                    .padding(.all, 5)
                    
                    Divider()
                    HStack {
                        Text("Drug: ")
                        Text(medicaments.lot_list!.drug!.name!)
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

struct PersoMedicamentsView_Previews: PreviewProvider {
    static var previews: some View {
        PersonMedicamentsView(personID: "")
    }
}



