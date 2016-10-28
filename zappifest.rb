class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.13.0.tar.gz"
  version "0.13.0"
  sha256 "df5b8ec3259ad8b9345c21bfd5d3fc35aed992e6ea823705e549c0b4451c60df"

  resource "commander" do
    url "https://rubygems.org/gems/commander-4.4.0.gem"
    sha256 "358ae12110faed47683633bdf0e71d6782a0f3eccdbaea4e76b375d260490a56"
  end

  resource "diffy" do
    url "https://rubygems.org/gems/diffy-3.1.0.gem"
    sha256 "72161a619117127af958d3fca3d04a1f6dd6c5bb416209ff923aa4ed7e5cf1ab"
  end

  resource "terminal-table" do
    url "https://rubygems.org/gems/terminal-table-1.7.3.gem"
    sha256 "f10d5ff88f5596dfeb45d2cdf1ad35b8b8e347f58bcc7307a270af44176885a5"
  end

  def install
    resources.each do |r|
      r.verify_download_integrity(r.fetch)
      system("gem", "install", r.cached_download, "--no-document",
        "--install-dir", "#{libexec}/vendor")
    end

    mkpath bin
    (bin/"__YOUR_FORMULA_SCRIPT__").write <<-EOS.undent
    #!/bin/bash
    echo "export GEM_HOME='#{libexec}/vendor'" >> ~/.bashrc
    echo "export GEM_HOME='#{libexec}/vendor'" >> ~/.zshrc
    export GEM_HOME="#{libexec}/vendor"
    exec ruby __TARGET__ "$@"
    EOS

    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"

    puts "Please restart your terminal before using Zappifest"
  end
end
