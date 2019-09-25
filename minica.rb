require "FileUtils"

class Minica < Formula
  homepage "https://github.com/jsha/minica"

  v = "v1.0.1" # CI Managed
  url "https://github.com/starkandwayne/minica-binaries/releases/download/#{v}/minica-darwin-amd64"
  version v
  sha256 "8dccc08cc9e46e36da12b525db7acd84fedb70938ba4618c775d34be69b43801" # CI Managed

  def install
    FileUtils.mv("minica-darwin-amd64", "minica")
    bin.install "minica"
  end

  test do
    system "#{bin}/minica"
  end
end
