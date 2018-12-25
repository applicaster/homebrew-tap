class ZapptoolAT21 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v2.1.2_9d0c31c8a0c933befe7e406500f14db4e88e4bab.zip"
  sha256 "4bab35d29aee063d162b27621665b8149c41b250b1a175ab5ee7f018a609a90a"
  version "2.1.2"

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
