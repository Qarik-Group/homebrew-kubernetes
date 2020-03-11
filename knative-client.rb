require "FileUtils"

class KnativeClient < Formula
  homepage "https://github.com/knative/client"

  v = "v0.13.0" # CI Managed
  url "https://github.com/knative/client/releases/download/#{v}/kn-darwin-amd64"
  version v
  sha256 "492be7db17aee7288fa5097a3cc3601696086883632a3a2bead1680482a3f289" # CI Managed

  def install
    FileUtils.mv("kn-darwin-amd64", "kn")
    bin.install "kn"
  end

  test do
    system "#{bin}/kn", "version"
  end
end
