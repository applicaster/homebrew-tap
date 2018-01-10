class ZapptoolAT16 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.6.6_c0b23139863bb2f7a094d0bd0b2d43aa5f0483ed.zip"
  sha256 "74365ec1fdbf6c5ee77dcf126f7fb3b61979078a5d033dfd0f097cb456b43b6c"
  version "1.6.6"

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
