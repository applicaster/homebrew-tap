class ZapptoolAT111 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.11.5_8fa777cf52242fade34e4fad6a2fee90eb563844.zip"
  sha256 "6166b2389d51db52cb8c2692d05fb96626851b8da29106f0e14f460dec21398e"
  version "1.11.5"

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
