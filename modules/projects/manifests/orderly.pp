class projects::orderly {

  boxen::project { 'orderly':
    ruby          => '1.9.3-p194',
    source        => 'medivo/orderly'
  }
}