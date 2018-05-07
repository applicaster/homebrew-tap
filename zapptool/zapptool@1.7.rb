class ZapptoolAT17 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.7.2_503c0c5d2a357ac61504e988817a17b510cf8085.zip"
  sha256 "2ef685c81898eb4458caad4c24c9e6fee12389f15ab3657a577265cd1fbdfad0"
  version "1.7.2"

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
