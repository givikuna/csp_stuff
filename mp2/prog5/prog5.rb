a = ["apple", "bark", "cat", "dog", "enterovirus", "fish", "gallbladder", "hello", "indigo", "jello", "kitten", "llama", "midnight", "neurosurgeon", "octopus", "pet", "quarry", "receive", "sandbox", "tower", "umbrella", "vernacular", "witch", "xenophobia", "yellow", "zebra"]

h = Hash.new

a.each do |el|
  if h.has_key? el.length
    h[el.length] += ", #{el}"
  else
    h.store el.length, el
  end
end

h = h.sort_by { |key, _val| key }

p h
