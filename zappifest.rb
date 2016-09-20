class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.10.0.tar.gz"
  version "0.10.0"
  sha256 "ba83c07e647ec2017897513cd13db1633a226eb7be07375a77f2773f680c7b7b"

  def install
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
