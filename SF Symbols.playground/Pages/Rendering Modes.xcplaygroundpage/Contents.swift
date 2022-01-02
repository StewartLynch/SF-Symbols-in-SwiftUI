/*:
 [< Previous](@previous)                    [Home](Introduction)
 ## Symbol Rendering Modes
 > SF Symbols 3 provides four rendering modes that enable multiple options when applying color to symbols.\
 */
import SwiftUI
import PlaygroundSupport

struct Example1: View {
    var body: some View {
        SampleView(title: "Monochrome - default") {
            VStack {
                HStack {
                    Image(systemName: "cloud")
                    Image(systemName: "cloud.sun")
                    Image(systemName: "cloud.sun.rain")
                }
                HStack {
                    Image(systemName: "cloud")
                    Image(systemName: "cloud.sun")
                    Image(systemName: "cloud.sun.rain")
                }
                .symbolVariant(.fill)
            }
            .font(.largeTitle)
            .foregroundColor(.blue)
            .symbolRenderingMode(.monochrome)
        }
    }
}

struct Example2: View {
    var body: some View {
        SampleView(title: "Heirarchical") {
            VStack {
                HStack {
                    Image(systemName: "cloud")
                    Image(systemName: "cloud.sun")
                    Image(systemName: "cloud.sun.rain")
                }
                HStack {
                    Image(systemName: "cloud")
                    Image(systemName: "cloud.sun")
                    Image(systemName: "cloud.sun.rain")
                }
                .symbolVariant(.fill)
            }
            .font(.largeTitle)
            .foregroundColor(.blue)
            .symbolRenderingMode(.hierarchical)
        }
    }
}

struct Example3: View {
  var body: some View {
      SampleView(title: "Palette") {
          VStack {
              HStack {
                  Image(systemName: "cloud")
                  Image(systemName: "cloud.sun")
                  Image(systemName: "cloud.sun.rain")
              }
              HStack {
                  Image(systemName: "cloud")
                  Image(systemName: "cloud.sun")
                  Image(systemName: "cloud.sun.rain")
              }
              .symbolVariant(.fill)
          }
          .font(.largeTitle)
//          .foregroundColor(.blue)
          .symbolRenderingMode(.palette)
          .foregroundStyle(Color.red, Color.green, Color.gray)
      }
  }
}

struct Example4: View {
    var body: some View {
        SampleView(title: "Multi-Color") {
            VStack {
                HStack {
                    Image(systemName: "cloud")
                    Image(systemName: "cloud.sun")
                    Image(systemName: "cloud.sun.rain")
                }
                HStack {
                    Image(systemName: "cloud")
                    Image(systemName: "cloud.sun")
                    Image(systemName: "cloud.sun.rain")
                }
                .symbolVariant(.fill)
            }
            .font(.largeTitle)
            .foregroundColor(.blue)
            .symbolRenderingMode(.multicolor)
        }
        .background(.quaternary)
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

PlaygroundPage.current.setLiveView(PagePreview(title: "Rendering Modes"))
