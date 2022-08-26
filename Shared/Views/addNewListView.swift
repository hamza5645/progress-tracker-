//
//  addNewListView.swift
//  progress tracker 2
//
//  Created by Hamza Osama on 18/07/2022.
//

import SwiftUI
import Combine

struct addNewListView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var newListName: String = ""
    @State private var selectedColor: Color = .green
    @State private var goal = "100"
    @FocusState private var amountIsFocused: Bool
    var onSave: (String, String) -> Void
    
    var body: some View {
        NavigationView() {
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Button("Cancel") {
                        presentationMode.wrappedValue.dismiss()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Button("Done") {
                        //on save
                        onSave(newListName, selectedColor.hex)
                        
                        presentationMode.wrappedValue.dismiss()
                    }
                    .disabled(newListName.isEmpty)
                }
                
                VStack {
                    Image(systemName: Constants.Icons.line3HorizontalCircleFill)
                        .frame(maxWidth: .infinity)
                        .font(.system(size: 64))
                        .foregroundColor(selectedColor)
                    
                    TextField("List Name", text: $newListName)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                }
                .frame(height: 200)
                //            .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                
                VStack {
                    colorPickerView(selectedColor: $selectedColor)
                        .font(.system(size: 32))
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                
//                TextField("What is your goal?", text: $goal)
//                    .frame(height: 50)
//                    .textFieldStyle(.roundedBorder)
//                    .onReceive(Just(goal)) { newValue in
//                        let filtered = newValue.filter { "0123456789".contains($0) }
//                        if filtered != newValue {
//                            self.goal = filtered
//                        }
//                    }
                
                #if os(iOS)
                    .keyboardType(.numberPad)
                #endif
                
                    .focused($amountIsFocused)
                Spacer()
                Spacer()
                
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .toolbar {
//                ToolbarItemGroup(placement: .keyboard) {
//                    Spacer()
//                    
////                Button("Done") {
////                    amountIsFocused = false
////                    }
//                }
//            }
        }
    }

}

struct addNewListView_Previews: PreviewProvider {
    static var previews: some View {
        addNewListView { _, _ in
            
        }
    }
}
