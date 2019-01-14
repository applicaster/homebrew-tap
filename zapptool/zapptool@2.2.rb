class ZapptoolAT22 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v2.2.5_5c66fad04f2f56ecc24e009ccd00cf542fec524b.zip"
  sha256 "33416e81cc534ce1da5fd7428bf387e5e73b0a1ef7c25e48499cfbcc1cbe6fbe"
  version "2.2.5"

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
