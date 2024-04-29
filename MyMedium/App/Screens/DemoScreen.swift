//
//  DemoScreen.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import SwiftUI


struct EndReachedKey: PreferenceKey {
    static var defaultValue: [CGFloat] = []
    
    static func reduce(value: inout [CGFloat], nextValue: () -> [CGFloat]) {
        value.append(contentsOf: nextValue())
    }
}

struct AppListViewScreen<Content: View, HeaderContent: View, FooterContent: View>:View {
    
    @ViewBuilder var forEach: () -> Content
    @ViewBuilder var headerView: () -> HeaderContent
    @ViewBuilder var footerView: () -> FooterContent
    var onEndFuncation: (() -> Void)
    var onReload: (() -> Void)
    
    var body: some View {
        GeometryReader { geometry in
            List {
                LazyVStack {
                    headerView()
                    forEach()
                    .background(GeometryReader { geo in
                        Color.clear.preference(key: EndReachedKey.self, value: [geo.frame(in: .global).maxY])
                    })
                    footerView()
                }
            }
            .refreshable {
                onReload()
            }
            .onPreferenceChange(EndReachedKey.self) { value in
                if let maxY = value.last {
                    if maxY < geometry.frame(in: .global).maxY {
                       onEndFuncation()
                    }
                }
            }
        }
    }
}


struct AppListViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        AppListViewScreen(forEach: {
            Text("You are the best")
        }, headerView: {
            Text("You are the best")
        }, footerView: {
            Text("You are the best")
        }, onEndFuncation: {
            
        }, onReload: {
            
        })
    }
}
