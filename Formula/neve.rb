class Neve < Formula
  desc "A pure functional language for system configuration and package management"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "0.6.3"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v0.6.3/neve-x86_64-apple-darwin.tar.gz"
      sha256 "945adcf93be793aa29d65b1b6b9ebabd9abcaddc5e622deedd21914d432b4dd7"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v0.6.3/neve-aarch64-apple-darwin.tar.gz"
      sha256 "b4ddf9dd5f0cf251172a5c2b38e98c07069f8ca3200aefa7dbfe4d783ac15bc1"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
