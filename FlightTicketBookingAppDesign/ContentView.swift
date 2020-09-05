//
//  ContentView.swift
//  FlightTicketBookingAppDesign
//
//  Created by Raphael Cerqueira on 05/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                TopView()
                
                Spacer()
                
                DateListView()
                
                Spacer()
                    
                AvailableFlightsView()
                    .frame(height: geometry.size.height * 0.75)
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
