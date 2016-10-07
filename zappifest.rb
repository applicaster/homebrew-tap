class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.11.0.tar.gz"
  version "0.11.0"
  sha256 "b8b90011b2ff5c4d7a1fd0a385dd072e2dcfe76427b42f48301eebc9076bb51e"

  def install
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
