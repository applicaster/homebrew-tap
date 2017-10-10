class Zapptool1010 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "git@github.com:applicaster/ZappTool.git", :using => :git,
                                                 :tag => "v1.0.10"
  head "https://github.com/applicaster/ZappTool.git"

  version "1.0.10"

  depends_on :xcode => "8.1"

  def install
    system "OUTPUT_DIR=#{buildpath} ./scripts/build.sh"
    File.rename("#{buildpath}/build/zapptool", "#{buildpath}/build/zapptool1.0.10")
    prefix.install Dir["#{buildpath}/build/zapptool1.0.10"]
    inner_binary = "#{prefix}/zapptool1.0.10"
    bin.write_exec_script inner_binary
    chmod 0755, bin/"zapptool1.0.10"
  end

  test do
    system "(#{bin}/zapptool1.0.10 -version; true)"
  end
end
