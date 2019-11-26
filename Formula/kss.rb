# coding: utf-8
class Kss < Formula
  desc "Kubernetes pod status on steroid 💉"
  homepage "https://github.com/chmouel/kss"
  version "0.0.1"

  url "https://github.com/chmouel/kss/tarball/#{version}"
  sha256 "49a96d64439f52b9d163bee07dc4449f45cf6b8a73dce1cc8a56d077a2cbd984"

  def install
    bin.install "kss" => "kss"
    bin.install_symlink "kss" => "kubectl-kss"
    zsh_completion.install "_kss"
    prefix.install_metafiles
  end

end
