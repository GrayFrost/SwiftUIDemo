//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by zhangzhihui on 2024/12/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("bgImage")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 400) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("你好，测试标题")
                        .font(.title)
                        .bold()
                    Text("测试第二行文字的对齐方式对齐")
                        .font(.system(size: 17))
                }
                
                VStack(alignment: .center, spacing: 40) {
                    VStack(alignment: .center, spacing: 15) {
                        Button(action: {}) {
                            Text("手机号码登录")
                                .font(.system(size: 17))
                                .bold()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding()
                                .foregroundColor(.white)
                                .background(.red)
                                .cornerRadius(8)
                        }
                        Button(action: {}) {
                            Text("微信登录")
                                .font(.system(size: 17))
                                .bold()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding()
                                .foregroundColor(.black)
                                .background( .white)
                                .cornerRadius(8)
                        }
                    }
                
                
                    HStack {
                        Text("登录即表示同意")
                            .foregroundColor(.white)
                        Button(action: {}) {
                            Text("用户协议")
                        }
                        Text("和")
                            .foregroundColor(.white)
                        Button(action: {}) {
                            Text("隐私策略")
                        }
                    }
                }
                
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
