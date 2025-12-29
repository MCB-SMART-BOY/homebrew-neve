class Neve < Formula
  desc "A pure functional language for system configuration and package management"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "0.5.0"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v0.5.0/neve-x86_64-apple-darwin.tar.gz"
      sha256 "eb7b6c819cbf878e385ca998ca29e7f83ecc86c214f04e35d368117ac8cda07f"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v0.5.0/neve-aarch64-apple-darwin.tar.gz"
      sha256 "93a08339b81a95e2f24cca2c2e2536a0350d017b4553cde6e360c35e98f9d8c6"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
