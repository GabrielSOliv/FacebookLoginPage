//
//  ContentView.swift
//  FacebookPage
//
//  Created by Gabriel Oliveira on 19/02/23.
//

import SwiftUI

struct ContentView: View {
    @State var Email: String = ""
    @State var Password: String = ""
    
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                
                VStack {
                    TextField("Email", text: $Email)
                        .padding(.top, 24)
                        .padding(.bottom, 12)
                        .padding(.horizontal)
                    Divider()
                    SecureField("Password", text: $Password)
                        .padding(.top, 12)
                        .padding(.bottom, 24)
                        .padding(.horizontal)
                }.background(Color.white)
                    .cornerRadius(4.0)
                
                
                Button(action: {}){
                    Text("Login")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                        .padding(20)
                        .frame(maxWidth: .infinity)	
                        .background(Color("ButtonColor"))
                }
                
                Spacer()
                
                VStack(spacing: 8){
                    Button(action: {}){
                        Text("Don't have an account? Sign up.")
                            .foregroundColor(.white)
                            .bold()
                    }
                    
                    Button(action: {}){
                        Text("Forgot your password?")
                            .foregroundColor(Color("TextColor"))
                            .bold()
                    }
                }
                
                
            }.padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
