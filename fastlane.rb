class Fastlane < Formula
  desc "Custom fastlane version with Wifi support enabling in produce"
  homepage "https://github.com/applicaster/Fastlane"
  url "https://dl.bintray.com/applicaster-ltd/pods/fastlane.2.299.0.zip"
  sha256 "2126e60424759e4f7272ead81fd3e21ac99a7a979a12767e4b32146a06835f32"
  version "2.299.0"

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
