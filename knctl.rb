require "FileUtils"

class Knctl < Formula
  homepage "https://github.com/cppforlife/knctl"

  v = "v0.2.0" # CI Managed
  url "https://github.com/cppforlife/knctl/releases/download/#{v}/knctl-darwin-amd64"
  version v
  sha256 "6de2a4fe53edc6fb3a419a09fba268c1a1eaa7f07f095d740534f463f645e72f" # CI Managed

  def install
    FileUtils.mv("knctl-darwin-amd64", "knctl")
    bin.install "knctl"
  end

  test do
    system "#{bin}/knctl", "version"
  end
end
