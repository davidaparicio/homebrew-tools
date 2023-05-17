# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cuc < Formula
  desc ""
  homepage "https://github.com/davidaparicio/homebrew-tools"
  version "0.0.2"
  depends_on :linux

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/davidaparicio/cuc/releases/download/v0.0.2/cuc_Linux_x86_64.tar.gz"
      sha256 "f2747e6619a215a3a744322d410a55dfaa9a631d5646f0f77d298912b6e0c200"

      def install
        bin.install "cuc"
      end
    end
  end
end
