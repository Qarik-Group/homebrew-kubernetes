require "FileUtils"

class Knctl < Formula
  homepage "https://github.com/cppforlife/knctl"

  v = "v0.1.0" # CI Managed
  url "https://github.com/cppforlife/knctl/releases/download/#{v}/knctl-darwin-amd64"
  version v
  sha256 "e98d9931bca05dd545c25acddc1366fa78cb3b5bacb5110b59fefa0c1fb3f0a5" # CI Managed

  def install
    FileUtils.mv("knctl-darwin-amd64", "knctl")
    bin.install "knctl"
  end

  test do
    system "#{bin}/knctl", "version"
  end
end
