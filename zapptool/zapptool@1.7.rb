class ZapptoolAT17 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.7.0_53294c4027236baf69c5b40fa7d1eddaabb5163f.zip"
  sha256 "b3c11cc43a4b94edd4e1b53cffa399661582022f34517ba376def575c5787986"
  version "1.7.0"

  def install
    exec_filename = "zapptool"
    prefix_filename = "#{prefix}/#{exec_filename}"
    prefix.install Dir["#{exec_filename}"]
    bin.write_exec_script "#{prefix_filename}"
    chmod 0755, bin/"#{exec_filename}"
  end

  test do
    system "(#{bin}/#{exec_filename} -version; true)"
  end
end
