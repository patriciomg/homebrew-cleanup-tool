class CleanupTool < Formula
  desc "Terminal-based disk cleanup tool for macOS"
  homepage "https://github.com/patriciomg/cleanup-tool"
  url "https://github.com/patriciomg/cleanup-tool/releases/download/v0.4.4/cleanup-tool-v0.4.4-darwin-universal.tar.gz"
  sha256 "314f63da75c805417cde317963ac4861ef08aad4b6e6b5bf47ed33b94da00388"
  license "MIT"

  depends_on macos: :big_sur

  def install
    bin.install "cleanup-tool"
  end

  test do
    system bin/"cleanup-tool", "-version"
  end
end
