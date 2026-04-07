class Neve < Formula
  desc "Standalone language for system configuration, builds, and shell automation"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "1.1.1"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v1.1.1/neve-x86_64-apple-darwin.tar.gz"
      sha256 "ba9ada390c1e62d26e078d622542492b4f555f9e044ca39611958f500da717bd"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v1.1.1/neve-aarch64-apple-darwin.tar.gz"
      sha256 "8d04b4dd5addbcd90ab064abe3ac2e465037e448cdeac8e147d932890349e40d"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
