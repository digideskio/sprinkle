package :git_dependencies do
  description 'Git Build Dependencies'
  
  apt 'git', :dependencies_only => true
end

package :git, :provides => :scm do
  description 'Git Distributed Version Control'
  version '1.6.3.3'
  requires :git_dependencies
  
  source "http://kernel.org/pub/software/scm/git/git-#{version}.tar.gz"
end