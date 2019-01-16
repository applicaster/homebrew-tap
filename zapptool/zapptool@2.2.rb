class ZapptoolAT22 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v2.2.8_ca6b38dd22777f040d3e86d5c7b97f5c1ec2163d.zip"
  sha256 "4882262bb5da794c6f255800b6bda21ad12591e88cd028be281889d3c4b73b8b"
  version "2.2.8"

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
