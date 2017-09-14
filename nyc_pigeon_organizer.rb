def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |category, hash|
    hash.each do |key, array|
      array.each do |name|
          pigeons[name] = {} unless pigeons[name]
          pigeons[name][category] = [] unless pigeons[name][category]
          pigeons[name][category].push(key.to_s)
        end
      end
    end
  pigeons
end