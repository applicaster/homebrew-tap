class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.13.0.tar.gz"
  version "0.13.0"
  sha256 "df5b8ec3259ad8b9345c21bfd5d3fc35aed992e6ea823705e549c0b4451c60df"

  def install
    system "gem install terminal-table"
    system "gem install diffy"
    system "gem install commander"
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
