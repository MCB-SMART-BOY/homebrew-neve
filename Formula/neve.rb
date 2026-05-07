class Neve < Formula
  desc "Standalone language for system configuration, builds, and shell automation"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "3.4.0"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v3.4.0/neve-x86_64-apple-darwin.tar.gz"
      sha256 "017e81dc7f3fbdd7dbd34383269e405915dfb10573039e10b658058badd9cb30"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v3.4.0/neve-aarch64-apple-darwin.tar.gz"
      sha256 "017e81dc7f3fbdd7dbd34383269e405915dfb10573039e10b658058badd9cb30"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
