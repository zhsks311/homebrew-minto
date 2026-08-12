cask "minto" do
  version "0.0.1"
  sha256 "fd2003c31d9b2e92de13b31337dfb52aaacae9b6c6c91083f95db12847d32119"

  url "https://github.com/zhsks311/minto/releases/download/v#{version}/Minto.zip"
  name "Minto"
  desc "Mac에서 회의를 기록하고 전사하는 로컬 우선 앱"
  homepage "https://zhsks311.github.io/minto/"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Minto.app"

  caveats <<~EOS
    Minto는 Apple 공증을 받지 않은 preview 앱입니다.
    최초 실행이 차단되면 Finder의 응용 프로그램에서 Minto를
    우클릭한 후 '열기'를 선택하세요.
  EOS
end
