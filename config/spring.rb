%w(
  .ruby-version
  .rbenv-vars
  tmp/restart.txt
  tmp/caching-dev.txt
  app/lib/**
).each { |path| Spring.watch(path) }
