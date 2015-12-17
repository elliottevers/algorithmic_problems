def file_list(hash)
  files = []

  hash.each do |key, value|
    if value.is_a?(Hash)
      folder = key
      value = file_list(value)
      value.each { |file| files << "#{folder}/#{file}" }
    else
      files << key
    end
  end

  files
end
