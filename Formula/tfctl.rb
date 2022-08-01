# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfctl < Formula
  desc ""
  homepage "https://weaveworks.github.io/tf-controller"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.10.0/tfctl_Darwin_arm64.tar.gz"
      sha256 "7db25df819b9e97e3dddb62e4bb7d1faadeafdb68bc0328c78f62ece036ea2c3"

      def install
        bin.install "tfctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.10.0/tfctl_Darwin_amd64.tar.gz"
      sha256 "4bb424baa46eec8fa32eaf5abe358d7f1f4074c71ff6a5be73ea07800ee15e99"

      def install
        bin.install "tfctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.10.0/tfctl_Linux_arm64.tar.gz"
      sha256 "400182f4300005d5bbe7fea947875019143423c595a94c8bc3d0e84b5797fef7"

      def install
        bin.install "tfctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.10.0/tfctl_Linux_amd64.tar.gz"
      sha256 "57b921165ea9288e6ae311426000a9db6613b4f809c93fb1982a0f03fc141070"

      def install
        bin.install "tfctl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.10.0/tfctl_Linux_armv6.tar.gz"
      sha256 "9923c56304d679bab3bbefc1145a8b7cb3d71b91af9df9c992434b3394073311"

      def install
        bin.install "tfctl"
      end
    end
  end
end
