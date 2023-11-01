import SwiftUI

public struct BitgouelButton: View {
    var text: String
    var style: ButtonStyleType
    var action: () -> Void
    
    public init(
        text: String,
        style: ButtonStyleType = .primary,
        action: @escaping () -> Void = {}
        
    ) {
        self.text = text
        self.style = .primary
        self.action = action
    }
    
    public var body: some View {
        HStack {
            Spacer()
            
            Text(text)
                .padding(.horizontal, 32)
                .padding(.vertical, 13.5)
            
            Spacer()
        }
        .buttonWrapper(action)
        .buttonStyle(BitgouelButtonStyle(style: style))
    }
}

