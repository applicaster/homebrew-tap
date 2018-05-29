class ZapptoolAT19 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.9.0_707f68fe57b790dd51c87969448e81368f5e3f7c.zip"
  sha256 "b630f26c919daeccad0d58aba2bd3a39add18c1abb197bb5d80ab8d8058c20cb"
  version "1.9.0"

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
