class Neve < Formula
  desc "A pure functional language for system configuration and package management"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "0.4.1"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v0.4.1/neve-x86_64-apple-darwin.tar.gz"
      sha256 "29c6c3658b3642cde68e9fa27c3df9a63805dd72dd8c6803c217879939c9eaea"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v0.4.1/neve-aarch64-apple-darwin.tar.gz"
      sha256 "a4cb44e6b51cd8af7f09783e8ce598d2068972ded8dd024b077d5c620636dcdf"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
