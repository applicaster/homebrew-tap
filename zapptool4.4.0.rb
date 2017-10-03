class Zapptool440 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "git@github.com:applicaster/ZappTool.git", :using => :git,
                                                 :tag => "v1.1.8"
  head "https://github.com/applicaster/ZappTool.git"

  version "1.1.8"
  depends_on "ImageMagick" => :build

  def install
    system "OUTPUT_DIR=#{buildpath} ./scripts/build.sh"
    File.rename("#{buildpath}/build/zapptool", "#{buildpath}/build/zapptool4.4.0")
    prefix.install Dir["#{buildpath}/build/zapptool4.4.0"]
    inner_binary = "#{prefix}/zapptool4.4.0"
    bin.write_exec_script inner_binary
    chmod 0755, bin/"zapptool4.4.0"
  end

  test do
    system "(#{bin}/zapptool4.4.0 -version; true)"
  end
end
