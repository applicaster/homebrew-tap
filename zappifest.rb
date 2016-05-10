class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "adbdb7f77ba5fc5dc4b976d1846b2cda7e6d24a2041e3d81e9bc1b7776ec3a7f"

  def install
    bin.install "zappifest"
  end
end
