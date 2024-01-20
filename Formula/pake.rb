require "language/node"

class Pake < Formula
  desc "Turn any webpage into a desktop app with Rust"
  homepage "https://github.com/tw93/pake#readme"
  url "https://registry.npmjs.org/pake-cli/-/pake-cli-2.3.6.tgz"
  sha256 "363c1a22cac7266aca44bf27759458da49365ab0df4daad7812070e9c61559e4"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    output = shell_output("#{bin}/pake --version")
    assert_match "2.3.6", output
  end
end
