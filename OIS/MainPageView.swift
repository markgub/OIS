//
//  SwiftUIView.swift
//  OIS
//
//  Created by root user on 14.03.2021.
//

import SwiftUI


struct MainPageView: View {
    
    
    @State var selectedIndex = 0
    
    let darkRedColor = Color(red: 0.72, green: 0.07, blue: 0.20)
    
    let lightGreyColor = Color(red: 0.58, green: 0.59, blue: 0.69)
    
    
    let tabBarImageNames = ["list.bullet.rectangle", "calendar.badge.clock", "eyeglasses", "message", "star"]
    
    var body: some View {
        
        VStack {
            
            ZStack {
                switch selectedIndex {
                case 0:

                        VStack{
                            HStack{
                                LessonsShortView()
                            }
                            HStack{
                                LatestGradesView()
                            }
                            .navigationTitle("Avaleht")
                            .navigationBarBackButtonHidden(true)
                        }
                case 1:
               
                        Text("Tunniplaan")
                            .navigationTitle("Minu tunniplaan")
                            .navigationBarBackButtonHidden(true)
                    
                case 2:
                  
                        Text("Õpinkukava")
                            .navigationTitle("Minu õpinkukava")
                            .navigationBarBackButtonHidden(true)
                    
                case 3:
                   
                        Text("Teated")
                            .navigationTitle("Teated")
                            .navigationBarBackButtonHidden(true)
                case 4:
                  
                        Text("Õppetulemused")
                            .navigationTitle("Õppetulemused")
                            .navigationBarBackButtonHidden(true)
                default:
                    Text("Reamaining tabs")
                        .navigationBarBackButtonHidden(true)
                }
            }
            
            Spacer()
            
            HStack {
                ForEach(0..<5) { num in
                    Button(action: {
                        selectedIndex = num
                    }, label: {
                        Spacer()
                        Image(systemName: tabBarImageNames[num])
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(selectedIndex == num ? darkRedColor : lightGreyColor)
                        Spacer()
                    })
                    
                }
            }
        }
    }
}




struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
