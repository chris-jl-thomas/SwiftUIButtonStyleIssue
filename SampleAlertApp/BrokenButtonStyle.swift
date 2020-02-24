//
// Copyright © 2019 John Lewis PLC. All rights reserved.
//

import SwiftUI

struct BrokenButtonStyle: ButtonStyle {
    
    struct Content: View {
        
        let configuration: Configuration
        
        var body: some View {
            print("broken button", configuration.isPressed)
            return Group {
                if configuration.isPressed {
                    configuration.label
                        .foregroundColor(Color.blue)
                } else {
                    configuration.label
                        .foregroundColor(Color.red)
                }
            }
        }
    }
    
    func makeBody(configuration: Self.Configuration) -> some View {
        Content(configuration: configuration)
    }
}
