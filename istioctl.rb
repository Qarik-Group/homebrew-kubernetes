require "FileUtils"

class Istioctl < Formula
  homepage "https://github.com/istio/istio"

  v = "v1.6.3" # CI Managed
  @@verNum = v.sub "v", ""
  url "https://github.com/istio/istio/releases/download/#{@@verNum}/istio-#{@@verNum}-osx.tar.gz"
  version v
  sha256 "65c4da38ca076ff9ff45bdbef9a576575657c651488c50ba0e41c509da04b86e" # CI Managed

  def install
    bin.install "bin/istioctl"
  end

  test do
    system "#{bin}/istioctl", "version"
  end
end
