class Aibodyguard < Formula
  desc "Credential leak prevention wrapper for AI coding agents"
  homepage "https://github.com/DungNguyen0209/aibodyguard"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DungNguyen0209/aibodyguard/releases/download/v#{version}/aibodyguard-darwin-arm64"
      sha256 "52aeb83e90d8638f02567d05b9d9f5a7b481b832b480cbae200139c04c4fc33a"

      def install
        bin.install "aibodyguard-darwin-arm64" => "aibodyguard"
      end
    end

    on_intel do
      url "https://github.com/DungNguyen0209/aibodyguard/releases/download/v#{version}/aibodyguard-darwin-amd64"
      sha256 "61cc6ac90ec6fed7c261985f8ed05ba56dd2aa52756ca1f05162397e80500e79"

      def install
        bin.install "aibodyguard-darwin-amd64" => "aibodyguard"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DungNguyen0209/aibodyguard/releases/download/v#{version}/aibodyguard-linux-arm64"
      sha256 "c3d804fec26cb3c4ffe9706403adb3a49f72cfe7b956bf4fbd74aba4c17352e9"

      def install
        bin.install "aibodyguard-linux-arm64" => "aibodyguard"
      end
    end

    on_intel do
      url "https://github.com/DungNguyen0209/aibodyguard/releases/download/v#{version}/aibodyguard-linux-amd64"
      sha256 "eb50380e3b81d2f297793cbdba68954aa735a0162cbec81b78d6f83f67e6a55c"

      def install
        bin.install "aibodyguard-linux-amd64" => "aibodyguard"
      end
    end
  end

  test do
    assert_match "aibodyguard v#{version}", shell_output("#{bin}/aibodyguard --version")
  end
end
