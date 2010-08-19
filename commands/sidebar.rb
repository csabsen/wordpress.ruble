require 'ruble'

command 'Sidebar' do |cmd|
  cmd.scope = 'text.html'
  cmd.trigger = 'text.html'
  cmd.output = :insert_as_snippet
  cmd.input = :none
  cmd.invoke =<<-EOF
#!/usr/bin/env ruby
scope = ENV['TM_SCOPE']
if scope.include? 'source.php' 
  print 'get_sidebar(); '
else
  print '<?php get_sidebar(); ?> '
end
EOF
end