require "FileUtils"

class KnativeClient < Formula
  homepage "https://github.com/knative/client"

  v = "vknative-v1.2.0" # CI Managed
  url "https://github.com/knative/client/releases/download/#{v}/kn-darwin-amd64"
  version v
  sha256 "3f8250886b3c8b584e33cebea185d5c463b0416f618b69e8be5e0273e756c6d2" # CI Managed

  def install
    FileUtils.mv("kn-darwin-amd64", "kn")
    bin.install "kn"
  end

  test do
    system "#{bin}/kn", "version"
  end
end
