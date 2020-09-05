//
//  CardView.swift
//  FlightTicketBookingAppDesign
//
//  Created by Raphael Cerqueira on 05/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var companyImage: String
    var departureTime: String
    var duration: String
    var number: String
    var price: String
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Sydney")
                        .font(.system(size: 20, weight: .bold))
                    
                    Text("(SYD)")
                        .padding(.top, 8)
                }
                
                Spacer()
                
                Image(self.companyImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("London")
                        .font(.system(size: 20, weight: .bold))
                    
                    Text("(LCY)")
                        .padding(.top, 8)
                }
            }
            .foregroundColor(Color("primary"))
            
            HStack {
                Text("Depart")
                
                Spacer()
                
                Text("Flight No")
            }
            .foregroundColor(Color.gray)
            .padding(.top)
            
            HStack {
                Text(departureTime)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color("secondary"))
                
                Spacer()
                
                Text(duration)
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                Text(number)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color("secondary"))
            }
            
            HStack {
                Circle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 25, height: 25)
                    .overlay(Circle()
                        .frame(width: 15, height: 15)
                        .foregroundColor(Color.gray))
                
                Spacer()
                
                Image(systemName: "airplane")
                    .font(.system(size: 24))
                    .foregroundColor(Color.gray.opacity(0.7))
                
                Spacer()
                
                Circle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 25, height: 25)
                    .overlay(Circle()
                        .strokeBorder(Color.gray, lineWidth: 2)
                        .frame(width: 15, height: 15)
                        .foregroundColor(Color.white))
            }
            .background(Line()
                .stroke(style: StrokeStyle(lineWidth: 1, dash: [6]))
                .foregroundColor(Color.gray.opacity(0.5))
                .frame(height: 1)
                .padding(.horizontal, 24))
            .padding(.top, 8)
            
            HStack(alignment: .bottom) {
                Text("$\(price)")
                    .font(.system(size: 26, weight: .bold))
                    .foregroundColor(Color("accent"))
                
                Text("Ticket Price")
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("View Details")
                        .foregroundColor(Color("accent"))
                }
            }
            .padding(.top)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(companyImage: "emirates", departureTime: "8:30 AM", duration: "23 h 25 m", number: "EK008", price: "750")
    }
}
