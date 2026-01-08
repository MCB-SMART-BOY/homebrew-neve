class Neve < Formula
  desc "A pure functional language for system configuration and package management"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "0.7.0"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v0.7.0/neve-x86_64-apple-darwin.tar.gz"
      sha256 "be568a0938df0331a0bc6ab41a0fa5c11290d1b9c3fa24e1df8fc3f0060daee9"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v0.7.0/neve-aarch64-apple-darwin.tar.gz"
      sha256 "fd2708779876414039651dfe94a944013bca48b44639117615b07f588a8bfade"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
