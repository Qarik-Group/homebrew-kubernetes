require "FileUtils"

class Minica < Formula
  homepage "https://github.com/jsha/minica"

  v = "v0.3.0" # CI Managed
  url "https://github.com/starkandwayne/minica-binaries/releases/download/#{v}/minica-darwin-amd64"
  version v
  sha256 "382f075e8fdbf3cb33d6383149934cd3ebca2eb3b430e1a981f9575498f990b9" # CI Managed

  def install
    FileUtils.mv("minica-darwin-amd64", "minica")
    bin.install "minica"
  end

  test do
    system "#{bin}/minica"
  end
end
