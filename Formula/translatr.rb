class Translatr < Formula
  desc "CLI tool for translating iOS app strings using Translatr"
  homepage "https://translatr.app"
  # Binary hosted on PUBLIC homebrew-translatr repo releases
  url "https://github.com/bandapella/homebrew-translatr/releases/download/v1.0.4/translatr-1.0.4.tar.gz"
  sha256 "4266371e261e52444bb32c71d25b13af5c3ee72ed1ffc79c7cfb17dc460801bb"
  version "1.0.4"
  license "MIT"

  depends_on :macos

  def install
    bin.install "translatr"
  end

  test do
    assert_match "translatr", shell_output("#{bin}/translatr --version")
  end
end
