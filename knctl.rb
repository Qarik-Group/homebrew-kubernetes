require "FileUtils"

class Knctl < Formula
  homepage "https://github.com/cppforlife/knctl"

  v = "v0.3.0" # CI Managed
  url "https://github.com/cppforlife/knctl/releases/download/#{v}/knctl-darwin-amd64"
  version v
  sha256 "382f075e8fdbf3cb33d6383149934cd3ebca2eb3b430e1a981f9575498f990b9" # CI Managed

  def install
    FileUtils.mv("knctl-darwin-amd64", "knctl")
    bin.install "knctl"
  end

  test do
    system "#{bin}/knctl", "version"
  end
end
