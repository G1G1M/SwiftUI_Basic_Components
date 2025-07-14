import SwiftUI

struct DemoRow: View {
    var data: MockData

    var body: some View {
        HStack {
            Image(data.name)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)

            Text(data.title)
                .font(.headline)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}
