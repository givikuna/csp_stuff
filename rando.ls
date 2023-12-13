require!{
    'prelude-ls':{find,find-index}
    'lsse':{inc,say,len,dec,expt}
}

chars = (.split '')

ord = -->
    i = 0
    a = <[a b c d e f g h i j k l m n o p q r s t u v w x y z]>
    while i < len a
        if a[i] is it then return i
        i++
    return -1
h0 = --> ord it[0]
h1 = --> (+ ord it[1]) (* 26) ord it[0]
r26 = -->
    i = dec len it
    j = 0
    sum = 0
    while (<=) 0 i
        sum += ord(it[j]) * (^) 26 i
        i--
        j++
    sum
hr = (s, n) --> r26(s) % n

for c in chars \qwerty then say ord c
