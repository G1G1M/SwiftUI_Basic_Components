import SwiftUI
import Observation

@Observable // 한 번만 선언하면 됨
class ProfileModel {
    var nickname = "Jiwon Kim"
    var intro = "iOS Developer"
}

struct ProfileView: View {
    @Bindable var model: ProfileModel // Bindable로 받기
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("닉네임", text: $model.nickname)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextField("소개", text: $model.intro)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Divider()
            
            Text("닉네임: \(model.nickname)")
            Text("소개: \(model.intro)")
        }
    }
}

#Preview {
    ProfileView(model: ProfileModel())
}


