class projects::allocator {

  boxen::project { 'allocator':
    ruby          => '1.9.3-p194',
    source        => 'medivo/allocator'
  }
}