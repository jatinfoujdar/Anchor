//
//  Untitled.swift
//  Anchor
//
//  Created by jatin foujdar on 21/11/25.
//
import SwiftUI

struct WeekSelectorView: View {
    @StateObject private var viewModel: WeekSelectorViewModel
    
    // Allow injection of initial date if you want
    init(initialDate: Date = Date()) {
        _viewModel = StateObject(wrappedValue: WeekSelectorViewModel(currentDate: initialDate))
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            header
            daysRow
        }
        .padding()
    }
    
    // MARK: - Header
    
    private var header: some View {
        HStack {
            Button(action: viewModel.previousWeek) {
                Image(systemName: "chevron.left")
            }
            
            Spacer()
            
            Text(viewModel.weekRangeString)
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Spacer()
            
            Button(action: viewModel.nextWeek) {
                Image(systemName: "chevron.right")
            }
            
            Button(action: share) {
                Image(systemName: "square.and.arrow.up")
            }
        }
    }
    
    // MARK: - Days Row
    
    private var daysRow: some View {
        HStack(spacing: 12) {
            ForEach(viewModel.weekDates, id: \.self) { date in
                let isSelected = viewModel.isSelected(date)
                
                Button {
                    viewModel.select(date: date)
                } label: {
                    Text(viewModel.shortWeekdayString(for: date))
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .padding(.vertical)
                        .padding(.horizontal)
                        .background(
                            Group {
                                if isSelected {
                                    Color.green.opacity(0.2)
                                } else {
                                    Color.clear
                                }
                            }
                        )
                        .foregroundColor(isSelected ? .green : .primary)
                        .clipShape(Capsule())
                }
                .buttonStyle(.plain)
            }
        }
    }
    
    // MARK: - Actions
    
    private func share() {
        // Hook into ShareLink / UIActivityViewController from here later
        print("Share tapped for week starting \(viewModel.weekStart)")
    }
}

// MARK: - Calendar helper (same as before)

extension Calendar {
    func startOfWeek(for date: Date) -> Date {
        let comps = dateComponents([.yearForWeekOfYear, .weekOfYear], from: date)
        return self.date(from: comps) ?? date
    }
}

struct WeekSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        WeekSelectorView()
    }
}
