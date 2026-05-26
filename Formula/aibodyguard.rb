class Aibodyguard < Formula
  desc "Credential leak prevention wrapper for AI coding agents"
  homepage "https://github.com/DungNguyen0209/aibodyguard"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DungNguyen0209/aibodyguard/releases/download/v#{version}/aibodyguard-darwin-arm64"
      sha256 "b4739cdf29b0dc599354ad423502c91098e9ff4c72a432f12a9b59c8270533fe"

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
      sha256 "03f2617cc5fefff69a84a78da47dd4d7244c2e807fab6d6a29e631ddc6d50811"

      def install
        bin.install "aibodyguard-linux-arm64" => "aibodyguard"
      end
    end

    on_intel do
      url "https://github.com/DungNguyen0209/aibodyguard/releases/download/v#{version}/aibodyguard-linux-amd64"
      sha256 "e759d3995abd55fadfa9b8dc156fc00f6a38b7ef874c531ce4152ee999d22924"

      def install
        bin.install "aibodyguard-linux-amd64" => "aibodyguard"
      end
    end
  end

  test do
    assert_match "aibodyguard v#{version}", shell_output("#{bin}/aibodyguard --version")
  end
end
