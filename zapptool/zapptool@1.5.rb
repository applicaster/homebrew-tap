class ZapptoolAT15 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.5.2_8c69485b5a0f08f1a3d5660d945c38a8f1b0310f.zip"
  sha256 "fd312796ebcb89d2e1862606510d3258beb28388f414d89d30a87f7a83404c2b"
  version "1.5.2"

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
