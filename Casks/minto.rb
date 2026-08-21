cask "minto" do
  version "0.0.6"
  sha256 "8b1bce8ef7d01e60682260edcd3c4bb27347fbaae4830f9dbbfa2483c0ad7efe"

  url "https://github.com/zhsks311/minto/releases/download/v#{version}/Minto.zip"
  name "Minto"
  desc "Mac에서 회의를 기록하고 전사하는 로컬 우선 앱"
  homepage "https://zhsks311.github.io/minto/"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Minto.app"

  caveats <<~EOS
    Minto는 Apple 공증을 받지 않은 preview 앱입니다.
    최초 실행이 차단되면 Minto를 한 번 실행한 뒤
    시스템 설정 > 개인정보 보호 및 보안에서
    '확인 없이 열기'를 선택하세요.
  EOS
end
