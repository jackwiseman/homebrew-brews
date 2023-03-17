# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GitSemanticCommits < Formula
  desc "aliases for semantic commit messages"
  homepage "https://github.com/fteem/git-semantic-commits"
  url "https://github.com/jackwiseman/git-semantic-commits/archive/refs/tags/v1.0.tar.gz"
  version "1.0"
  sha256 "5aeea2fa405760626497c3b5d00c4e187e7d6d2e3d6b0e154bdd093e44f586a4"
  license ""

  def install
    bin.install "git-chore"
    bin.install "git-docs"
    bin.install "git-feat"
    bin.install "git-fix"
    bin.install "git-localize"
    bin.install "git-refactor"
    bin.install "git-style"
    bin.install "git-test"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test git-semantic-commits`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
