//
//  MenuView.swift
//  medsoftuz
//
//  Created by Admin on 03/02/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    
    @EnvironmentObject var viewRouter : ViewRouter
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Пациенты")
                    .foregroundColor(.gray)
                    .font(.headline)

            }.padding(.top, 100)
                .onTapGesture {
                    print("Person Clicked")
                    self.viewRouter.currentPage = "page2"
            }

            HStack {
                Image(systemName: "cart.badge.plus")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Аптека")
                    .foregroundColor(.gray)
                    .font(.headline)

            }.padding(.top, 40)

            HStack {
                Image(systemName: "square.and.pencil")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Аптека врачей")
                    .foregroundColor(.gray)
                    .font(.headline)

            }.padding(.top, 40)

            HStack {
                Image(systemName: "sum")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Отчеты")
                    .foregroundColor(.gray)
                    .font(.headline)
            }.padding(.top, 40)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 32/255, green: 32/255, blue: 32/255))
        .edgesIgnoringSafeArea(.all)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView().environmentObject(ViewRouter())
    }
}





//with problems
//HStack {
//    VStack(alignment: .leading) {
//        Image(systemName: "person")
//            .foregroundColor(.gray)
//            .imageScale(.large)
//        .onTapGesture {
//                print("Person Clicked")
//                self.viewRouter.currentPage = "page2"
//        }
//
//        Image(systemName: "cart.badge.plus")
//            .foregroundColor(.gray)
//            .imageScale(.large)
//            .padding(.top, 40)
//
//
//        Image(systemName: "square.and.pencil")
//            .foregroundColor(.gray)
//            .imageScale(.large)
//            .padding(.top, 40)
//
//        Image(systemName: "sum")
//            .foregroundColor(.gray)
//            .imageScale(.large)
//            .padding(.top, 40)
//
//    }.padding(.top, 100)
//
//
//    VStack(alignment: .trailing) {
//
//        Text("Пациенты")
//            .foregroundColor(.gray)
//            .font(.headline)
//            .onTapGesture {
//                print("Person Clicked")
//                self.viewRouter.currentPage = "page2"
//        }
//
//
//        Text("Аптека")
//            .foregroundColor(.gray)
//            .font(.headline)
//            .padding(.top, 40)
//
//        Text("Аптека врачей")
//            .foregroundColor(.gray)
//            .font(.headline)
//            .padding(.top, 40)
//
//        Text("Отчеты")
//            .foregroundColor(.gray)
//            .font(.headline)
//            .padding(.top, 40)
//
//    }.padding(.top, 100)
//}
