class ZapptoolAT16 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.6.4_2b8dd3b09d1abc00a8f4310335fa955aedab0edb.zip"
  sha256 "11736856d31671c222894426637a908145fe395cbf6420b1ec74ccaae9fc9551"
  version "1.6.4"

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
