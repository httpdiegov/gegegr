import SwiftUI

struct FormBuilderView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var dateOfBirth: Date = Date()
    @State private var age: Int = 0
    @State private var isCheckedOption1: Bool = false
    @State private var isCheckedOption2: Bool = false
    @State private var isCheckedOption3: Bool = false
    @State private var gender: String = "Male"
    @State private var selectedRadio: Int = 1
    @State private var acceptTerms: Bool = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("USER INFO")) {
                    TextField("Firstname", text: $firstName)
                        .disabled(true)
                    TextField("Lastname", text: $lastName)
                        .disabled(true)
                    
                    DatePicker("Date of birth", selection: $dateOfBirth, displayedComponents: .date)
                    
                    Stepper(value: $age, in: 0...100) {
                        Text("Age \(age)")
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Checkbox")
                        Toggle("Option 1", isOn: $isCheckedOption1)
                        Toggle("Option 2", isOn: $isCheckedOption2)
                        Toggle("Option 3", isOn: $isCheckedOption3)
                    }
                    
                    Picker("Gender", selection: $gender) {
                        Text("Male").tag("Male")
                        Text("Female").tag("Female")
                        Text("Other").tag("Other")
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Radiobox")
                        RadioButtonField(id: 1, label: "Option 1", isMarked: $selectedRadio.wrappedValue == 1) {
                            selectedRadio = 1
                        }
                        RadioButtonField(id: 2, label: "Option 2", isMarked: $selectedRadio.wrappedValue == 2) {
                            selectedRadio = 2
                        }
                    }
                }
                
                Toggle("Accept terms of service", isOn: $acceptTerms)
                
                Button(action: {
                    // Handle save action
                }) {
                    Text("Save")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .disabled(!acceptTerms)
            }
            .navigationTitle("Form Builder")
        }
    }
}

struct RadioButtonField: View {
    let id: Int
    let label: String
    let isMarked: Bool
    let callback: () -> Void

    var body: some View {
        Button(action: {
            self.callback()
        }) {
            HStack(alignment: .center, spacing: 10) {
                Image(systemName: isMarked ? "largecircle.fill.circle" : "circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                
                Text(label)
                    .font(Font.system(size: 14))
                Spacer()
            }
        }
        .foregroundColor(Color.black)
    }
}

struct FormBuilderView_Previews: PreviewProvider {
    static var previews: some View {
        FormBuilderView()
    }
}
