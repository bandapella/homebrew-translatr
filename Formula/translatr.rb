class Translatr < Formula
  desc "CLI tool for translating iOS app strings using Translatr"
  homepage "https://translatr.app"
  # Binary hosted on PUBLIC homebrew-translatr repo releases
  url "https://github.com/bandapella/homebrew-translatr/releases/download/v1.0.0/translatr-1.0.0.tar.gz"
  sha256 "dd5e7d393c5389e2691c8a30f1fff3d5b79fc6a125c8a3761be74d903371b6ce"
  version "1.0.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "translatr"
  end

  test do
    assert_match "translatr", shell_output("#{bin}/translatr --version")
  end
end
