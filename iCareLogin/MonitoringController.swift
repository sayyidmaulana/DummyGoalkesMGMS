//
//  MonitoringController.swift
//  iCareLogin
//
//  Created by Sayyid Maulana Khakul Yakin on 28/01/21.
//

import SwiftUI

struct MonitoringController: View {
    var body: some View {
        List() {
            Text("Here your name")
            Text("Here your name")
            Text("Here your name")
        }.navigationTitle("List of monitor")
    }
}

struct MonitoringPreviews: PreviewProvider {
    static var previews: some View {
        Group {
            MonitoringController()
        }
    }
}
