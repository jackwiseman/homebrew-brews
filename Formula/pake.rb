require "language/node"

class Pake < Formula
  desc "Turn any webpage into a desktop app with Rust"
  homepage "https://github.com/tw93/Pake"
  url "https://github.com/tw93/Pake/archive/refs/tags/V2.3.2.tar.gz"
  sha256 "fd710fe0357560f9b498016358ee705983371d5f40734f97991405ab7128588c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "test not implemented"
  end
end
