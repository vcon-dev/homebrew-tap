class Conserver < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to manage vcon-server Docker containers"
  homepage "https://github.com/vcon-dev/vcon-server-cli"
  url "https://files.pythonhosted.org/packages/source/c/conserver-cli/conserver_cli-0.1.0.tar.gz"
  sha256 "PLACEHOLDER_SHA256"
  license "MIT"

  depends_on "python@3.12"

  # Dependencies will be added after first PyPI release
  # Use: pip download conserver-cli && homebrew-pypi-poet conserver-cli

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/conserver", "--version"
  end
end
