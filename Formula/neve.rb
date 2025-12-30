class Neve < Formula
  desc "A pure functional language for system configuration and package management"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "0.6.0"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v0.6.0/neve-x86_64-apple-darwin.tar.gz"
      sha256 "419ba1da12d16195debee1eca2a61d988fc3e776311667b4b6332cc3736cb3d9"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v0.6.0/neve-aarch64-apple-darwin.tar.gz"
      sha256 "b83645c91789a75fa1d021f4d8f1a42be0b1ea08eeb223b0e9f0197918ead7da"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
