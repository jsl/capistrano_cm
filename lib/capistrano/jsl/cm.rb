unless Capistrano::Configuration.respond_to?(:instance)
  abort "capistrano/jsl/configuration_management requires Capistrano 2"
end

require 'digest/md5'

Capistrano::Configuration.instance.load do
  
  # Returns Boolean indicating the result of +filetest+ on +full_path+ on the server, evaluated by shell on 
  # the server (usually bash or something roughly compatible).
  def remote_filetest_passes?(filetest, full_path)
    'true' ==  capture("if [ #{filetest} #{full_path} ]; then echo 'true'; fi").strip    
  end
  
  # Checks if a symlink exists on the remote machine.
  def symlink_exists?(full_path)
    remote_filetest_passes?('-L', full_path)
  end
  
  # Returns Boolean value indicating whether file exists on server
  def remote_file_exists?(full_path)
    remote_filetest_passes?('-e', full_path)
  end

  # Returns Boolean value indicating whether the file at +full_path+ matches +content+.  Checks if file
  # is equivalent to content by checking whether or not the MD5 of the remote content is the same as the
  # MD5 of the String in +content+.
  def remote_file_content_same_as?(full_path, content)
    Digest::MD5.hexdigest(content) == capture("md5sum #{full_path} | awk '{ print $1 }'").strip
  end

  # Returns Boolean indicating whether the remote file is present and has the same contents as
  # the String in +content+.
  def remote_file_differs?(full_path, content)
    !remote_file_exists?(full_path) || remote_file_exists?(full_path) && !remote_file_content_same_as?(full_path, content)
  end
    
end

