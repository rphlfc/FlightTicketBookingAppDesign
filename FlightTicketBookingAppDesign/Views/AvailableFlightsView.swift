//
//  AvailableFlightsView.swift
//  FlightTicketBookingAppDesign
//
//  Created by Raphael Cerqueira on 05/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct AvailableFlightsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Sort by:")
                
                Button(action: {
                    
                }) {
                    HStack {
                        Text("Price")
                        
                        Image(systemName: "chevron.down")
                            .padding(.leading)
                    }
                    .padding(12)
                    .background(Color.white.opacity(0.2))
                    .clipShape(Capsule())
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "slider.horizontal.3")
                        .rotationEffect(Angle(degrees: -90))
                        .padding()
                        .background(Color.white.opacity(0.2))
                        .clipShape(Circle())
                }
            }
            
            Text("12 flights available from Sydney to London")
                .font(.system(size: 16, weight: .medium))
                .padding(.top)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 30) {
                    CardView(companyImage: "emirates", departureTime: "8:30 AM", duration: "23 h 25 m", number: "EK008", price: "790")
                    
                    CardView(companyImage: "british-airways", departureTime: "12:45 PM", duration: "24 h 30 m", number: "BA5069", price: "750")
                }
                .padding(.top, 8)
                .padding(.bottom, 40)
            }
        }
        .foregroundColor(Color.white)
        .padding(.horizontal, 30)
        .padding(.top, 40)
        .background(Color("primary"))
        .cornerRadius(40)
    }
}

struct AvailableFlightsView_Previews: PreviewProvider {
    static var previews: some View {
        AvailableFlightsView()
    }
}
