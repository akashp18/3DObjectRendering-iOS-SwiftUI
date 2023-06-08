//
//  DetailedView.swift
//  SwiftUI3DModelDemo
//
//  Created by Akash on 2023-06-05.
//

import Foundation
import SwiftUI
import SceneKit


struct DetailedView: View {
    @State var index = 0
    
    var body: some View {
        VStack{
            Text(gadgetList[index].name)
                .font(.system(size: 30, weight: .bold))
            
            SceneView(scene: SCNScene(named: gadgetList[index].modelName), options: [.autoenablesDefaultLighting,.allowsCameraControl])
                .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height / 2.5)

            ZStack{
                HStack{
                    Button(action: {
                        withAnimation{
                            if index > 0{
                                index -= 1
                            }
                        }
                    }, label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 20, weight: .bold))
                            .opacity(index == 0 ? 0.3 : 1)
                    })
                    .disabled(index == 0 ? true : false)
                    Spacer(minLength: 0)
                    Button(action: {
                        withAnimation{
                            if index < gadgetList.count{
                                index += 1
                            }
                        }
                    }, label: {
                        Image(systemName: "chevron.right")
                            .font(.system(size: 20, weight: .bold))
                            .opacity(index == gadgetList.count - 1 ? 0.3 : 1)
                    })
                    .disabled(index == gadgetList.count - 1 ? true : false)
                }
                
                Text(gadgetList[index].name)
                    .font(.system(size: 20, weight: .bold))
            }
            .foregroundColor(.black)
            .padding(.horizontal)
            .padding(.vertical,30)
        }
    }
}


struct Previews_DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(index: 1)
    }
}
