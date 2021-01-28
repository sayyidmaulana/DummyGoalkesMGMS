//
//  Dashboard.swift
//  iCareLogin
//
//  Created by Sayyid Maulana Khakul Yakin on 18/01/21.
//

import SwiftUI

struct DashboardController: View {
    
    @State var isActive : Bool = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
            ScrollView() {
                VStack() {
                    Text("Monitoring Digital Alarm and Automatic Manifold")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 25))
                        .padding(.horizontal, 15)
                        .padding(.top, 25)
                        .lineLimit(2)
                    Text("Goalkes services for your medical gas monitoring system")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 15)
                        .padding(.top, 25)
                        .lineLimit(2)
                        
                    ZStack() {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 250, alignment: .center)
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                            .padding(.horizontal, 35)
                            .padding(.vertical, 50)
                        LazyVGrid(columns: [
                            GridItem(.flexible(minimum: 90, maximum: 90)),
                            GridItem(.flexible(minimum: 90, maximum: 90))
                        ], spacing: 20, content: {
                            ForEach(0...3, id: \.self) { num in
                                VStack() {
                                    Button(action: {
                                        isActive = true
                                    }, label: {
                                        if num == 0 {
                                            VStack () {
                                                Image(systemName: "alarm.fill")
                                                    .resizable()
                                                    .frame(width: 40, height: 40)
                                                    .foregroundColor(.red)
                                                Text("Digital Alarm")
                                                    .font(.system(size: 12))
                                                    .foregroundColor(.black)
                                            }
                                        } else if num == 1 {
                                            VStack() {
                                                Image(systemName: "cloud.fill")
                                                    .resizable()
                                                    .frame(width: 40, height: 40)
                                                    .foregroundColor(.red)
                                                Text("Automatic Manifold")
                                                    .font(.system(size: 12))
                                                    .foregroundColor(.black)
                                            }
                                        } else if num == 2 {
                                            VStack() {
                                                Image(systemName: "message.fill")
                                                    .resizable()
                                                    .frame(width: 40, height: 40)
                                                    .foregroundColor(.red)
                                                Text("Report")
                                                    .font(.system(size: 12))
                                                    .foregroundColor(.black)
                                            }
                                        } else if num == 3 {
                                            VStack() {
                                                Image(systemName: "mail.fill")
                                                    .resizable()
                                                    .frame(width: 40, height: 40)
                                                    .foregroundColor(.red)
                                                Text("Setting")
                                                    .font(.system(size: 12))
                                                    .foregroundColor(.black)
                                            }
                                        }

                                    })
                                    NavigationLink(
                                        destination: MonitoringController(),
                                        isActive: $isActive,
                                        label: {
                                            Text("")
                                        })
                                }
                            }

                        })
                    }
                    Image("logo").resizable().frame(width: 250.0, height: 75.0, alignment: .bottom)
                    
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Log out")
                            .foregroundColor(.white)
                    })
                    .frame(width: UIScreen.main.bounds.width - 50, height: 40)
                    .background(Color("Dominant"))
                    .cornerRadius(6)
                    .padding(.top, 25)
                    .padding(.bottom, 25)
                }
            }
            .navigationTitle("Dashboard")
            .navigationBarBackButtonHidden(true)
        }
        
}

struct DashboardPreviews: PreviewProvider {
    static var previews: some View {
        Group {
            DashboardController()
        }
    }
}
