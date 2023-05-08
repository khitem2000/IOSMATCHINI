//
//  chats.swift
//  matchinii
//
//  Created by Khitem Mathlouthi on 27/4/2023.
//

import SwiftUI


struct chats: View {
    let romeName  : String 
    @State var message : String = ""
           
    var body: some View {
//        Text("romeName: \(romeName)")
        
        VStack {
            HStack {
                Image("left_arrow")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .padding(.leading, 10)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                CircleImageView(image: Image("user"))
                    .frame(width: 70, height: 69)
                    .padding(.leading, 10)
                    
                    .padding(.top, -40)
                    .padding(.horizontal, -40)
                VStack( spacing: 7) {
                    Text("UserName")
                        .frame(width: 160, height: nil)
                       // .padding(.leading, 8)
                        .padding(.top, -20)
                        .padding(.horizontal, 10)
                       
                    
                    
                        
                    Text("Typing........")
                        .font(.system(size: 12))
                        .frame(width: nil, height: nil, alignment: .leading)
                        .padding(.leading, 8)
                        .padding(.top, 7)
                        .hidden()
                }
                .frame(width: 188, height: 78)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding(.top, 24)
            
       
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            
            HStack {
                TextField("send message..", text:$message)
                    .foregroundColor(Color.black)
                    .frame(width: 300, height: 57)
                    .padding(.leading, 15)
                    
                   // .background(Image("chat_edittext_bg").resizable().scaledToFill())
                    .font(.system(size: 17, weight: .bold))
                    .foregroundColor(.black)
                    .background(Color(red: 0.94, green: 0.393, blue: 0.408).opacity(0.5))
                    .cornerRadius(50)
                
                
                Image("icone_solutions_8")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .padding(.trailing, 8)
            }
            .padding(.bottom, 16)
        }
    }
}

struct CircleImageView: View {
    let image: Image
    
    var body: some View {
        image
            .resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 1))
            .shadow(radius: 5)
    }
}
struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        let size = rect.size
        let radius = CGFloat(20)

        path.addRoundedRect(in: CGRect(x: 0, y: 0, width: size.width, height: size.height), cornerSize: CGSize(width: radius, height: radius))

        return path
    }
}



struct chats_Previews: PreviewProvider {
    static var previews: some View {
        chats(romeName: "")
    }
}
