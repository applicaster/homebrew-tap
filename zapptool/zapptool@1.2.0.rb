class ZapptoolAT120 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "git@github.com:applicaster/ZappTool.git", :using => :git,
                                                 :tag => "v1.2.0"
  head "https://github.com/applicaster/ZappTool.git"

  version "1.2.0"
  depends_on "ImageMagick" => :build
  depends_on :xcode => "9.0"

  def install
    system "OUTPUT_DIR=#{buildpath} ./scripts/build.sh"
    prefix.install Dir["#{buildpath}/build/zapptool"]
    inner_binary = "#{prefix}/zapptool"
    bin.write_exec_script inner_binary
    chmod 0755, bin/"zapptool"
  end

  test do
    system "(#{bin}/zapptool -version; true)"
  end
end
