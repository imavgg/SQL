SELECT LENGTH("HELLO"), 
LENGTH("哈囉"),  -- BYTES
LENGTH(null), 
LENGTH("123"), 

CHAR_LENGTH("HELLO"),
CHAR_LENGTH("哈囉"),

-- check if "he" is inside the "hello"".
LOCATE("3", "3215324"), 
LOCATE ("HE", "HELLO"), 
LOCATE("HLE","HELLO"),
REPLACE("HELLO","HE","MI"); 