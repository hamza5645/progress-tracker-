//
//  colorPickerView.swift
//  progress tracker 2
//
//  Created by Hamza Osama on 18/07/2022.
//

import SwiftUI

struct colorPickerView: View {
    
    let colors: [Color] = [.red, .green, .blue, .yellow, .purple, .pink]
    @Binding var selectedColor: Color
    
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                Image(systemName: selectedColor == color ? Constants.Icons.recordCircleFil: Constants.Icons.circleFill)
                .foregroundColor(color)
                .clipShape(Circle())
                .onTapGesture {
                    print(color)
                    selectedColor = color
                }
            }
        }
    }
}

struct colorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        colorPickerView(selectedColor: .constant(.green))
    }
}
