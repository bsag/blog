class PandocFilter < Nanoc3::Filter
  identifier :pandoc
  type :text
    def run(content, params={}) 
      require 'open3' 
      Open3.popen3('/Users/jackie/.cabal/bin/pandoc') do |stdin, stdout, stderr| 
        stdin.write(content) 
        stdin.close_write 
       return stdout.read 
      end 
    end
end
