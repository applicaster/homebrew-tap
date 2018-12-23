class Zapptool < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v2.0.9_75feecb443f6a26ff1944abcb626b49973b3385f.zip"
  sha256 "d263fdb6f52d72b34b4fd655104919cd8415e2e433ae5517da68f1b6ac27e227"
  version "2.0.9"

  def install
    exec_filename = "#{name}".downcase
    prefix_filename = "#{prefix}/#{exec_filename}"
    prefix.install Dir["#{exec_filename}"]
    bin.write_exec_script "#{prefix_filename}"
    chmod 0755, bin/"#{exec_filename}"
  end

  test do
    system "(#{bin}/#{exec_filename} -version; true)"
  end
end
