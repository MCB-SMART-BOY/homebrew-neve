class Neve < Formula
  desc "A pure functional language for system configuration and package management"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "0.6.2"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v0.6.2/neve-x86_64-apple-darwin.tar.gz"
      sha256 "ce7d93d8b29b2898bd6958dfc67549ec1ad37c1c054e9844cca4eca34380c053"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v0.6.2/neve-aarch64-apple-darwin.tar.gz"
      sha256 "1be1ff1446f6e18b2ebbb10c11a7d1e5ec6e14086db36af4ede461a6207e6bde"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
