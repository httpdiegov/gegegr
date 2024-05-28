//
//  ViewA2.swift
//  Parcial
//
//  Created by Alumno on 28/05/24.
//

import SwiftUI


struct ViewA2: View {
    @State var data = ["Olivia","Angela","Britney","Mary","Tom","Ellen","Selena","Billie", "Dwayne", "Lady", "Taylor", "Kim", "Zayn", "Miley"]
    @State var nColumn = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            VStack{
                ScrollView(.vertical) {
                    LazyVGrid(columns: nColumn, spacing: 20) {
                        ForEach(data, id: \.self) { item in
                            VStack {
                                AsyncImage(url: URL(string: "https://picsum.photos/100"))
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                                
                                Text(item)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
                
            }
            .navigationBarItems(leading: Button(action: {
            }) {
                HStack {
                    Image(systemName: "arrow.down")
                    Text("All rooms")
                    Spacer().frame(width: 200)
                    Image(systemName: "bell").foregroundStyle(.black)
                    AsyncImage(url: URL(string: "https://picsum.photos/100"))
                        .scaledToFit()
                        .frame(width: 40)
                        .clipShape(Circle())
                    
                }
            }).toolbar {
                ToolbarItem(placement:.bottomBar) {
                    HStack{
                        ZStack{
                            Rectangle().frame(width: 130).foregroundColor(.gray).cornerRadius(10)
                            HStack{
                                Image(systemName: "hand.raised.fill")
                                Text("Leave quietly").foregroundStyle(.red).font(.system(size: 14))
                            }
                        }
                        Spacer()
                        ZStack{
                            Circle().frame(width: 30).foregroundStyle(.gray)
                            HStack{
                                Image(systemName: "plus")
                                
                            }
                            
                        }
                        ZStack{
                            Circle().frame(width: 30).foregroundStyle(.gray)
                            HStack{
                                Image(systemName: "hand.raised.fill")
                                
                            }
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ViewA2()
}
