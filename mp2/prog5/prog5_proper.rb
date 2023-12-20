arr = ["apple", "bark", "cat", "dog", "enterovirus", "fish", "gallbladder", "hello", "indigo", "jello", "kitten", "llama", "midnight", "neurosurgeon", "octopus", "pet", "quarry", "receive", "sandbox", "tower", "umbrella", "vernacular", "witch", "xenophobia", "yellow", "zebra"]

h = Hash.new

arr.each do |x|
  n = x.length
  if h.has_key?(n)
    s = h[n] + ", " + x
    h[n] = s
  else
    h.store(n, x)
  end
end

h = h.sort_by { |key, val| key }

p h
