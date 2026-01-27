class Translatr < Formula
  desc "CLI tool for translating iOS app strings using Translatr"
  homepage "https://translatr.app"
  # Binary hosted on PUBLIC homebrew-translatr repo releases
  url "https://github.com/bandapella/homebrew-translatr/releases/download/v1.0.1/translatr-1.0.1.tar.gz"
  sha256 "434637190a64594850ced85710810411343125ec04c7c057356b90823a6cd833"
  version "1.0.1"
  license "MIT"

  depends_on :macos

  def install
    bin.install "translatr"
  end

  test do
    assert_match "translatr", shell_output("#{bin}/translatr --version")
  end
end
