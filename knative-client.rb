require "FileUtils"

class KnativeClient < Formula
  homepage "https://github.com/knative/client"

  v = "vknative-v1.1.0" # CI Managed
  url "https://github.com/knative/client/releases/download/#{v}/kn-darwin-amd64"
  version v
  sha256 "580005a67fda65170c60e85236fccbc6467176e694be0944f65a5ff42f216d47" # CI Managed

  def install
    FileUtils.mv("kn-darwin-amd64", "kn")
    bin.install "kn"
  end

  test do
    system "#{bin}/kn", "version"
  end
end
