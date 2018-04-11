class ZapptoolAT16 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.6.10_9a6fce5151904d5b8fa4ba36ba8d016bc07524f8.zip"
  sha256 "d2ebb8074983a512d68603f9068cc6bf3bcc01db6d71a3d20b32b0daf1b78db3"
  version "1.6.10"

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
