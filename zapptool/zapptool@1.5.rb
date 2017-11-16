class ZapptoolAT15 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.5.0_2fb2e0faf2e7cf1ebeeae697ae9d0e88f1e704d8.zip"
  sha256 "6acf22bb225a3cc3ba20ddfa761f06b269db060428726c9e1714f4409e69df0e"
  version "1.5.0"

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
