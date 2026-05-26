class Aibodyguard < Formula
  desc "Credential leak prevention wrapper for AI coding agents"
  homepage "https://github.com/DungNguyen0209/aibodyguard"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DungNguyen0209/aibodyguard/releases/download/v#{version}/aibodyguard-darwin-arm64"
      sha256 "2b8127ef5ca97a7fc39b6557a9d249c200889f52301a270d59ae8ea2f080bfd3"

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
      sha256 "9152ce093c789d5760262d6d96ff05366084cf7b4903ade4394e8c73e18c0833"

      def install
        bin.install "aibodyguard-linux-arm64" => "aibodyguard"
      end
    end

    on_intel do
      url "https://github.com/DungNguyen0209/aibodyguard/releases/download/v#{version}/aibodyguard-linux-amd64"
      sha256 "dfcc9003ca6c875f7052aa9629e6f8088a2519766defd047d33ba44bbd3b60b8"

      def install
        bin.install "aibodyguard-linux-amd64" => "aibodyguard"
      end
    end
  end

  test do
    assert_match "aibodyguard v#{version}", shell_output("#{bin}/aibodyguard --version")
  end
end
