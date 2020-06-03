require "FileUtils"

class KnativeClient < Formula
  homepage "https://github.com/knative/client"

  v = "v0.15.0" # CI Managed
  url "https://github.com/knative/client/releases/download/#{v}/kn-darwin-amd64"
  version v
  sha256 "" # CI Managed

  def install
    FileUtils.mv("kn-darwin-amd64", "kn")
    bin.install "kn"
  end

  test do
    system "#{bin}/kn", "version"
  end
end
