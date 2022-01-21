# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.80.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.80.0/eksctl_Darwin_amd64.tar.gz"
      sha256 "e313c8eb818036fb3fff3192703b4e76bdcebf35e4d14c14275bc6144b2f0c02"

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
      url "https://github.com/weaveworks/eksctl/releases/download/v0.80.0/eksctl_Darwin_arm64.tar.gz"
      sha256 "5efb89ea5a94c4132e44a0dafccd9d043d3bb98c2984c6f8cbf9e9b655dfe228"

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
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.80.0/eksctl_Linux_amd64.tar.gz"
      sha256 "b2277e885da94ca09152050e7b09dd1d3558c3bbfbc653522e6483c558438c1f"

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
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.80.0/eksctl_Linux_armv6.tar.gz"
      sha256 "af1d53c6ebffe7726643ddf576b01692e2f778223fda7aebcdec63be2a6f3065"

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
      url "https://github.com/weaveworks/eksctl/releases/download/v0.80.0/eksctl_Linux_arm64.tar.gz"
      sha256 "53a5c577ec38384b7649b11a460ba74496752b5b6aa6df7f6a59596b7bdd214b"

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
