class Zapptool < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v2.2.2_aab80e87bc2969208b690e71aaf7c0f34b42cf8c.zip"
  sha256 "4bd94cc3d75db3da88c0b901a40c0eecd87b903f9e6ad4c5d49171c4c936b71f"
  version "2.2.2"

  def install
    exec_filename = "#{name}".downcase
    prefix_filename = "#{prefix}/#{exec_filename}"
    prefix.install Dir["#{exec_filename}"]
    bin.write_exec_script "#{prefix_filename}"
    chmod 0755, bin/"#{exec_filename}"
  end

  test do
    system "(#{bin}/#{exec_filename} -version; true)"
  end
end
