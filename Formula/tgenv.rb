class Tgenv < Formula
  desc "Terragrunt version manager inspired by tfenv"
  homepage "https://github.com/faknorr/tgenv"
  url "https://github.com/sigsegv13/tgenv/archive/v0.0.8.tar.gz"
  sha256 "e987fa5adf0be150c6b28aa92d5b9edfc3c139fbe50dfeec5d1dbc1d066506d4"
  head "https://github.com/faknorr/tgenv.git"

  bottle :unneeded

  conflicts_with "terragrunt", :because => "tgenv symlinks terragrunt binaries"

  def install
    prefix.install ["bin", "libexec"]
  end

  test do
    system bin/"tgenv", "list-remote"
  end
end
