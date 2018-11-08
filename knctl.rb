require "FileUtils"

class Knctl < Formula
  homepage "https://github.com/cppforlife/knctl"

  v = "v0.0.10" # CI Managed
  url "https://github.com/cppforlife/knctl/releases/download/#{v}/knctl-darwin-amd64"
  version v
  sha256 "63aabc5021476a17e18b425a8976b4c305fc2fdd06318a1360004b3250a60749" # CI Managed

  def install
    FileUtils.mv("knctl-darwin-amd64", "knctl")
    bin.install "knctl"
  end

  test do
    system "#{bin}/knctl", "version"
  end
end
