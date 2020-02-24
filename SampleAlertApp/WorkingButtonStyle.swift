//
// Copyright © 2019 John Lewis PLC. All rights reserved.
//

import SwiftUI

struct WorkingButtonStyle: ButtonStyle {
    
    struct Content: View {
        
        let configuration: Configuration
        
        var body: some View {
            print("working button", configuration.isPressed)
            if configuration.isPressed {
                return configuration.label
                    .foregroundColor(Color.blue)
            } else {
                return configuration.label
                    .foregroundColor(Color.red)
            }
        }
    }
    
    func makeBody(configuration: Self.Configuration) -> some View {
        Content(configuration: configuration)
    }
}
