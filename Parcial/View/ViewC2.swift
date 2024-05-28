import SwiftUI

struct Tenant: Identifiable {
    let id = UUID()
    let name: String
    let startDate: String
    let endDate: String
    let imageName: String
}

struct TenantsListView: View {
    let tenants = [
        Tenant(name: "Test ios", startDate: "2024-01-16", endDate: "2024-01-20", imageName: "person.circle.fill")
    ]

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "house.circle.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                Text("Tenants list")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
            }
            .frame(width: 400,height: 200)
            .background(Color.blue)
            .cornerRadius(10)
            .padding()

            List(tenants) { tenant in
                HStack {
                    Image("avatar")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(25)
                        .padding(.trailing, 10)
                    
                    VStack(alignment: .leading) {
                        Text(tenant.name)
                            .font(.headline)
                        Text("Start Date: \(tenant.startDate)")
                            .font(.subheadline)
                        Text("End Date: \(tenant.endDate)")
                            .font(.subheadline)
                    }
                    Spacer()
                    HStack {
                        Button(action: {
                            // Edit action
                        }) {
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(.blue)
                        }
                        Button(action: {
                            // Delete action
                        }) {
                            Image(systemName: "trash.fill")
                                .foregroundColor(.red)
                        }
                    }
                }
                .padding(.vertical, 10)
            }
            .listStyle(PlainListStyle())
        }
    }
}

struct TenantsListView_Previews: PreviewProvider {
    static var previews: some View {
        TenantsListView()
    }
}
