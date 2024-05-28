import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("avatar")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .padding(.top, 20)
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .background(
                    Image("background_image")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                )
                .frame(height: 120)
                
                Form {
                    Section(header: Text("Account Settings")) {
                        NavigationLink(destination: Text("Edit Profile View")) {
                            Text("Edit Profile")
                        }
                        NavigationLink(destination: Text("Switch to Tenant View")) {
                            Text("Switch to Tenant")
                        }
                        NavigationLink(destination: Text("Change Password View")) {
                            Text("Change Password")
                        }
                        NavigationLink(destination: Text("Delete Account View")) {
                            Text("Delete Account")
                        }
                    }
                    
                    Section(header: Text("Invoice")) {
                        NavigationLink(destination: Text("Generate Invoice View")) {
                            Text("Generate Invoice")
                        }
                        NavigationLink(destination: Text("Invoices History View")) {
                            Text("Invoices History")
                        }
                    }
                }
                .padding(.top, -40)

                Spacer()
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
