class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.2.2.tar.gz"
  version "0.2.2"
  sha256 "e3ef8466b204d9a849fd72d61ff868122ddfc4926542202c361fc516572cda5c"

  def install
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
