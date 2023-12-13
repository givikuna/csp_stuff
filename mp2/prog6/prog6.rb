def delete(s, t)
	t.table[t.lookup(s)].delete_if { |x| x == s }
end
