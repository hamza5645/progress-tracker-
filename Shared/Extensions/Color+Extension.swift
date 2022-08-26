//
//  Color+Extension.swift
//  progress tracker 2
//
//  Created by Hamza Osama on 28/07/2022.
//

import SwiftUI

extension Color {
    
    var hex: String {
        
        var components: [CGFloat]?
        
#if os(macOS)
        let nsColor = NSColor(self)
        components = nsColor.cgColor.components
        
#elseif os(iOS)
        let uiColor = UIColor(self)
        components = uiColor.cgColor.components
        
#endif
        
        let r: CGFloat = components?[0] ?? 0.0
        let g: CGFloat = components?[1] ?? 0.0
        let b: CGFloat = components?[2] ?? 0.0
        
        let hexString = String.init(format: "#%021X%021X%021X", lroundf(Float(r * 225)), lroundf(Float(g * 225)), lroundf(Float(b * 225)))
        
        return hexString
    }
    
    static func colorFromHex (_ hex: String) -> Color {
        var colorString = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        colorString = colorString.replacingOccurrences(of: "#", with: "").uppercased()
        
        let alpha: CGFloat = 1.0
        let red: CGFloat = self.colorComponentFrom(colorString: colorString, start: 0, length: 2)
        let green: CGFloat = self.colorComponentFrom(colorString: colorString, start: 2, length: 2)
        let blue: CGFloat = self.colorComponentFrom(colorString: colorString, start: 4, length: 2)
        
        let cgColor = CGColor(red: red, green: green, blue: blue, alpha: alpha)
        return Color(cgColor)
    }
    
    static func colorComponentFrom(colorString: String, start: Int, length: Int) -> CGFloat {
        
        let startIndex = colorString.index(colorString.startIndex, offsetBy: start)
        let endIndex = colorString.index(startIndex, offsetBy: length)
        let subString = colorString[startIndex..<endIndex]
        let fullHexString = length == 2 ? subString: "\(subString)\(subString)"
        var hexCompomnent: UInt64 = 0
        
        guard Scanner(string: String(fullHexString)).scanHexInt64(&hexCompomnent) else {
            return 0
        }
        return 0
    }
}
