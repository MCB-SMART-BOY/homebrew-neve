class Neve < Formula
  desc "Standalone language for system configuration, builds, and shell automation"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "3.3.2"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v3.3.2/neve-x86_64-apple-darwin.tar.gz"
      sha256 "5c3db2216951e2ca6d2d6197ed7e468d4ca983a2537bf7b5805e2ce0aedb7e8a"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v3.3.2/neve-aarch64-apple-darwin.tar.gz"
      sha256 "5c3db2216951e2ca6d2d6197ed7e468d4ca983a2537bf7b5805e2ce0aedb7e8a"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
