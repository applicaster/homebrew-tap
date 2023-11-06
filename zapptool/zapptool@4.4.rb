class ZapptoolAT44 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://assets-production.applicaster.com/zapp/helpers/zapptool/4.4.18/zapptool.zip"
  sha256 "4e3aef70fbd1df639cec29baa29259f31854270ad29d89eb38dda1f4a786ebec"
  version "4.4.18"

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
