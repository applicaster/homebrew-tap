class ZapptoolAT17 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.7.6_031ee0e8650bba772b2ee57c4661f3ed882c4efd.zip"
  sha256 "b8dcf9403f76886ffd0faf7fcf6fc7b72959812389518c849a8e9547e1fa2d3b"
  version "1.7.6"

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
