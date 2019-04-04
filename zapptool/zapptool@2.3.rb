class ZapptoolAT23 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v2.3.0_7a278fcc0a93a8e8e3c139dc6c4f2f90bda75ced.zip"
  sha256 "6aea169e7f0094a63cb459428c8a17c7b9662c9778e0d5bede100752edb4704c"
  version "2.3.0"

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
