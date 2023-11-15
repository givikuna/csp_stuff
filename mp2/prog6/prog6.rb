def remove_element(t, el)
    t2 = HashTable.new(t.length - 1)
    keys = HashTable.keys t
    keys.each { |key| t2.insert key if key != el}
    t = t2
    return t2
end

a = TestArray.new 25, :words
t = HashTable.new 25

a.each { |s| t.insert s }
