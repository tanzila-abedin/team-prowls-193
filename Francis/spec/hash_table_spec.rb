require "base64"


encoded_data = "cmVxdWlyZSAnLi9jaGFsbGVuZ2UucmInCgpSU3BlYy5kZXNjcmliZSAnVW5p
dFRlc3RzJyBkbwoKICBpdCAnYXJyYXlfb2ZfZWxldmVuX3Bvc2l0aW9ucycg
ZG8KICAgICMgRmFpbHVyZSBtZXNzYWdlOiAKICAgICMgTWV0aG9kIGNhbGxl
ZDogaGFzaF90YWJsZShbMjM2NywgLTY1MzI1LCAxMzQsIC0xODUwMDcsIDMy
OTEsIDc4MzIsIC02NTMyNiwgNzg5LCA5ODAsIC0zMjg5LCAzXSkKICAgIGFy
ciA9IFsyMzY3LCAtNjUzMjUsIDEzNCwgLTE4NTAwNywgMzI5MSwgNzgzMiwg
LTY1MzI2LCA3ODksIDk4MCwgLTMyODksIDNdCiAgICBleHBlY3QoaGFzaF90
YWJsZShhcnIpKS50byBlcShbNzgzMiwgLTMyODksIDk4MCwgMjM2NywgMTM0
LCAzMjkxLCAzLCAtNjUzMjUsIC02NTMyNiwgNzg5LCAtMTg1MDA3XSkKICBl
bmQKICAKICBpdCAnYXJyYXlfb2ZfZmlmdGVlbl9wb3NpdGlvbnMnIGRvCiAg
ICAjIEZhaWx1cmUgbWVzc2FnZTogCiAgICAjIE1ldGhvZCBjYWxsZWQ6IGhh
c2hfdGFibGUoWzQzNzYsIC0zNDUsIC0zNDIsIDQzNzYsIC0zNDUsIDg0OTQ1
LCA0Mzc2LCAtMzQ3LCAtMjY1MDksIDQzNzYsIDg0OTQ1LCA4NDk0NCwgLTI2
NTA5LCA4OTYzNDEsIDQzNzZdKQogICAgYXJyID0gWzQzNzYsIC0zNDUsIC0z
NDIsIDQzNzYsIC0zNDUsIDg0OTQ1LCA0Mzc2LCAtMzQ3LCAtMjY1MDksIDQz
NzYsIDg0OTQ1LCA4NDk0NCwgLTI2NTA5LCA4OTYzNDEsIDQzNzZdCiAgICBl
eHBlY3QoaGFzaF90YWJsZShhcnIpKS50byBlcShbLTM0MiwgODQ5NDQsIDg0
OTQ1LCA4NDk0NSwgLTM0NSwgLTM0NSwgLTM0NywgODk2MzQxLCA0Mzc2LCA0
Mzc2LCA0Mzc2LCA0Mzc2LCA0Mzc2LCAtMjY1MDksIC0yNjUwOV0pCiAgZW5k
CiAgCiAgaXQgJ2FycmF5X29mX3R3ZW50eV9wb3NpdGlvbnMnIGRvCiAgICAj
IEZhaWx1cmUgbWVzc2FnZTogCiAgICAjIE1ldGhvZCBjYWxsZWQ6IGhhc2hf
dGFibGUoWzEwOTM1LCAxMjczMiwgLTMwNTgsIDE2NzMsIDE0OTcxLCA1NzAx
LCAxODM0MiwgNDU5MCwgLTEwMjQ4LCAtMTEyNDMsIC01ODQ4LCAxNDgzNiwg
NzY0OCwgLTM3NzIsIC04NzAwLCAxOTE2NSwgLTE2Mzk3LCAtMTMxOTIsIC0x
ODk0NiwgMTQyMDNdKQogICAgYXJyID0gWzEwOTM1LCAxMjczMiwgLTMwNTgs
IDE2NzMsIDE0OTcxLCA1NzAxLCAxODM0MiwgNDU5MCwgLTEwMjQ4LCAtMTEy
NDMsIC01ODQ4LCAxNDgzNiwgNzY0OCwgLTM3NzIsIC04NzAwLCAxOTE2NSwg
LTE2Mzk3LCAtMTMxOTIsIC0xODk0NiwgMTQyMDNdCiAgICBleHBlY3QoaGFz
aF90YWJsZShhcnIpKS50byBlcShbLTMwNTgsIDE0OTcxLCAxMDkzNSwgMTY3
MywgLTExMjQzLCAxNDIwMywgNTcwMSwgNDU5MCwgNzY0OCwgMTkxNjUsIC0x
MzE5MiwgLTE4OTQ2LCAxMjczMiwgMTgzNDIsIC0xMDI0OCwgLTU4NDgsIC0x
NjM5NywgMTQ4MzYsIC0zNzcyLCAtODcwMF0pCiAgZW5kCgplbmQK
"

data = Base64.decode64(encoded_data)

eval(data)
