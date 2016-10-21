class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.12.1.tar.gz"
  version "0.12.1"
  sha256 "4a8f89ba0ae9d6e5cebffc0a0f70ab9b4e7b37466dead53d11e323d9622a2081"

  def install
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
