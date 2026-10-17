<<<<<<< HEAD
@water-text: @water-amenity;
@glacier: #adbcec;
@glacier-line: #6cf;

=======
@water-text: #4d80b3;
@glacier: #ddecec;
@glacier-line: #9cf;
@water-tunnelfill-color: #f3f7f7;
>>>>>>> v6.1.0
@waterway-text-repeat-distance: 200;
@waterway-text-spacing: 500;
@fishpass-fill-color: #aaa;

@river-width-z8:          0.7;
@river-width-z9:          1.2;
@river-width-z10:         1.5;
@river-width-z11:         1.8;
@river-width-z12:         2.3;
@river-width-z13:         3;
@river-width-z14:         4.5;
@river-width-z15:         6;
@river-width-z16:         8;
@river-width-z17:         10;
@river-width-z18:         12;

@stream-width-z12:        0.8;
@stream-width-z13:        1.4;
@stream-width-z14:        2;
@stream-width-z15:        2.5;
@stream-width-z16:        3;
@stream-width-z17:        3.5;
@stream-width-z18:        4;

@ditchdrain-width-z17:    3;

@canal-scale-factor:      1.4;

// local
#water-areas::border {
  // this is a copy of #water-areas below, keep in sync
  [waterway = 'dock'],
  [landuse = 'basin']::landuse,
  [natural = 'water']::natural,
  [landuse = 'reservoir']::landuse,
  // local
  [landuse = 'salt_pond']::landuse,
  [waterway = 'riverbank']::waterway {
    [zoom >= 0][zoom < 1][way_pixels >= 4],
    [zoom >= 1][zoom < 2][way_pixels >= 16],
    [zoom >= 2][zoom < 8][way_pixels >= 32],
    [zoom >= 8] {
      line-width: 1.5;
      // no special color for salt_ponds
      line-color: @water-dark-low-zoom;
      [zoom >= 8] {
        line-color: @water-dark;
      }
      [int_intermittent = 'yes'] {
        line-dasharray: 4,4;
      }
    }
  }
}

// moved from water-areas so it stays below slope/hillshade
#glacier {
  [natural = 'glacier']::natural {
    [zoom >= 5] {
      polygon-fill: @glacier;
      [zoom >= 9] {
        polygon-opacity: 0.4;
        line-width: 0.5;
        line-color: @water-dark-low-zoom;
      }
      [zoom >= 11] {
        line-width: 0.75;
      }
      [zoom >= 12] {
        line-width: 1;
      }
      [zoom >= 13] {
        // line-dasharray: 4,2;
        line-width: 1.5;
      }
    }
  }
}

#water-areas {
  [waterway = 'dock'],
  [landuse = 'basin'],
  [natural = 'water'],
  [landuse = 'reservoir'],
  [waterway = 'riverbank'] {
    polygon-fill: @water-color;
    [int_intermittent = 'no'] {
      // local
      [int_salt = 'yes'] {
        polygon-fill: @water-salt;
      }
      [way_pixels >= 4] { polygon-gamma: 0.75; }
      // comment brought back from old commits
      // Turn down polygon-gamma even more for bigger areas
      // This completely eliminates white lines where large areas join
      [way_pixels >= 64] { polygon-gamma: 0.6; }
    }
    [int_intermittent = 'yes'] {
      // was patterns/intermittent_water.png
      polygon-pattern-file: url('symbols/local/water_intermittent_bg.png');
      // local
      [int_salt = 'yes'] {
        polygon-pattern-file: url('symbols/local/water_intermittent_salt_bg.png');
      }
      polygon-pattern-alignment: global;
      [way_pixels >= 4] { polygon-pattern-gamma: 0.75; }
      [way_pixels >= 64] { polygon-pattern-gamma: 0.6; }
    }
  }
}

// ZLs 0-7
#water-lines-very-low-zoom {
  [zoom >= 2][size >= 7.25],
  [zoom >= 3][size >= 7],
  [zoom >= 4][size >= 6.75],
  [zoom >= 5][size >= 6.3],
  [zoom >= 6][size >= 6] {
    line-color: @water-dark;
    // line-width: [size];
    line-width: 2;
    [zoom >= 6][size >= 6.75] {
      line-width: 3;
    }
  }
}

#water-lines-low-zoom {
  [zoom >= 8][zoom < 12] {
    [int_intermittent = 'yes'] {
      line-dasharray: 8,4;
      line-cap: butt;
      line-join: round;
    }
<<<<<<< HEAD
    // was @water-color;
    line-color: @water-dark;
    line-width: 0.7;
    [zoom >= 8] { line-width: 1; }
    [zoom >= 9] {
      line-width: 1.2;
      // line-color: @water-color;
    }
    [zoom >= 10] { line-width: 1.6; }
=======
    line-color: @water-color;
    line-width: @river-width-z8;
    [zoom >= 9] { line-width: @river-width-z9; }
    [zoom >= 10] { line-width: @river-width-z10; }
>>>>>>> v6.1.0
  }
}

// Ensure that the 4 attachments in the bridges layer are always correctly ordered
#bridges[feature = null]::halo { line: none; }
#bridges[feature = null]::casing { line: none; }
#bridges[feature = null]::bridges_and_tunnels_background { line: none; }
#bridges[feature = null]::fill { line: none; }

#water-lines::casing {
<<<<<<< HEAD
  [waterway = 'stream'],
  [waterway = 'ditch'],
  [waterway = 'drain'] {
    [int_tunnel = 'no'] {
      // I'm used to this from ZL 13
      [int_intermittent != 'yes'][zoom >= 13],
      [zoom >= 15] {
        line-width: 2.5;
        line-color: @water-dark;
        [waterway = 'stream'][zoom >= 15] {
          line-width: 3.5;
        }
        [int_intermittent = 'yes'] {
          line-dasharray: 4,3;
          line-cap: butt;
          line-join: round;
          line-clip: false;
        }
=======
  // white glow used when water stroke width is less than 3.5 px and only at "mid zoom" (13 - 17)

  [feature = 'waterway_canal'][int_bridge_tunnel = 'no'][zoom >= 13][zoom < 15] {
    line-color: white;
    line-join: round;
    line-cap: round;
    line-opacity: 0.85;
    line-width: (@stream-width-z13 * @canal-scale-factor) + 0.6;
    [zoom >= 14] { line-width: (@stream-width-z14 * @canal-scale-factor) + 0.6; }
    [int_intermittent = 'yes'] {
      line-dasharray: 4,3;
      line-cap: butt;
    }
  }

  [feature = 'waterway_ditch'],
  [feature = 'waterway_drain'],
  [feature = 'waterway_stream'] {
    [int_bridge_tunnel = 'no'][zoom >= 13][zoom < 18] {
      line-color: white;
      line-join: round;
      line-cap: round;
      line-opacity: 0.7;      
      [zoom >= 14] { line-opacity: 0.85; }
      [zoom >= 16] { line-opacity: 0.75; }
      [zoom >= 17] { line-opacity: 0.6; }
      line-width: @stream-width-z13 + 0.6;
      [zoom >= 14] { line-width: @stream-width-z14 + 0.6; }
      [feature = 'waterway_stream'] {
         [zoom >= 15] { line-width: @stream-width-z15 + 0.6; }
         [zoom >= 16] { line-width: @stream-width-z16 + 0.6; }
         [zoom >= 17] { line-width: @stream-width-z17 + 0.6; }
      }
      [feature != 'waterway_stream'][zoom >= 17] { line-width: @ditchdrain-width-z17 + 0.6; }

      [int_intermittent = 'yes'] {
        line-dasharray: 4,3;
        line-cap: butt;
>>>>>>> v6.1.0
      }
    }
  }

  // local
  [waterway = 'canal'][zoom >= 12],
  [waterway = 'river'][zoom >= 6] {
    line-color: @water-dark-low-zoom;
    line-width: 0.5;
    [waterway = 'river'][int_intermittent = 'yes'] {
      line-dasharray: 4,3;
      line-cap: butt;
      line-join: round;
      line-clip: false;
    }
    [waterway = 'canal'] {
      line-color: #181818;
    }
    [zoom >= 8] {
      line-color: @water-dark;
      line-width: 1;
    }
    [zoom >= 9] { line-width: 2.7; }
    [zoom >= 10] { line-width: 3.1; }
    [zoom >= 12] {
      line-width: 3.5;
      line-cap: round;
      line-join: round;
      [zoom >= 13] {
        line-width: 4.5;
      }
      [zoom >= 14] {
        line-width: 6.5;
      }
      [zoom >= 15] {
        line-width: 7.5;
      }
      [zoom >= 17] {
        line-width: 11.5;
      }
      [zoom >= 18] {
        line-width: 13.5;
      }
    }
  }
}

#bridges::casing[zoom >= 14] {
  [feature = 'waterway_river'] {
    line-color: black;
    line-join: round;
    line-width: @river-width-z14 + 1;
    [zoom >= 15] { line-width: @river-width-z15 + 1; }
    [zoom >= 16] { line-width: @river-width-z16 + 1; }
    [zoom >= 17] { line-width: @river-width-z17 + 1; }
    [zoom >= 18] { line-width: @river-width-z18 + 1; }
  }

  [feature = 'waterway_ditch'],
  [feature = 'waterway_drain'],
  [feature = 'waterway_fish_pass'][zoom >= 15],
  [feature = 'waterway_stream'] {
    line-color: black;
    line-join: round;
    line-width: @stream-width-z14 + 1;
    [feature = 'waterway_stream'] {
      [zoom >= 15] { line-width: @stream-width-z15 + 1; }
      [zoom >= 16] { line-width: @stream-width-z16 + 1; }
      [zoom >= 17] { line-width: @stream-width-z17 + 1; }
      [zoom >= 18] { line-width: @stream-width-z18 + 1; }
    }
    [feature != 'waterway_stream'][zoom >= 17] { line-width: @ditchdrain-width-z17 + 1; }
  }
  
  [feature = 'waterway_canal'] {
    line-color: black;
    line-join: round;
    line-width: (@stream-width-z14 * @canal-scale-factor) + 1;
    [zoom >= 15] { line-width: (@stream-width-z15 * @canal-scale-factor) + 1; }
    [zoom >= 16] { line-width: (@stream-width-z16 * @canal-scale-factor) + 1; }
    [zoom >= 17] { line-width: (@stream-width-z17 * @canal-scale-factor) + 1; }
    [zoom >= 18] { line-width: (@stream-width-z18 * @canal-scale-factor) + 1; }
  }
}

#water-lines::fill,
#bridges::fill {
  [feature = 'waterway_river'][zoom >= 12] {
    [int_bridge_tunnel = 'tunnel'] {
      // Background for dashed tunnel casings
      background/line-color: @water-tunnelfill-color;
      background/line-width: @river-width-z12;
      [zoom >= 13] { background/line-width: @river-width-z13; }
      [zoom >= 14] { background/line-width: @river-width-z14; }
      [zoom >= 15] { background/line-width: @river-width-z15; }
      [zoom >= 16] { background/line-width: @river-width-z16; }
      [zoom >= 17] { background/line-width: @river-width-z17; }
      [zoom >= 18] { background/line-width: @river-width-z18; }
      background/line-join: round;
    }
    [int_bridge_tunnel = 'bridge'][int_intermittent = 'yes'][zoom >= 14] {
      background/line-color: white;
      background/line-join: round;
      background/line-width: @river-width-z14;
      [zoom >= 15] { background/line-width: @river-width-z15; }
      [zoom >= 16] { background/line-width: @river-width-z16; }
      [zoom >= 17] { background/line-width: @river-width-z17; }
      [zoom >= 18] { background/line-width: @river-width-z18; }
    }

    water/line-color: @water-color;
    water/line-width: @river-width-z12;
    [zoom >= 13] { water/line-width: @river-width-z13; }
    [zoom >= 14] { water/line-width: @river-width-z14; }
    [zoom >= 15] { water/line-width: @river-width-z15; }
    [zoom >= 16] { water/line-width: @river-width-z16; }
    [zoom >= 17] { water/line-width: @river-width-z17; }
    [zoom >= 18] { water/line-width: @river-width-z18; }
    water/line-cap: round;
    water/line-join: round;

    [int_intermittent = 'yes'] {
      water/line-dasharray: 4,3;
      water/line-cap: butt;
    }

    [int_bridge_tunnel = 'tunnel'] {
      // This provides the blue dashed casing of waterway tunnels
      water/line-dasharray: 4,2;
      water/line-cap: butt;
      tunnelfill/line-color: @water-tunnelfill-color;
      tunnelfill/line-width: @river-width-z12 - 1.5;
      tunnelfill/line-join: round;
      [zoom >= 13] { tunnelfill/line-width: @river-width-z13 - 2; }
      [zoom >= 14] { tunnelfill/line-width: @river-width-z14 - 3; }
      [zoom >= 15] { tunnelfill/line-width: @river-width-z15 - 3; }
      [zoom >= 16] { tunnelfill/line-width: @river-width-z16 - 3; }
      [zoom >= 17] { tunnelfill/line-width: @river-width-z17 - 3; }
      [zoom >= 18] { tunnelfill/line-width: @river-width-z18 - 4; }
    }
  }

<<<<<<< HEAD
  [waterway = 'stream'],
  [waterway = 'ditch'],
  [waterway = 'drain'] {
    // I'm used to this from ZL 13
    [int_intermittent != 'yes'][zoom >= 13],
    [zoom >= 15] {
      // the additional line of land color is used to provide a background for dashed casings
      [int_tunnel = 'yes'] {
        background/line-width: 2;
        background/line-color: @land-color;
=======
  [feature = 'waterway_ditch'],
  [feature = 'waterway_drain'],
  [feature = 'waterway_fish_pass'][zoom >= 15],
  [feature = 'waterway_stream'] {
    [int_intermittent != 'yes'][zoom >= 12],
    [zoom >= 13] {
      [int_bridge_tunnel = 'tunnel'][zoom >= 14] {
        // Background for dashed tunnel casings
        // The line widths are adjusted later - this just "books in" the background layer
        background/line-color: @water-tunnelfill-color;
        background/line-join: round;
>>>>>>> v6.1.0
      }
      [int_bridge_tunnel = 'bridge'][int_intermittent = 'yes'][zoom >= 14] {
        background/line-color: white;
        background/line-join: round;
        background/line-width: @stream-width-z14;
        [feature = 'waterway_stream'] {
          [zoom >= 15] { background/line-width: @stream-width-z15; }
          [zoom >= 16] { background/line-width: @stream-width-z16; }
          [zoom >= 17] { background/line-width: @stream-width-z17; }
          [zoom >= 18] { background/line-width: @stream-width-z18; }
        }
        [feature != 'waterway_stream'][zoom >= 17] { background/line-width: @ditchdrain-width-z17; }
      }
      water/line-width: @stream-width-z12;
      [zoom >= 13] { water/line-width: @stream-width-z13; }
      [zoom >= 14] { water/line-width: @stream-width-z14; }
      [feature = 'waterway_stream'] {
        [zoom >= 15] { water/line-width: @stream-width-z15; }
        [zoom >= 16] { water/line-width: @stream-width-z16; }
        [zoom >= 17] { water/line-width: @stream-width-z17; }
        [zoom >= 18] { water/line-width: @stream-width-z18; }
      }
      [feature != 'waterway_stream'][zoom >= 17] { water/line-width: @ditchdrain-width-z17; }
      water/line-color: @water-color;
      water/line-cap: round;
      water/line-join: round;
 
      [feature != 'waterway_fish_pass'][int_intermittent = 'yes'] {
        water/line-dasharray: 4,3;
        water/line-cap: butt;
      }
      [feature = 'waterway_fish_pass'][int_bridge_tunnel != 'tunnel'][zoom >= 17] {
        steps/line-dasharray: 1.5,3;
        steps/line-color: @fishpass-fill-color; 
        steps/line-width: @ditchdrain-width-z17; 
        steps/line-join: round;
      }

      [int_bridge_tunnel = 'tunnel'][zoom >= 14] {
        water/line-dasharray: 4,2;
        water/line-cap: butt;
        background/line-width: @stream-width-z14 + 1;
        water/line-width: @stream-width-z14 + 1;
        tunnelfill/line-width: @stream-width-z14 - 0.5;
        tunnelfill/line-color: @water-tunnelfill-color;
        tunnelfill/line-join: round;
        [feature = 'waterway_stream'] {
          [zoom >= 15] { 
            background/line-width: @stream-width-z15 + 1.5;
            water/line-width: @stream-width-z15 + 1.5;
            tunnelfill/line-width: @stream-width-z15 - 1;
          }
          [zoom >= 16] { 
            background/line-width: @stream-width-z16 + 1;
            water/line-width: @stream-width-z16 + 1;
            tunnelfill/line-width: @stream-width-z16 - 1.5;
          }
          [zoom >= 17] { 
            background/line-width: @stream-width-z17 + 1;
            water/line-width: @stream-width-z17 + 1;
            tunnelfill/line-width: @stream-width-z17 - 1.5;
          }
          [zoom >= 18] { 
            background/line-width: @stream-width-z18 + 1;
            water/line-width: @stream-width-z18 + 1;
            tunnelfill/line-width: @stream-width-z18 - 1.5;
          }
        }
        [feature != 'waterway_stream'][zoom >= 17] {
          background/line-width: @ditchdrain-width-z17 + 1;
          water/line-width: @ditchdrain-width-z17 + 1;
          tunnelfill/line-width: @ditchdrain-width-z17 - 1.5;
        }
      }
    }
  }

  [feature = 'waterway_canal'][zoom >= 12] {
    [int_bridge_tunnel = 'tunnel'][zoom >= 13] {
      // Background for dashed tunnel casings
      // The line widths are adjusted later - this just "books in" the background layer
      background/line-color: @water-tunnelfill-color;
      background/line-join: round;
    }
    [int_bridge_tunnel = 'bridge'][int_intermittent = 'yes'][zoom >= 14] {
      background/line-color: white;
      background/line-join: round;
      background/line-width: @stream-width-z14 * @canal-scale-factor;
      [zoom >= 15] { background/line-width: @stream-width-z15 * @canal-scale-factor; }
      [zoom >= 16] { background/line-width: @stream-width-z16 * @canal-scale-factor; }
      [zoom >= 17] { background/line-width: @stream-width-z17 * @canal-scale-factor; }
      [zoom >= 18] { background/line-width: @stream-width-z18 * @canal-scale-factor; }
    }
    
    water/line-width: @stream-width-z12 * @canal-scale-factor;
    [zoom >= 13] { water/line-width: @stream-width-z13 * @canal-scale-factor; }
    [zoom >= 14] { water/line-width: @stream-width-z14 * @canal-scale-factor; }
    [zoom >= 15] { water/line-width: @stream-width-z15 * @canal-scale-factor; }
    [zoom >= 16] { water/line-width: @stream-width-z16 * @canal-scale-factor; }
    [zoom >= 17] { water/line-width: @stream-width-z17 * @canal-scale-factor; }
    [zoom >= 18] { water/line-width: @stream-width-z18 * @canal-scale-factor; }
    water/line-color: @water-color;
    water/line-join: round;
    water/line-cap: round;

    [int_intermittent = 'yes'] {
      water/line-dasharray: 4,3;
      water/line-cap: butt;
    }
    
    [int_bridge_tunnel = 'tunnel'][zoom >= 13] {
      water/line-dasharray: 4,2;
      water/line-cap: butt;
      background/line-width: (@stream-width-z13 * @canal-scale-factor) + 1;
      water/line-width: (@stream-width-z13 * @canal-scale-factor) + 1;
      tunnelfill/line-width: (@stream-width-z13 * @canal-scale-factor) - 1;
      tunnelfill/line-color: @water-tunnelfill-color;
      tunnelfill/line-join: round;
      [zoom >= 14] { 
        background/line-width: (@stream-width-z14 * @canal-scale-factor) + 1;
        water/line-width: (@stream-width-z14 * @canal-scale-factor) + 1;
        tunnelfill/line-width: (@stream-width-z14 * @canal-scale-factor) - 1.5;
      }
      [zoom >= 15] { 
        background/line-width: (@stream-width-z15 * @canal-scale-factor) + 1;
        water/line-width: (@stream-width-z15 * @canal-scale-factor) + 1;
        tunnelfill/line-width: (@stream-width-z15 * @canal-scale-factor) - 1.5;
      }
      [zoom >= 16] { 
        background/line-width: (@stream-width-z16 * @canal-scale-factor) + 1;
        water/line-width: (@stream-width-z16 * @canal-scale-factor) + 1;
        tunnelfill/line-width: (@stream-width-z16 * @canal-scale-factor) - 1.5;
      }
      [zoom >= 17] { 
        background/line-width: (@stream-width-z17 * @canal-scale-factor) + 1;
        water/line-width: (@stream-width-z17 * @canal-scale-factor) + 1;
        tunnelfill/line-width: (@stream-width-z17 * @canal-scale-factor) - 1.5;
      }
      [zoom >= 18] { 
        background/line-width: (@stream-width-z18 * @canal-scale-factor) + 1;
        water/line-width: (@stream-width-z18 * @canal-scale-factor) + 1;
        tunnelfill/line-width: (@stream-width-z18 * @canal-scale-factor) - 1.5;
      }
    }
  }
}

#water-lines-text {
  [lock = 'yes'][zoom >= 17] {
      text-name: "[lock_name]";
      text-face-name: @standard-font;
      text-placement: line;
      text-fill: @water-text;
      text-spacing: @waterway-text-spacing;
      text-size: 10;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
  }

  [lock != 'yes'][int_tunnel != 'yes'] {
    [waterway = 'river'][zoom >= 13] {
      text-name: "[name]";
      text-size: 13;
      text-face-name: @oblique-fonts;
      text-fill: @water-text;
      text-halo-radius: @standard-halo-radius;
<<<<<<< HEAD
      text-halo-fill: @water-color;
      text-spacing: 400;
=======
      text-halo-fill: @standard-halo-fill;
      text-spacing: @waterway-text-spacing;
>>>>>>> v6.1.0
      text-placement: line;
      text-repeat-distance: @waterway-text-repeat-distance;
      [zoom >= 14] { text-size: 12; }
    }

    [waterway = 'canal'][zoom >= 13] {
      text-name: "[name]";
      text-size: 10;
      text-face-name: @standard-font;
      text-fill: @water-text;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @water-color;
      text-placement: line;
      text-repeat-distance: @waterway-text-repeat-distance;
      text-spacing: @waterway-text-spacing;
      [zoom >= 14] { text-size: 12; }
    }

    [waterway = 'drain'][zoom >= 15],
    [waterway = 'ditch'][zoom >= 15],
    [waterway = 'stream'][zoom >= 15] {
      text-name: "[name]";
      text-size: 10;
      text-face-name: @standard-font;
      [waterway = 'stream'] { text-face-name: @oblique-fonts; }
      text-fill: @water-text;
      text-halo-radius: @standard-halo-radius;
<<<<<<< HEAD
      text-halo-fill: @water-color;
      text-spacing: 600;
=======
      text-halo-fill: @standard-halo-fill;
      text-spacing: @waterway-text-spacing;
>>>>>>> v6.1.0
      text-placement: line;
      text-vertical-alignment: middle;
      text-dy: 8;
      text-repeat-distance: @waterway-text-repeat-distance;
    }

<<<<<<< HEAD
    [waterway = 'drain'],
    [waterway = 'ditch'] {
      [zoom >= 15] {
        text-name: "[name]";
        text-size: 10;
        text-face-name: @oblique-fonts;
        text-fill: @water-text;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @water-color;
        text-spacing: 600;
        text-placement: line;
        text-vertical-alignment: middle;
        text-dy: 8;
        text-repeat-distance: @waterway-text-repeat-distance;
      }
    }
=======
>>>>>>> v6.1.0
  }
  [natural = 'bay'][zoom >= 14],
  [natural = 'strait'][zoom >= 14] {
    text-name: "[name]";
    text-size: 10;
    text-face-name: @oblique-fonts;
    text-fill: @water-text;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @water-color;
    text-max-char-angle-delta: 15;
    text-spacing: 400;
    text-placement: line;
    [zoom >= 15] {
      text-size: 12;
    }
  }
}

#text-poly-low-zoom[zoom < 10],
#text-point[zoom >= 10] {
  // local
  [feature = 'place_ocean'],
  [feature = 'place_sea'] {
    #text-point[zoom >= 5] {
      text-name: "[name]";
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-fill: @water-text;
      text-size: 13;
      text-face-name: @oblique-fonts;
    }
  }

  // this is for areas, points are in amenity-points
  [feature = 'natural_water'],
  [feature = 'landuse_reservoir'],
  [feature = 'landuse_basin'],
  [feature = 'waterway_dock'] {
    [zoom >= 5][way_pixels > 3000][way_pixels <= 768000],
    [zoom >= 17][way_pixels <= 768000] {
      text-name: "[name]";
      text-size: 13;
      text-wrap-width: 25; // 2.5 em
      text-line-spacing: -1.5; // -0.15 em
      [way_pixels > 12000][feature != 'natural_strait'][feature != 'natural_bay'],
      [zoom >= 15][feature = 'natural_strait'],
      [zoom >= 15][feature = 'natural_bay'] {
        // was 12
        text-size: 15;
        text-wrap-width: 37; // 3.1 em
        text-line-spacing: -1.6; // -0.13 em
      }
      [way_pixels > 48000][feature != 'natural_strait'][feature != 'natural_bay'] {
        // was 15
        text-size: 17;
        text-wrap-width: 59; // 3.9 em
        text-line-spacing: -1.5; // -0.10 em
      }
      [way_pixels > 192000][feature != 'natural_strait'][feature != 'natural_bay'] {
        text-size: 19;
        text-wrap-width: 95; // 5.0 em
        text-line-spacing: -0.95; // -0.05 em
      }
      text-fill: @water-text;
      text-face-name: @oblique-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @water-color;
      [int_salt = 'yes'] { text-halo-fill: @water-salt; }
      text-placement: interior;
    }
  }
}

#text-point[zoom >= 14] {
  [feature = 'natural_bay'],
  [feature = 'natural_strait'] {
    text-name: "[name]";
    text-size: 10;
    text-wrap-width: 25; // 2.5 em
    text-line-spacing: -1.5; // -0.15 em
    text-fill: @water-text;
    text-face-name: @oblique-fonts;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
    [zoom >= 15] {
      text-size: 12;
      text-wrap-width: 37; // 3.1 em
      text-line-spacing: -1.6; // -0.13 em
    }
  }
}
