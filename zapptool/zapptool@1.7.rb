class ZapptoolAT17 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.7.5_701cb2077bc7d816eb6cf79a9b4f82cff7d7ec86.zip"
  sha256 "32c101f0d5c5bd8552d3e4f3ab4fb37b64bd1302ec6a6167c146db5037602fe8"
  version "1.7.5"

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
