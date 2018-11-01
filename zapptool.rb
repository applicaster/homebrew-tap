class Zapptool < Formula
  desc "Fast configuration tool for modular app"
  homepage "https://github.com/applicaster/ZappTool"
  url "https://dl.bintray.com/applicaster-ltd/pods/ZappTool_v1.11.8_4831176ca4685b1407772abe8419c61c9c0063de.zip"
  sha256 "9ac4e9607dc450888de61ebdcc3597b1b441b338d39e9ce71d94253d4a3d492c"
  version "1.11.8"

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
