require "FileUtils"

class Kwt < Formula
  homepage "https://github.com/cppforlife/kwt"

  v = "v0.0.2" # CI Managed
  url "https://github.com/cppforlife/kwt/releases/download/#{v}/kwt-darwin-amd64"
  version v
  sha256 "bf636af76e60925df87c6a81da8ce859e7d56fb753e6b1535e7548191451518f" # CI Managed

  def install
    FileUtils.mv("kwt-darwin-amd64", "kwt")
    bin.install "kwt"
  end

  test do
    system "#{bin}/kwt", "version"
  end
end
