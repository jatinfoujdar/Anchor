//
//  NeoPopDailyViewModel.swift
//  Anchor
//
//  Created by jatin foujdar on 21/11/25.
//

import SwiftUI
import Combine

final class NeoPopDailyDayViewModel: ObservableObject, Identifiable {
    let id = UUID()
    
    @Published var date: Date
    @Published var weekdayInitial: String
    @Published var dayNumber: String
    @Published var isSelected: Bool
    
    var isToday: Bool {
        Calendar.current.isDateInToday(date)
    }
    
    init(
        date: Date,
        weekdayInitial: String,
        dayNumber: String,
        isSelected: Bool = false
    ) {
        self.date = date
        self.weekdayInitial = weekdayInitial
        self.dayNumber = dayNumber
        self.isSelected = isSelected
    }
}

