//
//  ContentView.swift
//  patreons
//
//  Created by Rudraansh Dhoot on 24/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("crypto_bg")
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading) {
                    Header()
                    
                    VStack(alignment: .leading) {
                        Text("Hi Ethan 👋")
                            .font(.title)
                            .fontWeight(.semibold)
                            .padding(.top)
                            .padding(.horizontal)
                        Text("Lets trade today")
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                    }
                    
                    ZStack {
                        card()
                            .zIndex(100)
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.linearGradient(colors: [.pink, .purple], startPoint: .leading, endPoint: .trailing))
                            .frame(width: 410, height: 300)
                            .padding(.top)
                            .rotationEffect(.degrees(4))
                    }
                    
                    Text("Markets")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    ForEach(0 ..< 2) { item in
                        HStack {
                            Image(systemName: "bitcoinsign.square.fill")
                                .font(.system(size: 50))
                                .padding(.leading)
                                .foregroundColor(.yellow)
                            
                            Text("Bitcoin")
                                .font(.title3)
                                .fontWeight(.bold)
                            
                            LineGraph(data: bitcoin)
                                .frame(width: 100, height: 70)
                                .padding(.horizontal)
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("$87,000.94")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                Text("+0.83%")
                                    .font(.body)
                                    .foregroundColor(.green)
                            }.padding(.trailing)
                        }
                    HStack {
                        Image("eth_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.ultraThinMaterial)
                                    .frame(width: 60, height: 60)
                            ).padding(.leading)
                        
                        Text("Ethereum")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.leading,10)
                        
                        LineGraph(data: eth)
                            .frame(width: 90, height: 70)
                            .padding(.horizontal)
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("$20,000")
                                .font(.title3)
                                .fontWeight(.semibold)
                            Text("-0.23%")
                                .font(.body)
                                .foregroundColor(.red)
                        }.padding(.trailing)
                    }
                    HStack {
                        Image("solo_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.ultraThinMaterial)
                                    .frame(width: 60, height: 60)
                            ).padding(.leading)
                        
                        Text("Solona")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.leading,10)
                        
                        LineGraph(data: solo)
                            .frame(width: 90, height: 70)
                            .padding(.horizontal)
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("$24,000.54")
                                .font(.title3)
                                .fontWeight(.semibold)
                            Text("+0.53%")
                                .font(.body)
                                .foregroundColor(.green)
                        }.padding(.trailing)
                    }
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image(systemName: "rectangle.grid.2x2")
                .font(.title3)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.ultraThinMaterial)
                        .frame(width: 50, height: 50)
                ).padding(20)
            Spacer()
            Text("Wallet")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
            Image(systemName: "bell")
                .font(.title3)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.ultraThinMaterial)
                        .frame(width: 50, height: 50)
                ).padding(20)
        }
    }
}

struct card: View {
    var body: some View {
        VStack(alignment:.leading) {
            ZStack {
                HStack {
                    Circle()
                        .frame(width: 50, height: 50)
                        .padding()
                        .zIndex(100)
                    Circle()
                        .fill(.white.opacity(0.4))
                        .frame(width: 50, height: 50)
                        .offset(x: -55, y: 0)
                        .padding()
                    Spacer()
                    Image(systemName: "info.circle")
                        .font(.title)
                        .padding()
                }
            }
            Text("$970.391")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Text("2371 5897 8428 5569")
                .fontWeight(.semibold)
                .padding(.horizontal)
            HStack {
                VStack(alignment: .leading) {
                    Text("Ex")
                        .foregroundColor(.gray)
                    Text("04/15")
                        .foregroundColor(.gray)
                }.padding(10)
                    .padding(.leading,6)
                VStack(alignment: .leading) {
                    Text("Code")
                        .foregroundColor(.gray)
                    Text("••••")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                }.padding(10)
            }
            
        }.background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.ultraThinMaterial)
                .frame(width: 410)
        ).padding(.horizontal)
    }
}


let bitcoin: [CGFloat] = [
    600,1200,750,890,650,600,500
]

let eth: [CGFloat] = [
    1000,1200,4995,340,6350,6005,500
]

let solo: [CGFloat] = [
    1200,100,340,4995,300,99,1000
]

