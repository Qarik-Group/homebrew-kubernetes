require "FileUtils"

class Istioctl < Formula
  homepage "https://github.com/istio/istio"

  v = "v1.0.2" # CI Managed
  @@verNum = v.sub "v", ""
  url "https://github.com/istio/istio/releases/download/#{@@verNum}/istio-#{@@verNum}-osx.tar.gz"
  version v
  sha256 "bbe709c37ea97a0d623e19547ece302fdf30527a628bda4a5731adc7b011dbce" # CI Managed

  def install
    bin.install "bin/istioctl"
  end

  test do
    system "#{bin}/istioctl", "version"
  end
end
