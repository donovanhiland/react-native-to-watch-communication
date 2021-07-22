//
//  ContentView.swift
//  Watch Extension
//
//  Created by Donovan Hiland on 7/15/21.
//

import SwiftUI

struct ContentView: View {
  var model = ViewModelWatch()
  
  var body: some View {
    Button("Send Message") {
      model.send()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
