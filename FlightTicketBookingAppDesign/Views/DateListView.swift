//
//  DateListView.swift
//  FlightTicketBookingAppDesign
//
//  Created by Raphael Cerqueira on 05/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct DateListView: View {
    @State var selectedDate: Int = 2
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                ForEach(0..<dateData.count) { i in
                    DateView(dateItem: dateData[i], index: i, selectedIndex: self.$selectedDate)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct DateView: View {
    var dateItem: DateItem
    var index: Int
    
    @Binding var selectedIndex: Int
    
    var body: some View {
        Button(action: {
            self.selectedIndex = self.index
        }) {
            VStack {
                Text(self.dateItem.weekDay)
                    .font(.system(size: 16, weight: .medium))
                
                Text(self.dateItem.monthDay)
                    .font(.system(size: 20, weight: .bold))
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 24)
            .foregroundColor(self.selectedIndex == self.index ? Color.white : Color.gray)
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .strokeBorder(self.selectedIndex == self.index ? Color("primary") : Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 2))
            .background(
                RoundedRectangle(cornerRadius: 16).fill(self.selectedIndex == self.index ? Color("primary") : Color.white))
        }
    }
}

struct DateListView_Previews: PreviewProvider {
    static var previews: some View {
        DateListView()
    }
}
