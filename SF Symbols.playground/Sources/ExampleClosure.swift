
import SwiftUI

public struct SampleView<Content: View>: View {
    let title: String
    let content: Content
    public init(title: String, @ViewBuilder content: () -> Content){
        self.title = title
        self.content = content()
    }
    
    public var body: some View {
        VStack {
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(.secondary)
            content
            Divider()
        }
    }
}
