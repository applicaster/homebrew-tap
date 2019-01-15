class ZapptoolAT22 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v2.2.6_3365d9876cc7b4d4a05fc6cafe14f6cf11898810.zip"
  sha256 "2c2a21c4e8060a212ab9e433d320b274472078f5b1f512b58d48a162eb048e7b"
  version "2.2.6"

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
