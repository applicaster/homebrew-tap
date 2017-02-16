class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.22.0.tar.gz"
  version "0.22.0"
  sha256 "2b55959467a1c4c00847e907b610628e8305feb87c1f052d641f1aee72043d8d"

  resource "commander" do
    url "https://rubygems.org/gems/commander-4.4.0.gem"
    sha256 "358ae12110faed47683633bdf0e71d6782a0f3eccdbaea4e76b375d260490a56"
  end

  resource "mime-types" do
    url "https://rubygems.org/gems/mime-types-3.1.gem"
    sha256 "75949321c3f55e6618d0596016059841c26168342ec1ee4e641053bb66fa0701"
  end

  resource "diffy" do
    url "https://rubygems.org/gems/diffy-3.1.0.gem"
    sha256 "72161a619117127af958d3fca3d04a1f6dd6c5bb416209ff923aa4ed7e5cf1ab"
  end

  resource "terminal-table" do
    url "https://rubygems.org/gems/terminal-table-1.7.3.gem"
    sha256 "f10d5ff88f5596dfeb45d2cdf1ad35b8b8e347f58bcc7307a270af44176885a5"
  end

  resource "inquirer" do
    url "https://rubygems.org/gems/inquirer-0.2.1.gem"
    sha256 "1cb639228bf9f2e98543f866e94e64872631d7b6c8b2a5565289175405e1e0af"
  end

  def install
    resources.each do |r|
      r.verify_download_integrity(r.fetch)
      system("gem", "install", r.cached_download, "--no-document",
        "--install-dir", "#{libexec}/vendor")
    end

    mkpath bin
    (bin/"zappifest").write <<-EOS.undent
    #!/bin/bash
    export GEM_HOME="#{libexec}/vendor"
    ruby #{lib}/zappifest.rb "$@"
    EOS

    lib.install(
      "lib/multipart.rb",
      "lib/network_helpers.rb",
      "lib/manifest_helpers.rb",
      "lib/question.rb",
      "lib/zappifest.rb",
    )
  end
end
