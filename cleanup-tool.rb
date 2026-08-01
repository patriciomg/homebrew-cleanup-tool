class CleanupTool < Formula
  desc "Terminal-based disk cleanup tool for macOS"
  homepage "https://github.com/patriciomg/cleanup-tool"
  url "https://github.com/patriciomg/cleanup-tool/releases/download/v0.4.5/cleanup-tool-v0.4.5-darwin-universal.tar.gz"
  sha256 "35ded59ef23ad9448ea793438a01d76409c4701a879433ae4b72bb36b9f9425d"
  license "MIT"

  depends_on macos: :big_sur

  def install
    bin.install "cleanup-tool"
  end

  test do
    system bin/"cleanup-tool", "-version"
  end
end
