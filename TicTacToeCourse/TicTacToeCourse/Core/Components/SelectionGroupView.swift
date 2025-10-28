//
//  SelectionGroupView.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 28/10/2025.
//

import SwiftUI

struct SelectionGroupView<Option: Hashable & CustomStringConvertible>: View {
    let title: String
    let options: [Option]
    @Binding var selected: Option
    
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 12) {
            titleView
            optionsView
            
        }
    }
}
    


private extension SelectionGroupView {
    var titleView: some View {
        Text(title)
            .font(.headline)
            .padding()
    }
    
    var optionsView: some View {
        HStack(spacing: 8) {
            ForEach(options, id: \.self) { option in
                optionView(for: option)
                    .button(.press) {
                        selectOption(option)
                    }
            }
        }
    }
    
    func optionView(for option: Option) -> some View {
        Text(option.description)
            .fontWeight(.medium)
            .foregroundStyle(selected == option ? Color.appTheme.accentContrastText : Color.appTheme.text)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 12)
            .background(selected == option ? Color.appTheme.info.opacity(0.6) : Color.appTheme.info.opacity(0.2))
            .shadow(.light)
            .cornerRadius(.button)
    }
    
}

private extension SelectionGroupView {
    func selectOption (_ option: Option) {
        withAnimation(.spring) {
            selected = option
        }
    }
}


#Preview {
    Preview1()
    Preview2()
}

fileprivate struct Preview1: View {
    @State private var selectedDifficulty: Difficulty = .hard
    var body: some View {
        SelectionGroupView(title: "Difficulty", options: Difficulty.allCases, selected: $selectedDifficulty)
        
            .infinityFrame()
            .padding()
            .background(Color.appTheme.viewBackground)
    }
}
    
    fileprivate struct Preview2: View {
        @State private var selectedFirst: FirstTurn = .opponent
        var body: some View {
            SelectionGroupView(title: "Who Goes First?", options: FirstTurn.allCases, selected: $selectedFirst)
            
                .infinityFrame()
                .padding()
                .background(Color.appTheme.viewBackground)
        }
        
    }

