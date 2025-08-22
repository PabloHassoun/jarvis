import SwiftUI

struct ContentView: View {
    @State private var status: String = "Unknown"
    @State private var isLoading: Bool = false

    private let baseURL = URL(string: "http://127.0.0.1:8080")!

    var body: some View {
        VStack(spacing: 12) {
            Text("Backend: \(status)")
                .font(.title3)
                .monospaced()

            Button(isLoading ? "Checking…" : "Check backend") {
                Task { await ping() }
            }
            .disabled(isLoading)
        }
        .padding(24)
        .frame(minWidth: 320, minHeight: 160)
        .task { await ping() } // ping auto au lancement
    }

    private func ping() async {
        await MainActor.run { isLoading = true }
        defer { Task { await MainActor.run { isLoading = false } } }

        do {
            let url = baseURL.appendingPathComponent("health")
            let (data, _) = try await URLSession.shared.data(from: url)

            if let json = try JSONSerialization.jsonObject(with: data) as? [String: Any],
               let s = json["status"] as? String {
                await MainActor.run { status = s.uppercased() } // "OK"
            } else {
                await MainActor.run { status = "Unexpected response" }
            }
        } catch {
            await MainActor.run { status = "Error: \(error.localizedDescription)" }
        }
    }
}

#Preview {
    ContentView()
}
