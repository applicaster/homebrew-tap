class Zapptool < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v2.0.10_b12bf824da8aaafabebd624c9809ace01e1ed69d.zip"
  sha256 "de44283c9da3115b5d60b4a873486c18567f3ea154696cfce7f910176963630b"
  version "2.0.10"

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
