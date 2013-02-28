class projects::all {
  include_all_projects()
}


class projects::monitor {

  include phantomjs

  boxen::project { 'monitor':
    mysql         => true,
    nginx         => true,
    redis         => true,
    ruby          => '1.9.3-p194',
    source        => 'medivo/monitor'
  }
}