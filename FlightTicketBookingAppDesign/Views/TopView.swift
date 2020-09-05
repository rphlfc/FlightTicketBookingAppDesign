//
//  TopView.swift
//  FlightTicketBookingAppDesign
//
//  Created by Raphael Cerqueira on 05/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }) {
                Image(systemName: "chevron.left")
                    .font(.system(size: 24, weight: .medium))
                
                Text("Flights")
                    .font(.system(size: 32, weight: .bold))
                    .padding(.leading, 8)
                
            }
            .foregroundColor(Color("secondary"))
            
            Spacer()
        }
        .padding()
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
