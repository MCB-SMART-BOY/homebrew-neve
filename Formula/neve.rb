class Neve < Formula
  desc "A pure functional language for system configuration and package management"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "0.6.4"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v0.6.4/neve-x86_64-apple-darwin.tar.gz"
      sha256 "3a773957f426ab47506c5623d58fb567b0b90b2012c81f77b3f79cc6631559dd"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v0.6.4/neve-aarch64-apple-darwin.tar.gz"
      sha256 "76df9c262803a1f8c1ab846e69d23042878d96e636a10de189f884eb00673976"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
