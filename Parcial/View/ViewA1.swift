//
//  ViewA1.swift
//  Parcial
//
//  Created by Alumno on 28/05/24.
//

import SwiftUI

struct ViewA1: View {
    var body: some View {
        Text("CHATROOMZ.PE").font(.system(size: 27))
        Image("avatar")
            .resizable()
            .frame(width: 80,height: 80)
        Text("Bienvenido usuario")
    }
}

#Preview {
    ViewA1()
}
