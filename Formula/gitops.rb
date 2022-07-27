# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gitops < Formula
  desc "GitOps support for Kubernetes"
  homepage "https://docs.gitops.weave.works/docs/getting-started"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/weave-gitops/releases/download/v0.9.1/gitops-darwin-x86_64.tar.gz"
      sha256 "f310aad249b90f959951b2248c6366adc256bcc1e274b6a2c51c92a60ebe58e2"

      def install
        bin.install "gitops"
        # Install bash completion
        output = Utils.popen_read("#{bin}/gitops completion bash")
        (bash_completion/"gitops").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/gitops completion zsh")
        (zsh_completion/"_gitops").write output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/weaveworks/weave-gitops/releases/download/v0.9.1/gitops-darwin-arm64.tar.gz"
      sha256 "f42e81a6dd3e8861bbb8d36d54b89c5ecd91b9b98537a7d6e715bef3baebcb94"

      def install
        bin.install "gitops"
        # Install bash completion
        output = Utils.popen_read("#{bin}/gitops completion bash")
        (bash_completion/"gitops").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/gitops completion zsh")
        (zsh_completion/"_gitops").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/weave-gitops/releases/download/v0.9.1/gitops-linux-arm64.tar.gz"
      sha256 "00d08ecfc211613574e425e62aeb26579489e8f32e66315c37f191b365ad4364"

      def install
        bin.install "gitops"
        # Install bash completion
        output = Utils.popen_read("#{bin}/gitops completion bash")
        (bash_completion/"gitops").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/gitops completion zsh")
        (zsh_completion/"_gitops").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/weave-gitops/releases/download/v0.9.1/gitops-linux-x86_64.tar.gz"
      sha256 "083759063a082d2c7452d6490afeb359f422bf17612871b08b1d9ba063d71557"

      def install
        bin.install "gitops"
        # Install bash completion
        output = Utils.popen_read("#{bin}/gitops completion bash")
        (bash_completion/"gitops").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/gitops completion zsh")
        (zsh_completion/"_gitops").write output
      end
    end
  end
end
