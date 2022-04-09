class ZapptoolAT42 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://assets-production.applicaster.com/zapp/helpers/zapptool/4.2.9/zapptool.zip"
  sha256 "b33ed7d5a40e0c9de4895f264cd7b2afe86df3aecd1f2d08ea9d26e936772144"
  version "4.2.9"

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
