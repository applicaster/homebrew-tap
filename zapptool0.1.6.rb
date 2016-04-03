class Zapptool016 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "git@github.com:applicaster/ZappTool.git", :using => :git,
                                                 :tag => "v0.1.6"
  head "https://github.com/applicaster/ZappTool.git"

  version "0.1.6"

  depends_on :xcode => "7.1"

  def install
    system "OUTPUT_DIR=#{buildpath} ./scripts/build.sh"
    File.rename("#{buildpath}/build/zapptool", "#{buildpath}/build/zapptool0.1.6")
    prefix.install Dir["#{buildpath}/build/zapptool0.1.6"]
    inner_binary = "#{prefix}/zapptool0.1.6"
    bin.write_exec_script inner_binary
    chmod 0755, bin/"zapptool0.1.6"
  end

  test do
    system "(#{bin}/zapptool0.1.6 -version; true)"
  end
end
