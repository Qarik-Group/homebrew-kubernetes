require "FileUtils"

class Knctl < Formula
  homepage "https://github.com/cppforlife/knctl"

  v = "v0.2.0" # CI Managed
  url "https://github.com/cppforlife/knctl/releases/download/#{v}/knctl-darwin-amd64"
  version v
  sha256 "" # CI Managed

  def install
    FileUtils.mv("knctl-darwin-amd64", "knctl")
    bin.install "knctl"
  end

  test do
    system "#{bin}/knctl", "version"
  end
end
