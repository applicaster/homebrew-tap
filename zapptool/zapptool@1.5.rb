class ZapptoolAT15 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.5.4_c31a1d9ea0afbad853ed8e2328ac69e5abbe057f.zip"
  sha256 "245ed10f6b2ad9cc369f06f781d3c4c51dca105b7bef45bfd60e8730e8cfe84d"
  version "1.5.4"

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
