class CleanupTool < Formula
  desc "Terminal-based disk cleanup tool for macOS"
  homepage "https://github.com/patriciomg/cleanup-tool"
  url "https://github.com/patriciomg/cleanup-tool/releases/download/v0.4.3/cleanup-tool-v0.4.3-darwin-universal.tar.gz"
  sha256 "e2b948b8c26166ba414e7f3a6127b830c331a3d2eea6248c60b1333b949275e7"
  license "MIT"

  depends_on macos: :big_sur

  def install
    bin.install "cleanup-tool"
  end

  test do
    system bin/"cleanup-tool", "-version"
  end
end
