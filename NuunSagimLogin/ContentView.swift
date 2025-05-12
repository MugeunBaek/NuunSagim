import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            SplashView()
        }
    }
}

// 로그인 화면
struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Image("applogo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            TextField("아이디를 입력하세요", text: $username)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 40)
            
            SecureField("비밀번호를 입력하세요", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 40)
            
            HStack {
                Spacer()
                Text("비밀번호 찾기")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .padding(.trailing, 40)
            }
            
            NavigationLink(destination: MainView()) {
                Text("로그인")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
            }
            
            HStack {
                NavigationLink(destination: SignUpView()) {
                    Text("회원가입")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                }
                
                Text("|")
                    .foregroundColor(.gray)
                
                Text("아이디 찾기")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
    }
}

// 회원가입 화면
struct SignUpView: View {
    @State private var name: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var phoneNumber: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Image("applogo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            TextField("이름을 입력하세요", text: $name)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 40)
            
            TextField("아이디를 입력하세요", text: $username)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 40)
            
            SecureField("비밀번호를 입력하세요", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 40)
            
            TextField("전화번호를 입력하세요", text: $phoneNumber)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 40)
                .keyboardType(.phonePad)
            
            Button(action: {
                print("회원가입 버튼 클릭")
            }) {
                Text("회원가입")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
