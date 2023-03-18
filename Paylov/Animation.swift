import SwiftUI

struct AnimationView: View {
    @State private var drawAmount: CGFloat = 0.0
    @State private var shouldAnimate = false
    @State private var rotDeg: Double = 0
    @State var isLoading = true
    var body: some View {
        ZStack {
            Ellipse()
                .stroke(Color("ellipseColor"), lineWidth: 6)
                .frame(width: 94, height: 94)
            
            Ellipse()
                .trim(from: 0, to: drawAmount)
                .stroke(Color.white, lineWidth: 6)
                .frame(width: 94, height: 94)
                .animation(Animation.linear(duration: 3))
                .onAppear {
                    self.drawAmount = 1
                }
            
            VStack(spacing: -7.5) {
                Ellipse()
                    .fill(Color.white)
                    .frame(width: 43.97, height: 16.49)
                    .opacity(1)
                    .rotation3DEffect(
                        .degrees(rotDeg),
                        axis: (x: 1.0, y: 0.0, z: 0.0),
                        anchor: .center)
                    .animation(.easeInOut(duration: 4))
                Ellipse()
                    .fill(Color.white)
                    .frame(width: 43.97, height: 16.49)
                    .opacity(0.8)
                    .rotation3DEffect(
                        .degrees(rotDeg),
                        axis: (x: 1.0, y: 0.0, z: 0.0),
                        anchor: .center)
                    .animation(.easeInOut(duration: 4))
                Ellipse()
                    .fill(Color.white)
                    .frame(width: 43.97, height: 16.49)
                    .opacity(0.6)
                    .rotation3DEffect(
                        .degrees(rotDeg),
                        axis: (x: 1.0, y: 0.0, z: 0.0),
                        anchor: .center)
                    .animation(.easeInOut(duration: 4))
                Ellipse()
                    .fill(Color.white)
                    .frame(width: 43.97, height: 16.49)
                    .opacity(0.4)
                    .rotation3DEffect(
                        .degrees(rotDeg),
                        axis: (x: 1.0, y: 0.0, z: 0.0),
                        anchor: .center)
                    .animation(.easeInOut(duration: 4))
                Ellipse()
                    .fill(Color.white)
                    .frame(width: 43.97, height: 16.49)
                    .opacity(0.2)
                    .rotation3DEffect(
                        .degrees(rotDeg),
                        axis: (x: 1.0, y: 0.0, z: 0.0),
                        anchor: .center)
                    .animation(.easeInOut(duration: 4))
            }
            .opacity(shouldAnimate ? 0 : 1)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                        self.shouldAnimate = true
                    }
                    self.rotDeg = 720
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                        self.isLoading = false
                    }
                }
            }
        }
    }




struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
