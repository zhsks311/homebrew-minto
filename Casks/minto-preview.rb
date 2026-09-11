cask "minto-preview" do
  version "0.0.9-preview.2"
  sha256 "01691f12792569f63d9621b619c0b5727e969ee83001c01f4f50eb299b150fb1"

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
