//
//  LoginView.swift
//  SwiftUI ToDo List
//
//  Created by mnameit on 25/05/23.
//

import SwiftUI

struct LoginView: View {
    @State var emailTxtFld = ""
    @State var passwordTxtFld = ""
     
     var body: some View {
         NavigationView {
             VStack {
                 //Header View
                 HeaderView
                 
                 //Login Form
                 LoginForm
                 
                 //Create Account
                 CreateAccountView
                 
                 Spacer()
             }
           
         }
        
     }
     
     var HeaderView: some View {
         ZStack {
             RoundedRectangle(cornerRadius: 0)
                 .foregroundColor(.pink)
                 .rotationEffect(Angle(degrees: 15))
             VStack {
                 Text("To Do List")
                     .foregroundColor(Color.white)
                     .font(.system(size: 30))
                     .bold()
                 Text("Get Things Done")
                     .foregroundColor(.white)
                     .font(.system(size: 20))
             }
             .padding(.top, 30)
         }
         .frame(width: UIScreen.main.bounds.width * 3,
                 height: 300)
         .offset(y: -100)
     }
     
     var LoginForm: some View {
         Form {
             TextField("Email Address", text: $emailTxtFld)
             SecureField("Password", text: $passwordTxtFld)
             Button {
                 
             } label: {
                 ZStack {
                     RoundedRectangle(cornerRadius: 10)
                     Text("Log In")
                         .foregroundColor(.white)
                         .bold()
                 }
             }
         }
     }
     
     var CreateAccountView: some View {
         VStack {
             Text("New Arround Here")
             NavigationLink("Create Account", destination: RegisterView())
         }.padding(.bottom, 50)
     }
     
 }

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
