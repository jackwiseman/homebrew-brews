cask "font-monaco-patched" do
  version :latest
  sha256 :no_check

  url "https://github.com/Karmenzind/monaco-nerd-fonts/raw/afb41000f577b328081f93896fc7c0abd2857f14/fonts/Monaco%20Nerd%20Font%20Complete.ttf"
  name "font-monaco-patched"
  desc "Patched monaco nerd font"
  homepage "https://github.com/Karmenzind/monaco-nerd-fonts"

  font "Monaco Nerd Font Complete.ttf"
end
