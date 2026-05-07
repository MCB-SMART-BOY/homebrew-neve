class Neve < Formula
  desc "Standalone language for system configuration, builds, and shell automation"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "3.4.1"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v3.4.1/neve-x86_64-apple-darwin.tar.gz"
      sha256 "a49f3fa97de75c7fa671f7efe22fdeb9ffdd7a56afde0cb145bb5e3fc76feaab"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v3.4.1/neve-aarch64-apple-darwin.tar.gz"
      sha256 "a49f3fa97de75c7fa671f7efe22fdeb9ffdd7a56afde0cb145bb5e3fc76feaab"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
