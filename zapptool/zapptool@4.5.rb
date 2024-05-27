class ZapptoolAT45 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://assets-production.applicaster.com/zapp/helpers/zapptool/4.5.2/zapptool.zip"
  sha256 "5b26a471a9e1307a921c58560f6626800d8d232d7ba8d2967daef9f7855b7e70"
  version "4.5.2"

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
