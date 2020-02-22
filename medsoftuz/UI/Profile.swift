//
//  Profile.swift
//  medsoftuz
//
//  Created by Admin on 03/02/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI

struct Profile: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    @State var personID  = ""
    
    var body: some View {
        
        NavigationView {
            TabView {
                MainProfileView(personID: self.personID).tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Профиль")
                    }
                }.tag(1)
                
                PersonDocumentsMainView(personID: self.personID).tabItem {
                    VStack {
                        Image(systemName: "book")
                        Text("Документы")
                    }
                }.tag(2)
                
                PersonMedicamentsView(personID: self.personID).tabItem {
                    VStack {
                        Image(systemName: "cart.badge.plus")
                        Text("Аптека")
                    }
                }.tag(3)
                PersonPaymentsView(personID: self.personID).tabItem {
                    VStack {
                        Image(systemName: "dollarsign.circle")
                        Text("Платежи")
                    }
                }.tag(4)
            }
                
                
            .navigationBarTitle("Профиль", displayMode: .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.viewRouter.currentPage = "page1"
                    }
                }){
                    HStack {
                        Image(systemName: "chevron.left")
                            .imageScale(.large)
                        Text("Обратно")
                    }
                }.foregroundColor(Color(red: 32/255, green: 32/255, blue: 32/255))
            ))
        }
        
    }
    
}





struct MainProfileView: View {
    
    @ObservedObject var personSearchController : PersonSearchController
    
    init(personID: String) {
        personSearchController = PersonSearchController()
        personSearchController.GetPersonInfo(_pID: personID)
    }
    
    var body: some View {
        
        ForEach(self.personSearchController.people) { person in
            VStack(alignment: .leading) {
                HStack {
                    Text("Имя: ")
                    Text(person.firstname!)
                }
                .padding(.all, 5)
                
                Divider()
                HStack {
                    Text("Фамилия: ")
                    Text(person.lastname!)
                }
                .padding(.all, 5)
                
                Divider()
                
                HStack {
                    Text("Отечество: ")
                    Text(person.middlename ?? "")
                }
                .padding(.all, 5)
                
                Divider()
                HStack {
                    Text("Дата рождения: ")
                    Text(person.birthdate!)
                }
                .padding(.all, 5)
                
                Divider()
                HStack {
                    Text("Дата регистрации: ")
                    Text(person.registrationdate!)
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


struct Profile_Previews: PreviewProvider {
    
    static var previews: some View {
        Profile(personID: "332").environmentObject(ViewRouter())
    }
}


//
               //                HStack {
               //                    Text("Паспорт: ")
               //                    Text(person.passport!)
               //                }
               //                .padding(.all, 5)
               //
               //                Divider()
               //
               //                HStack {
               //                    Text("Адрес: ")
               //                    Text(person.address!)
               //                }
               //                .padding(.all, 5)
               //
               //                Divider()
               
               //                HStack {
               //                    Text("Телефон номер: ")
               //                    Text(person.phone!)
               //                }
               //                .padding(.all, 5)
               //
               //                Divider()
               //
               //                HStack {
               //                    Text("Счет-фактура: ")
               //                    Text(person.invoice!)
               //                }
               //                .padding(.all, 5)
               //
               //                Divider()
               //
               //                HStack {
               //                    Text("Дата Счет-фактура: ")
               //                    Text(person.invoice_date!)
               //                }
               //                .padding(.all, 5)
               //
               //                Divider()
               
               //                Spacer()
