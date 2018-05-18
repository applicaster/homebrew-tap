class ZapptoolAT18 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.8.0_6ea2f269c2f7ae1347094e0e1ffdf798d8dfccb7.zip"
  sha256 "4af2ce14a1fda511ee7048222406e25927f786c708afe34ef6d78a04a75751bf"
  version "1.8.0"

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
