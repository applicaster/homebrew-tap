class ZapptoolAT63 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://assets-production.applicaster.com/zapp/helpers/zapptool/6.3.5/zapptool.zip"
  sha256 "8236d97c7837b8acfa6534f429fd8bf83077f9c75006b498690dcc5725e82ae7"
  version "6.3.5"

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
