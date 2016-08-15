class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.8.0.tar.gz"
  version "0.8.0"
  sha256 "8131db898d14edd431255a49fcd88d97f4e810b9e4c8443d5c8897306a469d90"

  def install
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
