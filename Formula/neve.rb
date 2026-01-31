class Neve < Formula
  desc "A pure functional language for system configuration and package management"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "1.0.0"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v1.0.0/neve-x86_64-apple-darwin.tar.gz"
      sha256 "659022822ec8611335e58090b03bd27b52506618cdeea4cdabf61d153963f8a7"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v1.0.0/neve-aarch64-apple-darwin.tar.gz"
      sha256 "5d8a304a97b98ab4b1ff52b410c28f817103427ed7929f671b8b9272dba4d44a"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
