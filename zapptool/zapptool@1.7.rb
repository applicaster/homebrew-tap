class ZapptoolAT17 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.7.7_c4f14cfcbc5d723c29e790cfb5947f32c257b0a4.zip"
  sha256 "8518cc61b5305106ac0aaa8892ec43aec289602e481cd65dd6525baf96833913"
  version "1.7.7"

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
