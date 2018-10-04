require "FileUtils"

class Kwt < Formula
  homepage "https://github.com/cppforlife/kwt"

  v = "v0.0.3" # CI Managed
  url "https://github.com/cppforlife/kwt/releases/download/#{v}/kwt-darwin-amd64"
  version v
  sha256 "a99d3c7ab4bed153f17c1482ccb018f316e1256dfa2f8787d69360500e717492" # CI Managed

  def install
    FileUtils.mv("kwt-darwin-amd64", "kwt")
    bin.install "kwt"
  end

  test do
    system "#{bin}/kwt", "version"
  end
end
