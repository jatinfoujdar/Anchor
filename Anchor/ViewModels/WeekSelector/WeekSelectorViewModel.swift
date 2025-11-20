//
//  NeoPopDailyViewModel.swift
//  Anchor
//
//  Created by jatin foujdar on 21/11/25.
//

import SwiftUI
import Combine

final class WeekSelectorViewModel: ObservableObject {
    @Published var weekStart: Date
    @Published var selectedDate: Date
    
    private let calendar: Calendar
    
    init(currentDate: Date = Date(), calendar: Calendar = .current) {
        self.calendar = calendar
        let start = calendar.startOfWeek(for: currentDate)
        self.weekStart = start
        self.selectedDate = currentDate
    }
    
    // MARK: - Public API
    
    /// All 7 dates in the current week
    var weekDates: [Date] {
        (0..<7).compactMap { offset in
            calendar.date(byAdding: .day, value: offset, to: weekStart)
        }
    }
    
    /// Title like "4 Apr 2025 - 10 Apr 2025"
    var weekRangeString: String {
        guard let end = calendar.date(byAdding: .day, value: 6, to: weekStart) else { return "" }
        return "\(dayMonthYearString(for: weekStart)) - \(dayMonthYearString(for: end))"
    }
    
    func isSelected(_ date: Date) -> Bool {
        calendar.isDate(date, inSameDayAs: selectedDate)
    }
    
    func shortWeekdayString(for date: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateFormat = "EEEEE"   // M, T, W... (your previous code)
        return formatter.string(from: date)
    }
    
    func select(date: Date) {
        selectedDate = date
    }
    
    func previousWeek() {
        if let newStart = calendar.date(byAdding: .day, value: -7, to: weekStart) {
            weekStart = newStart
            selectedDate = newStart
        }
    }
    
    func nextWeek() {
        if let newStart = calendar.date(byAdding: .day, value: 7, to: weekStart) {
            weekStart = newStart
            selectedDate = newStart
        }
    }
    
    // MARK: - Private helpers
    
    private func dayMonthYearString(for date: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateFormat = "d MMM yyyy"
        return formatter.string(from: date)
    }
}



