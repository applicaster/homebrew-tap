class ZapptoolAT111 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.11.6_4ffa65c136e46c5eea21c2379f90f0039c2e6c0d.zip"
  sha256 "559040fc8021077c92014024a99507161391aed7b54fdd6d93ed6e84be96575a"
  version "1.11.6"

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
