class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.9.0.tar.gz"
  version "0.9.0"
  sha256 "a6cccf0eb965ab8cfced632e0228cc0be575f665d1b690f05f26cdbf8b6d7b8f"

  def install
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
