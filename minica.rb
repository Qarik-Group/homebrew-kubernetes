require "FileUtils"

class Minica < Formula
  homepage "https://github.com/jsha/minica"

  v = "v1.0.2" # CI Managed
  url "https://github.com/starkandwayne/minica-binaries/releases/download/#{v}/minica-darwin-amd64"
  version v
  sha256 "c068c0f5d0cfd66a45468902822b6fec12c0d68a3fc4e1860b9a34790f4197fc" # CI Managed

  def install
    FileUtils.mv("minica-darwin-amd64", "minica")
    bin.install "minica"
  end

  test do
    system "#{bin}/minica"
  end
end
