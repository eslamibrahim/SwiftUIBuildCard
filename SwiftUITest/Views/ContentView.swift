//
//  ContentView.swift
//  SwiftUITest
//
//  Created by islam on 6/8/20.
//  Copyright © 2020 islam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var cardsData = cards
    
    var body: some View {
        ZStack{
            ScrollView(.horizontal, showsIndicators: false ){
                HStack (alignment: .center, spacing: 20){
                    ForEach(cardsData) { item in
                        CardView(cardData: item)
                    }
                }
                .padding(20)
            }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cardsData : cards).previewDevice("iphone 11 Pro")
    }
}
