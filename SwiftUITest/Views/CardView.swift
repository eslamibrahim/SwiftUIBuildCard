//
//  CardView.swift
//  SwiftUITest
//
//  Created by islam on 6/9/20.
//  Copyright © 2020 islam. All rights reserved.
//

import SwiftUI
import AVFoundation

struct CardView: View {
    
    var cardData : CardModel
    let playerManager = SoundPlayerManager()
    @State private var fadeIn : Bool = false
    @State private var moveDown : Bool = false
    @State private var moveUP : Bool = false
    @State private var showAlert : Bool = false

    var body: some View {
        ZStack{
            Image(cardData.imageName)
                .opacity(fadeIn ? 1.0 : 0.0)
            VStack{
                Text(cardData.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text(cardData.subTitle)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
                Text(cardData.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
            }
            .offset(y: moveDown ? -200 : -300)
            Button(action: { 
                print(self.cardData.alertMessage)
                self.playerManager.playSound(name: "sound-chime", type: "mp3")
                self.showAlert.toggle()
            }){
                HStack {
                    Text(cardData.callBackActionButton.uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .accentColor(Color.white)
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(.white)
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 16)
                .background(LinearGradient(gradient: Gradient(colors: cardData.gradiantColors) , startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }.offset(y: moveUP ? 200 : 300)
        }.frame(width: UIScreen.main.bounds.size.width - 40, height: 545, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: cardData.gradiantColors) , startPoint: .top, endPoint: .bottom))
            .cornerRadius(16)
            .shadow(radius: 8)
            .onAppear(){
                withAnimation(.linear(duration: 1.2)){
                    self.fadeIn.toggle()
                }
                withAnimation(.linear(duration: 0.8)){
                    self.moveDown.toggle()
                    self.moveUP.toggle()
                }
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text(cardData.title), message: Text(cardData.alertMessage), dismissButton: .default(Text("Dismiss")))
        })
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(cardData: cards[1])
            .previewLayout(.sizeThatFits)
    }
}
