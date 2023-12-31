import SwiftUI

struct InputActivityView: View {
    @StateObject var viewModel: InputActivityViewModel
    
    init(viewModel: InputActivityViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                VStack {
                    TextEditor(text: $viewModel.title)
                        .bitgouelFont(.title3)
                        .overlay(alignment: .topLeading) {
                            if viewModel.title.isEmpty {
                                BitgouelText(
                                    text: "활동 제목 (100자 이내)",
                                    font: .title3
                                )
                                .padding(.top, 8)
                                .padding(.leading, 4)
                                .foregroundColor(.bitgouel(.greyscale(.g7)))
                            }
                        }
                        .onChange(of: viewModel.title, perform: { value in
                            if viewModel.title.count > 100 {
                                viewModel.title.removeLast()
                            }
                        })
                }
                .padding(.top, -40)
                .frame(minHeight: 40)
                .frame(maxHeight: 120)
                
                Divider()
                
                VStack {
                    TextEditor(text: $viewModel.activityText)
                        .bitgouelFont(.text3)
                        .overlay(alignment: .topLeading) {
                            if viewModel.activityText.isEmpty {
                                BitgouelText(
                                    text: "본문 입력 (1000자 이내)",
                                    font: .text3
                                )
                                .padding(.top, 8)
                                .padding(.leading, 4)
                                .foregroundColor(.bitgouel(.greyscale(.g7)))
                            }
                        }
                        .onChange(of: viewModel.activityText, perform: { value  in
                            if viewModel.activityText.count > 1000 {
                                viewModel.activityText.removeLast()
                            }
                        })
                }
                .padding(.top, 16)
                .frame(height: 460)
                
                Divider()
                
                VStack(spacing: 8) {
                    Button {
                        
                    } label: {
                        Image("setting")
                        
                        Text("활동 세부 설정")
                            .bitgouelFont(.text3, color: .primary(.p5))
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal, 96)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .strokeBorder(Color.bitgouel(.primary(.p5)))
                    }
                    
                    CTAButton(
                        text: "활동 추가",
                        style: .default
                    )
                }
                .padding(.top, 24)
                .padding(.bottom, 12)
            }
        }
        .padding(.horizontal, 28)
        .onTapGesture {
            hideKeyboard()
        }
    }
}
