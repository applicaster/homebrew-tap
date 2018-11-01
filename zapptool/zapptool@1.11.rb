class ZapptoolAT111 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.11.7_ecdf9489da77062a8ea7f4cef1d368f1dd19d270.zip"
  sha256 "0c48d6d5ec1e80394130c527cd2ee6f8f56d03e98a8a9043072f433852b420a3"
  version "1.11.7"

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
