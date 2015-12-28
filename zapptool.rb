class Zapptool < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/Zapp-iOS-App-Configuration-Tool"
  url "https://github.com/applicaster/Zapp-iOS-App-Configuration-Tool.git"

  depends_on :xcode => "7.1"

  def install
    system "./scripts/build.sh", "SYMROOT=build"
    prefix.install Dir["build/Release/*"]
    inner_binary = "#{prefix}/ZappConfiguration"
    bin.write_exec_script inner_binary
    chmod 0755, bin/"ZappConfiguration"
  end

  test do
    system "(#{bin}/ZappConfiguration -version; true)"
  end
end
