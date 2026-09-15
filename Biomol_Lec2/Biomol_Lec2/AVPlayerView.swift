//
//  AVPlayerView.swift
//  Biomol_Lec2
//
//  Created by Amogh Reddy Badikol on 9/15/26.
//

import SwiftUI

struct AVPlayerView: UIViewControllerRepresentable {
    let viewModel: AVPlayerViewModel

    func makeUIViewController(context: Context) -> some UIViewController {
        return viewModel.makePlayerViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // Update the AVPlayerViewController as needed
    }
}
