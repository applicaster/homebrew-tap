class Zapptool < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v2.2.3_d2919f31f49a277c2218089b8d902ce05b9eb628.zip"
  sha256 "6a9b56591aec07f24b37050873f2b19212cf1d6593629684f8998cf083b7f49d"
  version "2.2.3"

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
