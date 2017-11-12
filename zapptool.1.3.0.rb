class Zapptool130 < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.3.0_dd5bf298a16a3e7e76074e215fdcbb62e5600206.zip"
  sha256 "14459b96523689a03fc54b7940061f9517652e34d883ce6154ce1b3fd15fbb53"
  version "v1.3.0"

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
