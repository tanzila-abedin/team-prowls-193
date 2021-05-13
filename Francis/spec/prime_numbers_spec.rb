require "base64"


encoded_data = "cmVxdWlyZSAnLi9jaGFsbGVuZ2UucmInCgpSU3BlYy5kZXNjcmliZSAnVW5p
dFRlc3RzJyBkbwoKICBpdCAnYXJyYXlfb2ZfZWxldmVuX3Bvc2l0aW9ucycg
ZG8KICAgICMgRmFpbHVyZSBtZXNzYWdlOiAKICAgICMgTWV0aG9kIGNhbGxl
ZDogbnVtYmVyX29mX3ByaW1lcyhbNTUsIDExLCAzMywgMjUsIDE1LCA2Niwg
MzUsIDQ0LCAxNiwgOSwgMjJdKQogICAgYXJyID0gWzU1LCAxMSwgMzMsIDI1
LCAxNSwgNjYsIDM1LCA0NCwgMTYsIDksIDIyXQogICAgZXhwZWN0KG51bWJl
cl9vZl9wcmltZXMoYXJyKSkudG8gZXEoMSkKICBlbmQKICAKICBpdCAnYXJy
YXlfb2ZfdGhpcnR5X3Bvc2l0aW9ucycgZG8KICAgICMgRmFpbHVyZSBtZXNz
YWdlOiAKICAgICMgTWV0aG9kIGNhbGxlZDogbnVtYmVyX29mX3ByaW1lcyhb
ODAzNSwgNjc1OSwgNjExMywgODcyMSwgNTU5NSwgNTk4NSwgNDY0MywgODQ5
LCA2MjksIDg5MzMsIDM2NTksIDYwODYsIDQzMzcsIDQ1ODksIDkxMTksIDgw
NDksIDkzMzcsIDM0MDcsIDI4LCA2NzcxLCAxMDY5LCAzNTAwLCA4NTQ5LCA5
MjUxLCAyMTMxLCA1NDI1LCAyNDcxLCAxMSwgODE3MywgNTI3N10pCiAgICBh
cnIgPSBbODAzNSwgNjc1OSwgNjExMywgODcyMSwgNTU5NSwgNTk4NSwgNDY0
MywgODQ5LCA2MjksIDg5MzMsIDM2NTksIDYwODYsIDQzMzcsIDQ1ODksIDkx
MTksIDgwNDksIDkzMzcsIDM0MDcsIDI4LCA2NzcxLCAxMDY5LCAzNTAwLCA4
NTQ5LCA5MjUxLCAyMTMxLCA1NDI1LCAyNDcxLCAxMSwgODE3MywgNTI3N10K
ICAgIGV4cGVjdChudW1iZXJfb2ZfcHJpbWVzKGFycikpLnRvIGVxKDEwKQog
IGVuZAogIAogIGl0ICdhcnJheV9vZl9mb3J0eV9wb3NpdGlvbnMnIGRvCiAg
ICAjIEZhaWx1cmUgbWVzc2FnZTogCiAgICAjIE1ldGhvZCBjYWxsZWQ6IG51
bWJlcl9vZl9wcmltZXMoWzYzNTgsIDg2MjMsIDIzNDUsIDEzODUsIDYwMzcs
IDkxNjEsIDc5NiwgODEyNSwgODgyOSwgOTc0NywgMjgzNCwgMzU3OSwgMTA0
MywgMTg4MCwgMzUwOCwgOTgyMiwgODczOSwgMjM3MiwgNzcyMywgNTA0OSwg
MjY2MSwgNTk4MiwgOTY5MiwgOTQyNywgNTYyLCA2NjE3LCAzNzU2LCAzOTYs
IDcwMDksIDM5MDcsIDY5MjAsIDM3NjYsIDYxMzksIDYzMTAsIDcwMTEsIDY1
MCwgNDc1OCwgNTE1MywgNjIwMCwgMzE0Nl0pCiAgICBhcnIgPSBbNjM1OCwg
ODYyMywgMjM0NSwgMTM4NSwgNjAzNywgOTE2MSwgNzk2LCA4MTI1LCA4ODI5
LCA5NzQ3LCAyODM0LCAzNTc5LCAxMDQzLCAxODgwLCAzNTA4LCA5ODIyLCA4
NzM5LCAyMzcyLCA3NzIzLCA1MDQ5LCAyNjYxLCA1OTgyLCA5NjkyLCA5NDI3
LCA1NjIsIDY2MTcsIDM3NTYsIDM5NiwgNzAwOSwgMzkwNywgNjkyMCwgMzc2
NiwgNjEzOSwgNjMxMCwgNzAxMSwgNjUwLCA0NzU4LCA1MTUzLCA2MjAwLCAz
MTQ2XQogICAgZXhwZWN0KG51bWJlcl9vZl9wcmltZXMoYXJyKSkudG8gZXEo
NikKICBlbmQKICAKICBpdCAnYXJyYXlfb2Zfc2V2ZW50ZWVuX3Bvc2l0aW9u
cycgZG8KICAgICMgRmFpbHVyZSBtZXNzYWdlOiAKICAgICMgTWV0aG9kIGNh
bGxlZDogbnVtYmVyX29mX3ByaW1lcyhbMTgxNywgMjIzMSwgMjE3LCAzNzEs
IDE1NSwgOTQzLCAxMjE5LCA1NTMsIDY3OSwgMTA1NywgNDg1LCAyNTMsIDI4
NywgMjk5LCA0MzcsIDcxMywgMzQ3M10pCiAgICBhcnIgPSBbMTgxNywgMjIz
MSwgMjE3LCAzNzEsIDE1NSwgOTQzLCAxMjE5LCA1NTMsIDY3OSwgMTA1Nywg
NDg1LCAyNTMsIDI4NywgMjk5LCA0MzcsIDcxMywgMzQ3M10KICAgIGV4cGVj
dChudW1iZXJfb2ZfcHJpbWVzKGFycikpLnRvIGVxKDApCiAgZW5kCiAgCiAg
aXQgJ2FycmF5X29mX3R3ZW50eV9wb3NpdGlvbnMnIGRvCiAgICAjIEZhaWx1
cmUgbWVzc2FnZTogCiAgICAjIE1ldGhvZCBjYWxsZWQ6IG51bWJlcl9vZl9w
cmltZXMoWzE4MTcsIDQxLCAyMjMxLCAyMTcsIDM2MzEsIDM3MSwgMTU1LCA5
NDMsIDEyMTksIDU1MywgODgwMywgNjc5LCAxMDU3LCA0ODUsIDI1MywgMjg3
LCAyOTksIDQzNywgNzEzLCAzNDczXSkKICAgIGFyciA9IFsxODE3LCA0MSwg
MjIzMSwgMjE3LCAzNjMxLCAzNzEsIDE1NSwgOTQzLCAxMjE5LCA1NTMsIDg4
MDMsIDY3OSwgMTA1NywgNDg1LCAyNTMsIDI4NywgMjk5LCA0MzcsIDcxMywg
MzQ3M10KICAgIGV4cGVjdChudW1iZXJfb2ZfcHJpbWVzKGFycikpLnRvIGVx
KDMpCiAgZW5kCgplbmQK
"

data = Base64.decode64(encoded_data)

eval(data)
