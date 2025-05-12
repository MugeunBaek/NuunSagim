import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image("home")
                    Text("")
                }

            LectureSelectionView()
                .tabItem {
                    Image("lecture")
                    Text("")
                }

            CameraView()  // ✅ 여기는 View 호출만
                .tabItem {
                    Image("camera")
                    Text("")
                }

            TextView()    // ✅ 여기도 View 호출만
                .tabItem {
                    Image("txt")
                    Text("")
                }
        }
    }
}

// ✅ MainTabView 바깥에 따로 정의
struct CameraView: View {
    var body: some View {
        Text("카메라 뷰입니다")
            .font(.title)
            .foregroundColor(.gray)
    }
}

struct TextView: View {
    var body: some View {
        Text("텍스트 뷰입니다")
            .font(.title)
            .foregroundColor(.gray)
    }
}

