class Translatr < Formula
  desc "CLI tool for translating iOS app strings using Translatr"
  homepage "https://translatr.app"
  # Binary hosted on PUBLIC homebrew-translatr repo releases
  url "https://github.com/bandapella/homebrew-translatr/releases/download/v1.0.3/translatr-1.0.3.tar.gz"
  sha256 "2cafaeac68ee35a19cf7594ae4d42864ba9e91565acc9cfe3e94f6ff84537a44"
  version "1.0.3"
  license "MIT"

  depends_on :macos

  def install
    bin.install "translatr"
  end

  test do
    assert_match "translatr", shell_output("#{bin}/translatr --version")
  end
end
