class Neve < Formula
  desc "Standalone language for system configuration, builds, and shell automation"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "3.4.2"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v3.4.2/neve-x86_64-apple-darwin.tar.gz"
      sha256 "1279b1868aef3b9b4ae1677805e9c5bd6e7a50d084408e2b86ba55cd2904e73a"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v3.4.2/neve-aarch64-apple-darwin.tar.gz"
      sha256 "1279b1868aef3b9b4ae1677805e9c5bd6e7a50d084408e2b86ba55cd2904e73a"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
