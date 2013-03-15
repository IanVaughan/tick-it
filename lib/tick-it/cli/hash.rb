# move into lib/ext
class Hash

  def from_string string
    file_data = {}
    string.each_line  do |line|
      line_data = line.split('=>')
      file_data[line_data[0]] = line_data[1]
    end
  end
end
