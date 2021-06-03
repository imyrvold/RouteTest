//
//  ViewRouter.swift
//  RouteTest
//
//  Created by Ivan C Myrvold on 03/06/2021.
//

import SwiftUI

class ViewRouter: ObservableObject {
    enum Step { case test1, test2, test3, test4 }
    @Published var step: Step = .test1
    @ViewBuilder var nextStepView: some View {
        switch step {
        case .test1:
            Test1(router: self)
        case .test2:
            Test2(router: self)
        case .test3:
            Test3(router: self)
        case .test4:
            Test4(router: self)
        }
    }
    
    func didFinish() {
        switch step {
        case .test1:
            step = .test2
        case .test2:
            step = .test3
        case .test3:
            step = .test4
        case .test4:
            break
        }
    }
}

struct Test1: View {
    @ObservedObject var router: ViewRouter
    @State var nextView = false

    var body: some View {
        VStack {
            NavigationLink(destination: router.nextStepView, isActive: $nextView) {
                EmptyView()
            }

            Text("Test1")
            
            Button(action: {
                nextView = true
                router.didFinish()
            }, label: {
                Text("Next")
            })
        }
    }
}

struct Test2: View {
    @ObservedObject var router: ViewRouter
    @State var nextView = false

    var body: some View {
        VStack {
            NavigationLink(destination: router.nextStepView, isActive: $nextView) {
                EmptyView()
            }

            Text("Test2")
            
            Button(action: {
                nextView = true
                router.didFinish()
            }, label: {
                Text("Next")
            })
        }
    }
}

struct Test3: View {
    @ObservedObject var router: ViewRouter
    @State var nextView = false

    var body: some View {
        VStack {
            NavigationLink(destination: router.nextStepView, isActive: $nextView) {
                EmptyView()
            }

            Text("Test3")
            
            Button(action: {
                nextView = true
                router.didFinish()
            }, label: {
                Text("Next")
            })
        }
    }
}

struct Test4: View {
    @ObservedObject var router: ViewRouter
    @State var nextView = false

    var body: some View {
        VStack {
            NavigationLink(destination: router.nextStepView, isActive: $nextView) {
                EmptyView()
            }

            Text("Test4")
            
            Button(action: {
                nextView = true
                router.didFinish()
            }, label: {
                Text("Next")
            })
        }
    }
}
