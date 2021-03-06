class GitTogether < Formula
  VERSION = "0.1.0-alpha.24"

  desc "Better commit attribution while pairing."
  homepage "https://github.com/kejadlen/git-together"
  version VERSION
  url "https://github.com/kejadlen/git-together/releases/download/v#{VERSION}/git-together-v#{VERSION}-stable-x86_64-apple-darwin.tar.gz"
  sha256 "f74b0dc219269d9874a497ec93fbc916a403d5a904d98020397a4b154ee64ccb"

  depends_on "libssh2"
  depends_on "openssl@1.1"

  def install
    bin.install "git-together"
  end

  test do
    system "#{bin}/git-together"
  end
end
