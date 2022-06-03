# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.100.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.100.0/eksctl_Darwin_amd64.tar.gz"
      sha256 "907f3da0f0a3633c45527b28b7a20e8cbcf8dc15bac30c8090bed35ffe7b16db"

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
    if Hardware::CPU.arm?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.100.0/eksctl_Darwin_arm64.tar.gz"
      sha256 "664ca8ad4e7bd453d6ebf01e81b492bde59d2752427e35ab3c621a5bbaad4813"

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
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.100.0/eksctl_Linux_armv6.tar.gz"
      sha256 "c4c3c01f8d464ed95ed2c28dc3c6a928a1736ee2b55b0a9a9c8793cf2ecb76e2"

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
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.100.0/eksctl_Linux_amd64.tar.gz"
      sha256 "3bd2590ca9e36b73c3fdabb5d245365c779b279f28bd1df27e324503e0ef48ee"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.100.0/eksctl_Linux_arm64.tar.gz"
      sha256 "92bf72e7d4a05b4f98246e835a2f71401e62800fd59a37a169f0745ae8ef6bf3"

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
  end

  head "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_Darwin_amd64.tar.gz"

  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"
end
