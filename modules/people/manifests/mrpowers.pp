class people::MrPowers {
  include sublime_text_2
  include caffeine
  include skype
  include chrome
  include alfred
  include colloquy
  include dropbox

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  repository { $dotfiles:
    source  => 'MrPowers/dotfiles',
    require => File[$my]
  }
}