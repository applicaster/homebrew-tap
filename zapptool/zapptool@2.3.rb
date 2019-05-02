class ZapptoolAT23 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v2.3.2_b48e864820ae6b1040cdca3e486855658a8a549b.zip"
  sha256 "5c98a168de94483a391f779ab5b98394680ccf54412d1594c6bd859f3cfe20e9"
  version "2.3.2"

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
