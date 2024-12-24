WITH decode_letters AS(
  SELECt chr(VALUE) as letter
  From letters_a
  WHERE chr(value) SIMILAR TO '[a-zA-Z,.!?: ]'
  UNION ALL SELECT chr (Value) as letter
  From letters_b
  WHERE chr(value) SIMILAR TO '[a-zA-Z,.!?: ]')
SELECT  string_agg(letter, '') FROM decode_letters
