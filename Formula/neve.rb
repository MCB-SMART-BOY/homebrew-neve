class Neve < Formula
  desc "Standalone language for system configuration, builds, and shell automation"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "3.3.1"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v3.3.1/neve-x86_64-apple-darwin.tar.gz"
      sha256 "df8021e53846ec76c06b0539e0ab6bcdf0a0366b2070deae6ec362a8c78169e9"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v3.3.1/neve-aarch64-apple-darwin.tar.gz"
      sha256 "df8021e53846ec76c06b0539e0ab6bcdf0a0366b2070deae6ec362a8c78169e9"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
