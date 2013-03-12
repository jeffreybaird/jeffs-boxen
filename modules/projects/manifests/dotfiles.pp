$home = "/Users/${::boxen_user}"
$dotfiles_dir = "${boxen::config::srcdir}/dotfiles"

repository { $dotfiles_dir:
  source => "${::github_user}/dotfiles"
}

exec { "install dotfiles":
  cwd      => $dotfiles_dir,
  command  => "./install.sh",
  provider => shell,
  creates  => "${home}/.zshrc",
  require  => Repository[$dotfiles_dir]
}