class ZapptoolAT20 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v2.0.3_3e9d7f791fa2ffd7c89fa626b6fc8eb9e0a49014.zip"
  sha256 "99d08a78dbca3935243893b1df60e3bcc8f2fcfeee8ec19884ae7729d0924b9d"
  version "2.0.3"

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
