class Aibodyguard < Formula
  desc "Credential leak prevention wrapper for AI coding agents"
  homepage "https://github.com/DungNguyen0209/aibodyguard"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DungNguyen0209/aibodyguard/releases/download/v#{version}/aibodyguard-darwin-arm64"
      sha256 "87301b5eb92fac47aef0b44906c74ff14bacd7455752b7135fe9901cdb6d6820"

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
      sha256 "cf7219987292c3bc6cba35bca32a290229fb8a51421a16bdcc7390475e4e4766"

      def install
        bin.install "aibodyguard-linux-arm64" => "aibodyguard"
      end
    end

    on_intel do
      url "https://github.com/DungNguyen0209/aibodyguard/releases/download/v#{version}/aibodyguard-linux-amd64"
      sha256 "e870ed91fad89731606db1a2f333894898dfb17fe967db59e80fe9545e79e9a6"

      def install
        bin.install "aibodyguard-linux-amd64" => "aibodyguard"
      end
    end
  end

  test do
    assert_match "aibodyguard v#{version}", shell_output("#{bin}/aibodyguard --version")
  end
end
