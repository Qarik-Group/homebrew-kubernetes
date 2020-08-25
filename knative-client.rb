require "FileUtils"

class KnativeClient < Formula
  homepage "https://github.com/knative/client"

  v = "v0.16.1" # CI Managed
  url "https://github.com/knative/client/releases/download/#{v}/kn-darwin-amd64"
  version v
  sha256 "5696310afa3b1797cde32e773f3c34d529f0971adcd5362ebdf1517e09b1ca98" # CI Managed

  def install
    FileUtils.mv("kn-darwin-amd64", "kn")
    bin.install "kn"
  end

  test do
    system "#{bin}/kn", "version"
  end
end
