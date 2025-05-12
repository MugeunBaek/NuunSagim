import SwiftUI

struct LectureSelectionView: View {
    var body: some View {
        VStack(spacing: 0) {
            // MARK: - 헤더
            HStack {
                Image(systemName: "chevron.left")
                    .font(.system(size: 20))
                    .padding(.leading, 16)

                Spacer()

                Text("강의 보기")
                    .font(.system(size: 18, weight: .bold))

                Spacer()

                Image(systemName: "magnifyingglass")
                    .font(.system(size: 20))
                    .padding(.trailing, 16)
            }
            .padding(.vertical, 16)
            .background(Color.white)

            Divider()

            // MARK: - 연령대 선택 타이틀
            HStack {
                Text("연령대 선택하기")
                    .font(.system(size: 16, weight: .semibold))
                    .padding(.top, 24)
                    .padding(.horizontal, 24)

                Spacer()
            }

            // MARK: - 연령대 카드 리스트
            VStack(spacing: 16) {
                LectureAgeCard(imageName: "child", title: "어린이", isSelected: true, bgColor: "#FDEFC6")
                LectureAgeCard(imageName: "teen", title: "청소년", isSelected: false, bgColor: "#F4F5F7")
                LectureAgeCard(imageName: "adult", title: "성인", isSelected: false, bgColor: "#F4F5F7")
            }
            .padding(.top, 16)
            .padding(.horizontal, 24)

            Spacer()
        }
    }
}

struct LectureAgeCard: View {
    let imageName: String
    let title: String
    let isSelected: Bool
    let bgColor: String

    var body: some View {
        HStack(spacing: 16) {
            Image(imageName)
                .resizable()
                .frame(width: 48, height: 48)

            Text(title)
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.black)

            Spacer()
        }
        .padding()
        .background(Color(hex: bgColor))
        .cornerRadius(20)
    }
}
