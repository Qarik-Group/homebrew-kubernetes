require "FileUtils"

class KnativeClient < Formula
  homepage "https://github.com/knative/client"

  v = "vknative-v1.8.0" # CI Managed
  url "https://github.com/knative/client/releases/download/#{v}/kn-darwin-amd64"
  version v
  sha256 "0db19ab608dfb7b0efc7c3032f5f683f79217ebd479ae4ea993893afa57090f9" # CI Managed

  def install
    FileUtils.mv("kn-darwin-amd64", "kn")
    bin.install "kn"
  end

  test do
    system "#{bin}/kn", "version"
  end
end
