class CleanupTool < Formula
  desc "Terminal-based disk cleanup tool for macOS"
  homepage "https://github.com/patriciomg/cleanup-tool"
  url "https://github.com/patriciomg/cleanup-tool/releases/download/v0.4.7/cleanup-tool-v0.4.7-darwin-universal.tar.gz"
  sha256 "5075b88622a5396912d5ab8f12005974e4891925e1386487681fd905735db03b"
  license "MIT"

  depends_on macos: :big_sur

  def install
    bin.install "cleanup-tool"
  end

  test do
    system bin/"cleanup-tool", "-version"
  end
end
