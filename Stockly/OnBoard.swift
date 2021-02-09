//
//  OnBoard.swift
//  Stockly
//
//  Created by Nayef Kanaan on 23/01/2021.
//

import SwiftUI

struct OnBoard: View {
    let card: Card
    
    var body: some View {
        ZStack{
            Image(card.image)
                .resizable()
                
        }
    }
}

struct OnBoard_Previews: PreviewProvider {
    static var previews: some View {
        OnBoard()
    }
}
