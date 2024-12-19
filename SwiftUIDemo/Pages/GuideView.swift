//
//  GuideView.swift
//  SwiftUIDemo
//
//  Created by zhangzhihui on 2024/12/19.
//

import SwiftUI

struct GuideView: View {
    let texts = ["文案一", "文案二", "文案三"]
    var body: some View {
        
        
        TabView {
            ForEach(texts.indices, id: \.self) { index in
                VStack(alignment: .center, spacing: 40) {
                    Text(texts[index])
                        .font(.title)
                        .foregroundColor(.blue)
                    if texts[index] == texts.last {
                        Button(action: {}) {
                            Text("立即体验")
                            .font(.system(size: 17))
                            .bold()
                            .frame(minWidth: 0, maxWidth: 120)
                            .padding()
                            .foregroundColor(.white)
                            .background(.green)
                            .cornerRadius(8)
                        }
                    } else {
                        Image(systemName: "arrow.forward.circle")
                            .font(.largeTitle)
                    }

                }
                
            }
        }.tabViewStyle(PageTabViewStyle())
            .edgesIgnoringSafeArea(.all)
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
