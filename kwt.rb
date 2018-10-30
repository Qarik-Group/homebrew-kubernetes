require "FileUtils"

class Kwt < Formula
  homepage "https://github.com/cppforlife/kwt"

  v = "v0.0.4" # CI Managed
  url "https://github.com/cppforlife/kwt/releases/download/#{v}/kwt-darwin-amd64"
  version v
  sha256 "a4e2812662f832005cf083003754dc2c84d014ee535470ef83c70c6d8de0bbcf" # CI Managed

  def install
    FileUtils.mv("kwt-darwin-amd64", "kwt")
    bin.install "kwt"
  end

  test do
    system "#{bin}/kwt", "version"
  end
end
