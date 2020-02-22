//
//  ContentView.swift
//  medsoftuz
//
//  Created by Admin on 03/02/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    //    init() {
    //        UINavigationBar.appearance().backgroundColor = .white
    //    }
    
    @State var showMenu = false
    @State var personID = ""
    @State var personName = ""
    
    var body: some View {
        
        
        return VStack {
            if self.viewRouter.currentPage == "page1" {
                SuperView(showMenu: self.$showMenu, personID: self.$personID)
            } else if viewRouter.currentPage == "page2" {
                Profile(personID: self.personID)
                    .transition(.move(edge: .trailing))
                //AnyTransition.opacity.combined(with: .move(edge: .trailing))
            }
        }
        
    }
}

struct MainView: View {
    
    @ObservedObject var personInfoController = PersonInfoController()
    
    @EnvironmentObject var viewRouter : ViewRouter
    @Binding var personID : String
    
    var body: some View {
        VStack {
            
            HStack {
                TextField("Код пациента", text: $personID){
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .font(.title)
                
                Button(action: {
                    UIApplication.shared.endEditing()
                    print(self.$personID)
                    self.personInfoController.people.removeAll()
                    self.personInfoController.GetPersonInfo(_pID: self.personID)
                }) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.large)
                        
                        Text("Поиск")
                            .fontWeight(.regular)
                            .font(.title)
                        
                    }
                    .padding()
                    .foregroundColor(.black)
                    
                }
                .foregroundColor(.white)
            }
            .padding(.leading, 10)
            .padding(.top, 10)
            .padding(.bottom, 0)
            
            Divider()
            
            GeometryReader { geometry in
                ForEach(self.personInfoController.people) { person in
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Text("Имя: ")
                            Text(person.firstname!)
                        }
                        .padding(.all, 5)
                        
                        HStack {
                            Text("Фамилия: ")
                            Text(person.lastname!)
                        }
                        .padding(.all, 5)
                        
                        HStack {
                            Text("Дата рождения: ")
                            Text(person.birthdate!)
                        }
                        .padding(.all, 5)
                        
                        
                        
                        HStack(alignment: .bottom) {
                            Text("Подробнее")
                                .fontWeight(.bold)
                            Image(systemName: "chevron.right.2")
                                .imageScale(.large)
                            
                        }
                        .padding(.all, 5)
                        .foregroundColor(.black)
                        
                    }
                    .frame(width: geometry.size.width - 40, alignment: .topLeading)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.2), radius: 7, x: 0, y: 2)
                        
                    .padding(.top, 20)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    .onTapGesture {
                        self.viewRouter.currentPage = "page2"
                    }
                }
            }
            
            
        }
        //.background(Color(red: 32/255, green: 32/255, blue: 32/255))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewRouter())
    }
}


struct SuperView: View {
    
    @Binding var showMenu : Bool
    @Binding var personID : String
    
    var body: some View {
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
        }
        
        return NavigationView {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    MainView(personID: self.$personID)
                        .frame(width: geometry.size.width,
                               height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width / 2 : 0)
                        .disabled(self.showMenu ? true : false)
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width / 2)
                            .transition(.move(edge: .leading))
                    }
                }
                .gesture(drag)
            }
            .navigationBarTitle("Пациенты", displayMode: .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }){
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }.foregroundColor(Color(red: 32/255, green: 32/255, blue: 32/255))
            ))
        }
    }
}


extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
