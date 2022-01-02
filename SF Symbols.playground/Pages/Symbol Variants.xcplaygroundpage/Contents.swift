/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Symbol Variants
 SF Symbols offer a number of different design variants and you can apply one or more to a symbol.
 > Not all symbols accept all variants
 */
import SwiftUI
import PlaygroundSupport

struct Example1: View {
    var body: some View {
        SampleView(title: "Square Circle, rectangle") {
            HStack {
                Image(systemName: "trash")
                Image(systemName: "trash.circle")
                Image(systemName: "trash.square")
                Image(systemName: "list.bullet.rectangle")
            }
            .font(.largeTitle)
        }
    }
}

struct Example2: View {
    var body: some View {
        SampleView(title: "Fill") {
            HStack {
                Image(systemName: "bolt")
                Image(systemName: "bolt.fill")
                Image(systemName: "bolt.circle.fill")
                Image(systemName: "bolt.square.fill")
            }
            .font(.largeTitle)
            .foregroundColor(.green)
        }
    }
}

struct Example3: View {
    var body: some View {
        SampleView(title: "Slash") {
            Image(systemName: "lightbulb.slash")
                .font(.largeTitle)
                .foregroundColor(.yellow)
        }
    }
}
struct Example4: View {
    @State private var isLightOn = true
    var body: some View {
        SampleView(title: "symbolVariant Modifier") {
            VStack {
                HStack {
                    Image(systemName: "hare")
                    Image(systemName: "ant")
                    Image(systemName: "video.slash")
                    Image(systemName: "mic")
                }
                .symbolVariant(.fill.circle)
                Toggle(isOn: $isLightOn) {
                    Label("Lights are \(isLightOn ? "on" : "off")", systemImage: "lightbulb")
                }
                .foregroundColor(.yellow)
                .symbolVariant(isLightOn ? .none : .slash)
            }
            .font(.largeTitle)
            .foregroundColor(.teal)
        }
    }
}





    
    
    
    
    
    
    
    
    
    
    
    struct PagePreview : View {
        let title: String
        var body: some View {
            VStack {
                Text(title).font(.largeTitle)
                Divider()
                VStack {
                    Example1()
                    Example2()
                    Example3()
                    Example4()
                }
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1))
            .padding()
        }
    }
    
    PlaygroundPage.current.setLiveView(PagePreview(title: "Symbol Variant Examples"))
