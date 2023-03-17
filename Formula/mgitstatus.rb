class Mgitstatus < Formula
  desc "Show uncommitted, untracked and unpushed changes in multiple Git repositories"
  homepage "https://github.com/fboender/multi-git-status"
  url "https://github.com/fboender/multi-git-status/archive/refs/tags/2.2.tar.gz"
  sha256 "d26a71cd2efd80416c28d59632665341bc393d2d5fdde20dd588f959b0faea6a"
  license "MIT License"

  def install
    bin.install "mgitstatus"
    man1.install "mgitstatus.1"
  end

  test do
    system "#{bin}/mgitstatus", "--version"
  end
end
