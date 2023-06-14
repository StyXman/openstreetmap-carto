#! /usr/bin/env python3

import yaml

string_data = '''
widths: # track, footway, path
  z13: [    1.0,     0.7,  0.5 ]
  z14: [    1.5,     1.0,  0.7 ]
  z15: [    2.0,     1.5,  1.0 ]
  z16: [    2.5,     2.0,  1.5 ]
  # z17: [  ]
  z18: [    3.0,     2.5,  1.5 ]
  z19: [    3.5,     3.0,  2.0 ]

# TODO: dash arrays for surface null, paved, unpaved
'''

data = yaml.safe_load(string_data)

for zoom, widths in data['widths'].items():
    (track, footway, path) = widths
    for way_type in 'track', 'footway', 'path':
        print(f"""@{way_type}-width-{zoom}:{locals()[way_type]:10.1f};""")

    print()
