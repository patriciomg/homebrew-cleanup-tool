class CleanupTool < Formula
  desc "Terminal-based disk cleanup tool for macOS"
  homepage "https://github.com/patriciomg/cleanup-tool"
  url "https://github.com/patriciomg/cleanup-tool/releases/download/v0.4.6/cleanup-tool-v0.4.6-darwin-universal.tar.gz"
  sha256 "7fb8b2d126ff2bddced754543a22328bffdc791cb167c53052677dd0934ec246"
  license "MIT"

  depends_on macos: :big_sur

  def install
    bin.install "cleanup-tool"
  end

  test do
    system bin/"cleanup-tool", "-version"
  end
end
