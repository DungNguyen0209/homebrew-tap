class Aibodyguard < Formula
  desc "Credential leak prevention wrapper for AI coding agents"
  homepage "https://github.com/DungNguyen0209/aibodyguard"
  version "dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DungNguyen0209/aibodyguard/releases/download/v#{version}/aibodyguard-darwin-arm64"
      sha256 "ad0545c5707901257b79be50b187886786549d9cf4a30152e821dd0ca8ed0f30"

      def install
        bin.install "aibodyguard-darwin-arm64" => "aibodyguard"
      end
    end

    on_intel do
      url "https://github.com/DungNguyen0209/aibodyguard/releases/download/v#{version}/aibodyguard-darwin-amd64"
      sha256 "adf03bafe92b0f98b3625d7dc1c9689c03b6baa0a470f20908ff8871226e259e"

      def install
        bin.install "aibodyguard-darwin-amd64" => "aibodyguard"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DungNguyen0209/aibodyguard/releases/download/v#{version}/aibodyguard-linux-arm64"
      sha256 "2e8c8c65a1f86743809880be08a57cfa083571ce1854b4dc0d6084f8dcb58eff"

      def install
        bin.install "aibodyguard-linux-arm64" => "aibodyguard"
      end
    end

    on_intel do
      url "https://github.com/DungNguyen0209/aibodyguard/releases/download/v#{version}/aibodyguard-linux-amd64"
      sha256 "17b0ce9a12a18c504e1f3475375b09d75a53878995094b2374652d7aaf437110"

      def install
        bin.install "aibodyguard-linux-amd64" => "aibodyguard"
      end
    end
  end

  test do
    assert_match "aibodyguard v#{version}", shell_output("#{bin}/aibodyguard --version")
  end
end
