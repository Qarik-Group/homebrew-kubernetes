require "FileUtils"

class Kwt < Formula
  homepage "https://github.com/cppforlife/kwt"

  v = "v0.0.1" # CI Managed
  url "https://github.com/cppforlife/kwt/releases/download/#{v}/kwt-darwin-amd64"
  version v
  sha256 "65317d3e2507344fab4a6ceac7edeb61ae441bf15031883efdcdd20451c505b7" # CI Managed

  def install
    FileUtils.mv("kwt-darwin-amd64", "kwt")
    bin.install "kwt"
  end

  test do
    system "#{bin}/kwt", "version"
  end
end
