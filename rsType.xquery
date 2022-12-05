declare default element namespace "http://www.tei-c.org/ns/1.0";
let $collection := collection('tei-collection')
let $rs := $collection//rs
let $rsTypes := ($rs/@theme | $rs/@type) ! normalize-space() => distinct-values() => sort()
(: return ("# rs/@type Values Sorted"|| "&#10;&#10;" || string-join($rsTypes, "&#10;")) :)

let $rsSubtypes := $rs/@subtype 
let $rsSubTypeNoType := $rs[@subtype][not(@type)]
for $i in $rsTypes  
let $subtype := $rs[@type ! normalize-space() = $i]/@subtype ! normalize-space() 
let $concat := ("type:" || "&#x9;" || $i || "&#x9;" || "subtype:" || "&#x9;" || $subtype || "&#10;")
return $concat
