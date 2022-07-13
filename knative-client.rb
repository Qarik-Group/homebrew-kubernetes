require "FileUtils"

class KnativeClient < Formula
  homepage "https://github.com/knative/client"

  v = "vknative-v1.6.0" # CI Managed
  url "https://github.com/knative/client/releases/download/#{v}/kn-darwin-amd64"
  version v
  sha256 "a3523ba29896f8bfa47f5bd22970a7b1839f3a9f79a60a45db1762b04b482f30" # CI Managed

  def install
    FileUtils.mv("kn-darwin-amd64", "kn")
    bin.install "kn"
  end

  test do
    system "#{bin}/kn", "version"
  end
end
