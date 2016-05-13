class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.2.1.tar.gz"
  version "0.2.1"
  sha256 "fb787512c8c4443229c1635d84cab7cce49ea4c17e52470dc7fc5a20ca140c48"

  def install
    bin.install "zappifest"
  end
end
