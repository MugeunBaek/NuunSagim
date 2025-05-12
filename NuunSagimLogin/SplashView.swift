import SwiftUI

struct SplashView: View {
    // 5초 후 화면 전환을 위한 상태 변수
    @State private var isActive = false

    var body: some View {
        if isActive {
            LoginView() // ✅ 5초 후 로그인 화면으로 전환
        } else {
            VStack {
                Spacer()
                
                Text("당신의 눈이 되어주는")
                    .font(.system(size: 20))
                    .foregroundColor(.white)

                Image("appsplashlogo") // 로고 이미지
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 180)

                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: "#F4C86C")) // 배경색 적용
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    isActive = true
                }
            }
        }
    }
}

// ✅ 여기는 더 이상 Color 확장 함수 넣지 마세요!

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

