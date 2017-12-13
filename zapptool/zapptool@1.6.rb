class ZapptoolAT16 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.6.2_17099f3eb7d6efd1c209ba7bdd8c2503c2a54bda.zip"
  sha256 "7f6e626d334d7f73e551a126d6725ffb47feaa1c61b173220b598282c4075aed"
  version "1.6.2"

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
