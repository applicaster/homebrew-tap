class ZapptoolAT22 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v2.2.12_30f9fc58f861f3db50a171da8c074c6a3b368249.zip"
  sha256 "254e1f823f9edd7d9397779d09923fd12cafa2e31d61b0a1bc3ca7f042598f27"
  version "2.2.12"

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
