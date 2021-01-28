//
//  Login.swift
//  iCareLogin
//
//  Created by Sayyid Maulana Khakul Yakin on 14/01/21.
//

import SwiftUI

struct Login: View{
    
    @State var email = ""
    @State var pass = ""
    @State var color = Color.black.opacity(0.7)
    @State var visible = false
    @State var alert = false
    @State var error = ""
    @State var title = ""
    @State var isActive : Bool = false
    
    let borderColor = Color(red: 255.0/255.0, green: 192.0/255.0, blue: 203.0/255.0)
    
    var body: some View{
        NavigationView {

            VStack(){
                Image("logo").resizable().frame(width: 250.0, height: 75.0, alignment: .top)
                
                Text("Sign in to your account")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 15)
                TextField("Username or Email",text:self.$email)
                    .autocapitalization(.none)
                    .padding()
                    .background(RoundedRectangle(cornerRadius:6).stroke(Color("Dominant"),lineWidth:2))
                    .padding(.horizontal, 25)
                HStack(spacing: 15){
                    VStack{
                        if self.visible {
                            TextField("Password", text: self.$pass)
                                .autocapitalization(.none)
                        } else {
                            SecureField("Password", text: self.$pass)
                                .autocapitalization(.none)
                        }
                    }
                    Button(action: {
                        self.visible.toggle()
                    }) {
                        //Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
                        Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(self.color)
                            .opacity(0.8)
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 6)
                .stroke(Color("Dominant"),lineWidth: 2))
                .padding(.top, 10)
                .padding(.horizontal, 25)
                
                HStack{
                    Spacer()
                    Button(action: {
                        self.ResetPassword()
                        self.visible.toggle()
                    }) {
                        Text("Forget Password")
                            .fontWeight(.medium)
                            .foregroundColor(Color("Dominant"))
                    }.padding(.top, 10.0)
                }
                .padding()
                .padding(.horizontal, 25)
                
                // Sign in button
                NavigationLink(
                    destination: DashboardController(),
                    isActive: $isActive,
                    label: {
                        Text("")
                    })
                
                Button(action: {
//                    self.Verify()
                    isActive = true
                }) {
                    Text("Sign in")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical)
                     .frame(width: UIScreen.main.bounds.width - 50)
                }
                .background(Color("Dominant"))
                .cornerRadius(6)
                .alert(isPresented: $alert){()->Alert in
                    return Alert(title: Text("\(self.title)"), message: Text("\(self.error)"), dismissButton:
                        .default(Text("OK").fontWeight(.semibold)))
                }
            }
        }
    }
    
    func Verify(){
        
//        if self.email != "" && self.pass != ""{
//
//        }else{
//            self.title = "Login Error"
//            self.error = "Please fill all the content property"
//            self.alert = true
//        }
    }
    
    func ResetPassword(){
        if self.email != ""{
            
            
        }
        else{
            
            self.error = "Email Id is empty"
            self.alert.toggle()
        }
    }
}

struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        Group {
            Login()
        }
    }
}
