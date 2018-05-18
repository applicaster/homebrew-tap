class ZapptoolAT18 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.8.1_52b8d77f31be55b6f871311156ef0b695999cc22.zip"
  sha256 "db943c30e7b4ef2353c2d0a9eaa60ddbdea1c5b488c404b5896b92f34098053d"
  version "1.8.1"

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
