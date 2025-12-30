class Neve < Formula
  desc "A pure functional language for system configuration and package management"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "0.6.1"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v0.6.1/neve-x86_64-apple-darwin.tar.gz"
      sha256 "2f9e18dda1a1d839f45d38f7007ad099a676c43c7fdcc34c320b2191c431107d"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v0.6.1/neve-aarch64-apple-darwin.tar.gz"
      sha256 "ec5082d4b68d5f28cedfc43326ba0ed133f32cb04cc6a7e57637423413c41af2"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
