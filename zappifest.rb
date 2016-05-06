class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "37d2ff88f9ae7cd7ddebbf117f2a88ebb9052ce72df8413b230f713e1c6518ea"

  def install
    bin.install "zappifest"
  end
end
