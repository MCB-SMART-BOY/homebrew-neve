class Neve < Formula
  desc "Standalone language for system configuration, builds, and shell automation"
  homepage "https://github.com/MCB-SMART-BOY/Neve"
  version "2.0.0"
  license "MPL-2.0"

  on_macos do
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v2.0.0/neve-x86_64-apple-darwin.tar.gz"
      sha256 "b3556d8fa561f24f873f677be99671467f021fea7fc74626af6fcc4aa20970fa"
    end

    on_arm do
      url "https://github.com/MCB-SMART-BOY/Neve/releases/download/v2.0.0/neve-aarch64-apple-darwin.tar.gz"
      sha256 "f159b41e05600ea30830d653cdabd2bda84ccf78fe004add7f7916e1b8ad2659"
    end
  end

  def install
    bin.install "neve"
  end

  test do
    assert_match "neve", shell_output("#{bin}/neve --version")
  end
end
