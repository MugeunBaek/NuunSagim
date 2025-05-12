import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(spacing: 24) {
            // 상단 로고 + MY + 알림
            HStack {
                Image("applogo") // 로고
                    .resizable()
                    .frame(width: 100, height: 24)

                Spacer()

                Text("MY")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)

                Image("bell") // 알림 아이콘 자리 (나중에 bell 아이콘으로 교체 가능)
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            .padding(.horizontal, 24)
            .padding(.top, 20)

            // 인사
            HStack {
                Text("반가워요, 홍길동님")
                    .font(.system(size: 20, weight: .semibold))
                Spacer()
            }
            .padding(.horizontal, 24)

            // 출석률
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(hex: "#FDEFC6"))
                .frame(height: 160)
                .overlay(
                    VStack(alignment: .leading) {
                        Text("오늘의 출석률")
                            .font(.system(size: 16, weight: .semibold))
                            .padding(.leading)

                        HStack(spacing: 20) {
                            ForEach(0..<5) { index in
                                VStack {
                                    Image("applogo") // 각 눈 이미지 자리
                                        .resizable()
                                        .frame(width: 24, height: 24)

                                    Text("\(index + 1)일차")
                                        .font(.system(size: 12))
                                }
                            }
                        }
                    }
                    .padding(.top, 8)
                )
                .padding(.horizontal, 24)

            // 점자 퀴즈
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(hex: "#FEF2D1"))
                .frame(height: 150)
                .overlay(
                    HStack {
                        Image("quiz") // 점자 아이콘
                            .resizable()
                            .frame(width: 40, height: 40)

                        VStack(alignment: .leading, spacing: 4) {
                            Text("점자퀴즈")
                                .font(.system(size: 16, weight: .semibold))
                            Text("매일 매일 퀴즈를 통해 10개씩 점자 학습하기")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }

                        Spacer()

                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal, 20)
                )
                .padding(.horizontal, 24)

            // 추천 단어
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(hex: "#FEF2D1"))
                .frame(height: 180)
                .overlay(
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Text("오늘의 추천 단어")
                                .font(.system(size: 16, weight: .semibold))
                            Spacer()
                            Text("더 다양한 단어 번역하기 >")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }

                        VStack(alignment: .leading, spacing: 4) {
                            HStack {
                                Image("dog(voca)")
                                    .resizable()
                                    .frame(width: 100, height: 40)
                                Spacer()
                                Image("dog(handvoca)")
                                    .resizable()
                                    .frame(width: 100, height: 40)
                            }
                            HStack {
                                Image("starlight_voca")
                                    .resizable()
                                    .frame(width: 100, height: 40)
                                Spacer()
                                Image("starlight(handvoca)")
                                    .resizable()
                                    .frame(width: 100, height: 60)
                            }
                        }
                    }
                    .padding(16)
                )
                .padding(.horizontal, 24)

            Spacer()
        }
    }
}


extension Color {
    init(hex: String) {
        var hexString = hex
        if hexString.hasPrefix("#") {
            hexString.removeFirst()
        }

        // 잘못된 색상일 경우 gray로 대체
        guard hexString.count == 6 else {
            self = .gray
            return
        }

        var rgbValue: UInt64 = 0
        let scanner = Scanner(string: hexString)
        guard scanner.scanHexInt64(&rgbValue) else {
            self = .gray
            return
        }

        let red = Double((rgbValue >> 16) & 0xFF) / 255.0
        let green = Double((rgbValue >> 8) & 0xFF) / 255.0
        let blue = Double(rgbValue & 0xFF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }
}

