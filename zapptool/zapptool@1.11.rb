class ZapptoolAT111 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.11.4_51261eba6d164bdfbb27bd847063123a6d72fa81.zip"
  sha256 "a531e1dba8b84a85c2ef24dde5bcbe2bc56bacc64d8f84077245266a0b6aeec2"
  version "1.11.4"

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
