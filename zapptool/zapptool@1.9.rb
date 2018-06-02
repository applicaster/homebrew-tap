class ZapptoolAT19 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.9.2_eea1ea7e50870557f62f26e44b679684549edb82.zip"
  sha256 "5a5aa308e3b2d54a09d7e9cbdd6c6800ef235ce1c1d2a0d2fd68ca7c36c0fbb3"
  version "1.9.2"

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
