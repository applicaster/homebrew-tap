class ZapptoolAT21 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v2.1.0_3e99e970e166fdf9a031a4682fa6fb586817c9dd.zip"
  sha256 "b9925bf69d7ce6e0571def9a9f731c6ba0089ff8a18a0d1741cb2a91d8bbc689"
  version "2.1.0"

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
