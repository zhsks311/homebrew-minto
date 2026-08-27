cask "minto-preview" do
  version "0.0.9-preview.1"
  sha256 "376c7cb08c2e646a9b540c2427113bf37222f403886b27bd2d725158e9df59a2"

  url "https://github.com/zhsks311/minto/releases/download/v#{version}/Minto.zip"
  name "Minto"
  desc "Mac에서 회의를 기록하고 전사하는 로컬 우선 앱"
  homepage "https://zhsks311.github.io/minto/"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  conflicts_with cask: "minto"

  app "Minto.app"

  caveats <<~EOS
    Minto preview 앱입니다.
    Apple 공증을 받지 않았습니다. 최초 실행이 차단되면 Minto를 한 번 실행한 뒤
    시스템 설정 > 개인정보 보호 및 보안에서
    '확인 없이 열기'를 선택하세요.
  EOS
end
