//
//  TemaView.swift
//  Memoria
//
//  Created by Pedro Henrique on 29/03/21.
//

import SwiftUI

struct TemaView: View {
    var temaViewModel = TemaViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                apresentaTemas()
                Spacer()
                
            }
            .navigationTitle("Jogo da Memória")
            .padding()
        }
    }
        
    @ViewBuilder
    func apresentaTemas() -> some View {
        
        ForEach(temaViewModel.temas, id: \.self) {tema  in
            NavigationLink(destination: JogoMemoriaEmojiView(viewModel: JogoMemoriaEmoji(tema: tema))) {
                Text(tema.nomeFase).foregroundColor(tema.cor)
            }
            Spacer()
        }
    }
        
}

struct TemaView_Previews: PreviewProvider {
    static var previews: some View {
        TemaView()
    }
}
