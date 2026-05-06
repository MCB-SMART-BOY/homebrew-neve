class Neve < Formula
  desc "Standalone language for system configuration, builds, and shell automation"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "3.3.1"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v3.3.1/neve-x86_64-apple-darwin.tar.gz"
      sha256 "1a4a6649d3af79e11afb7f9ecdf37dd6788cc6620e8fae9a06ff232a80d74e4d"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v3.3.1/neve-aarch64-apple-darwin.tar.gz"
      sha256 "01f198f04f5f9d5ac9e7006800e556a1096c41ad7e8895a817014c3103493b38"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
