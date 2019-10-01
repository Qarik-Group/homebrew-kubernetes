require "FileUtils"

class KnativeClient < Formula
  homepage "https://github.com/knative/client"

  v = "v0.2.0" # CI Managed
  url "https://github.com/knative/client/releases/download/#{v}/kn-darwin-amd64"
  version v
  sha256 "49d8433a0c3ca795bd01858f6bce1a81467911360c0de4c69fb9a19ca72a69bd" # CI Managed

  def install
    FileUtils.mv("kn-darwin-amd64", "kn")
    bin.install "kn"
  end

  test do
    system "#{bin}/kn", "version"
  end
end
