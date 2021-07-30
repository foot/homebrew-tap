# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.59.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/eksctl/releases/download/0.59.0/eksctl_Darwin_amd64.tar.gz"
      sha256 "86c5892639c36cfaad02700fdfd141e15e72d1a4aa24e70a0f6f0033ab5a1817"
    end
    if Hardware::CPU.arm?
      url "https://github.com/weaveworks/eksctl/releases/download/0.59.0/eksctl_Darwin_arm64.tar.gz"
      sha256 "e615ec8fd91b92ee03bb4c038437d582a6b8dc50ce3e9ce6cc17419a72656aec"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/eksctl/releases/download/0.59.0/eksctl_Linux_amd64.tar.gz"
      sha256 "84ef1d3aff312ea7c21a0c2765a0705e2458ddb9a28bacfee34bde4c0ac6c183"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/eksctl/releases/download/0.59.0/eksctl_Linux_armv6.tar.gz"
      sha256 "1f0f946b6ac9a104b5cbbda55f620d292a9c8145778b9309b6852a2aa60cc17f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/eksctl/releases/download/0.59.0/eksctl_Linux_arm64.tar.gz"
      sha256 "f2c362a7c3d66beeac990f46047302804d0b24d1567eb40c0dca79cce12b0533"
    end
  end

  head "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_Darwin_amd64.tar.gz"

  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "eksctl"

    # Install bash completion
    output = Utils.popen_read("#{bin}/eksctl completion bash")
    (bash_completion/"eksctl").write output

    # Install zsh completion
    output = Utils.popen_read("#{bin}/eksctl completion zsh")
    (zsh_completion/"_eksctl").write output
  end
end
