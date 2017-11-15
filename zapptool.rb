class Zapptool < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.3.1_625820da503bca9a7dfce9745faf8a4ecef9cbec.zip"
  sha256 "0f4e1dbbe6fd6a8ccb469ce24388e3a05ec9de0882b1df62f5e078779e3d4bc9"
  version "1.3.1"

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
