class ZapptoolAT112 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.12.0_104f8f78384771dd5cac8c15062f6b2bff092d98.zip"
  sha256 "a8e823ba549a1c94c0c2558ffaee4c3a93c089eeb5a80e340fcba9c3395ff427"
  version "1.12.0"

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
