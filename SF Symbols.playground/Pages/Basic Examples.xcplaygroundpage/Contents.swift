/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Basic Examples With Modifiers
 This page demonstrates some simple examples of using SFSymbols and applying size and color modifiers.
 > Symbols can accept some text and image modifiers\
 [Documentation](https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/)
 */
import SwiftUI
import PlaygroundSupport

struct Example1: View {
    var body: some View {
        SampleView(title: "Modify as an Image") {
            Image(systemName: "cloud")
                .imageScale(.large)
                .foregroundStyle(Color.blue)
            
        }
    }
}

struct Example2: View {
    var body: some View {
        SampleView(title: "Modify as Text") {
            Image(systemName: "umbrella")
                .font(.largeTitle)
                .foregroundColor(.green)
        }
    }
}

struct Example3: View {
    var body: some View {
        SampleView(title: "Mix and Match") {
            Image(systemName: "sun.max")
                .font(.system(size: 40, weight: .bold))
                .foregroundStyle(.linearGradient(Gradient(colors: [.yellow,.red]), startPoint: .top, endPoint: .bottom))
        }
    }
}

struct Example4: View {
    var body: some View {
        SampleView(title: "More Mix and Match") {
            VStack(alignment: .leading) {
                Image(systemName: "wind.snow")
                    .font(.title)
                Image(systemName: "wind.snow")
                    .imageScale(.large)
                Image(systemName: "wind.snow")
                    .font(.title)
                    .imageScale(.large)
            }
            .foregroundColor(.gray)
        }
    }
}

struct Example5: View {
    var body: some View {
        SampleView(title: "As a Label") {
            Button(role: .destructive) {
                
            } label: {
                Label("Delete", systemImage: "trash")
                    .font(.largeTitle)
            }
           
        }
    }
}

struct Example6: View {
    var body: some View {
        SampleView(title: "Label Image Size only") {
            VStack(alignment: .trailing) {
                Label("Rain", systemImage: "cloud.drizzle")
                Label("Rain", systemImage: "cloud.drizzle")
                    .imageScale(.large)
            }
        }
    }
}

struct Example7: View {
    var body: some View {
        SampleView(title: "String Interpolation") {
            Text("New idea **\(Image(systemName: "lightbulb"))**")
                .foregroundColor(.yellow)
                .font(.title)
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
                Example5()
                Example6()
                Example7()
            }
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1))
        .padding()
    }
}


PlaygroundPage.current.setLiveView(PagePreview(title: "Basic Examples"))
