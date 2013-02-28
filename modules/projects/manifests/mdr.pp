class projects::mdr {


  boxen::project { 'mdr':
    mysql         => true,
    nginx         => true,
    redis         => true,
    ruby          => '1.9.3-p194',
    source        => 'medivo/mdr_ar'
  }
}