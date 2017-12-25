require "spec_helper"
require "serverspec"

packages = %w[zsh bash]

packages.each do |p|
  describe package(p) do
    it { should be_installed }
  end
end
