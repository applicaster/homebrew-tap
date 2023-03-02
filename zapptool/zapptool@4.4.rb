class ZapptoolAT44 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://assets-production.applicaster.com/zapp/helpers/zapptool/4.4.13/zapptool.zip"
  sha256 "57ce462d9d177ff86717dc58204500d586f7f02bcf6e01ec6a6a7d5e3ef8579c"
  version "4.4.13"

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
