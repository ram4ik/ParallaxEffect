//
//  ContentView.swift
//  ParallaxEffect
//
//  Created by Ramill Ibragimov on 11.08.2020.
//

import SwiftUI

struct ContentView: View {
    var text =
        """
        Cappadocia (/kæpəˈdoʊʃə/; also Capadocia; Ancient and Modern Greek: Καππαδοκία, romanized: Kappadokía, from Old Persian: 𐎣𐎫𐎱𐎬𐎢𐎣, romanized: Katpatuka, Armenian: Կապադովկիա, romanized: Kapadovkia, Turkish: Kapadokya) is a historical region in Central Anatolia, largely in the Nevşehir, Kayseri, Kırşehir, Aksaray, and Niğde Provinces in Turkey.

        According to Herodotus,[1] in the time of the Ionian Revolt (499 BC), the Cappadocians were reported as occupying a region from Mount Taurus to the vicinity of the Euxine (Black Sea). Cappadocia, in this sense, was bounded in the south by the chain of the Taurus Mountains that separate it from Cilicia, to the east by the upper Euphrates, to the north by Pontus, and to the west by Lycaonia and eastern Galatia.[2]

        The name, traditionally used in Christian sources throughout history, continues in use as an international tourism concept to define a region of exceptional natural wonders, in particular characterized by fairy chimneys and a unique historical and cultural heritage. The region is diverse, with Turks, Kurds, Armenians, Assyrians, and Greeks inhabiting the region.[3]

        """
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            GeometryReader { reader in
                Image("Cappadocia")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .offset(y: -reader.frame(in: .global).minY)
                    // Magic
                    .frame(width: UIScreen.main.bounds.width, height: reader.frame(in: .global).minY + 270)
                
            }.frame(height: 270, alignment: .center)
            
            VStack(alignment: .leading, spacing: 15) {
                Text("Cappadocia")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                Text(text)
                    .padding(.top, 10)
                    .foregroundColor(.white)
            }
            .padding(.top, 25)
            .padding(.horizontal, 10)
            .background(Color.black)
            .cornerRadius(20)
            .offset(y: -80)
            
        })
        .edgesIgnoringSafeArea(.all)
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
