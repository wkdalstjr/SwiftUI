//
//  QRCodeGuideLineView.swift
//  QRCode_swiftUI
//
//  Created by 장민석 on 2022/03/17.
//

import SwiftUI

struct QRCodeGuideLineView: View {
    var body: some View {
        GeometryReader{ geometryproxy in
            RoundedRectangle(cornerRadius: 20)
                .stroke(style: StrokeStyle(lineWidth: 10, dash: [11]))
                .frame(width: geometryproxy.size.width / 2, height: geometryproxy.size.height / 3)
                .position(x: geometryproxy.size.width / 2, y: geometryproxy.size.height / 2)
                .foregroundColor(.yellow)
        }
    }
}

struct QRCodeGuideLineView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeGuideLineView()
    }
}
