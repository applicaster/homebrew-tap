class ZapptoolAT112 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.12.1_0a61e44e97597a6280c12407e0e669e54fc3c7d2.zip"
  sha256 "c6c96d82027b2a7cffc4f465370bb4376ecae6116445d40caa0d579bdb35ab8d"
  version "1.12.1"

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
