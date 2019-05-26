@water-text: @water-dark;
@glacier: #adbcec;
@glacier-line: #6cf;

@waterway-text-repeat-distance: 200;

// local
#water-areas::border {
  [natural = 'lake'][way_pixels >= 4],
  [natural = 'water'][way_pixels >= 4],
  [landuse = 'reservoir'][way_pixels >= 4],
  [waterway = 'riverbank'][way_pixels >= 4],
  [landuse = 'water'][way_pixels >= 4],
  [landuse = 'basin'][way_pixels >= 4] {
    [zoom >= 8] {
      line-width: 1.5;
      line-color: @water-dark;
    }
  }

  [waterway = 'riverbank'][way_pixels >= 64] {
    [zoom >= 9] {
      line-width: 1.5;
      line-color: @water-dark;
    }
  }
}

// renamed water-areas to glacier
#glacier {
  [natural = 'glacier']::natural {
    [zoom >= 5] {
      line-width: 1.0;
      line-color: @glacier-line;
      polygon-fill: @glacier;
      [zoom >= 8] {
        line-width: 1;
      }
      [zoom >= 10] {
        line-dasharray: 4,2;
        line-width: 1.5;
      }
    }
  }
}

#water-areas {
  [waterway = 'dock'] {
    [zoom >= 9]::waterway {
      polygon-fill: @water-color;
      [way_pixels >= 4] {
        polygon-gamma: 0.75;
      }
      [way_pixels >= 64] {
        polygon-gamma: 0.6;
      }
    }
  }

  [landuse = 'basin']::landuse {
    [zoom >= 7][way_pixels >= 32],
    [zoom >= 8] {
      [int_intermittent = 'no'] {
        polygon-fill: @water-color;
        [way_pixels >= 4] {
          polygon-gamma: 0.75;
        }
        [way_pixels >= 64] {
          polygon-gamma: 0.6;
        }
      }
      [int_intermittent = 'yes'] {
        polygon-pattern-file: url('symbols/intermittent_water.png');
        [way_pixels >= 4] {
          polygon-pattern-gamma: 0.75;
        }
        [way_pixels >= 64] {
          polygon-pattern-gamma: 0.6;
        }
      }
    }
  }

  [natural = 'water']::natural,
  [landuse = 'reservoir']::landuse,
  [waterway = 'riverbank']::waterway {
    [zoom >= 0][zoom < 1][way_pixels >= 4],
    [zoom >= 1][zoom < 2][way_pixels >= 16],
    [zoom >= 2][zoom < 8][way_pixels >= 32],
    [zoom >= 8] {
      [int_intermittent = 'no'] {
        polygon-fill: @water-color;
        [way_pixels >= 4] {
          polygon-gamma: 0.75;
        }
        [way_pixels >= 64] {
          polygon-gamma: 0.6;
        }
      }
      [int_intermittent = 'yes'] {
        polygon-pattern-file: url('symbols/intermittent_water.png');
        [way_pixels >= 4] {
          polygon-pattern-gamma: 0.75;
        }
        [way_pixels >= 64] {
          polygon-pattern-gamma: 0.6;
        }
      }
    }
  }
}

/*
 * Water areas, of all types. Because they are rendered all the same,
 * attachments can be used to reduce combinational rules
 */

.ocean::border {
  line-width: 1.5;
  line-color: @water-dark;
}

#water-areas[waterway = 'dock'][zoom >= 9]::waterway,
#water-areas[waterway = 'canal'][zoom >= 9]::waterway,
#water-areas[landuse = 'basin'][zoom >= 7]::landuse,
#water-areas[natural = 'water'][zoom >= 6]::natural,
#water-areas[landuse = 'reservoir'][zoom >= 6]::landuse,
#water-areas[waterway = 'riverbank'][zoom >= 6]::waterway,
.ocean {
  polygon-fill: @water-color;

  // Only the SQL layers have way_pixels
  #water-areas[way_pixels >= 4] {
    polygon-gamma: 0.75;
  }
  #water-areas[way_pixels >= 64] {
    polygon-gamma: 0.6;
  }
}

#water-lines-casing {
  [waterway = 'stream'],
  [waterway = 'ditch'],
  [waterway = 'drain'] {
    [int_tunnel = 'no'] {
      [int_intermittent != 'yes'][zoom >= 14],
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
      }
    }
  }

  // local
  [waterway = 'canal'][zoom >= 12],
  [waterway = 'river'][zoom >= 6] {
    line-color: @water-dark;
    line-width: 0.5;
    [waterway = 'canal'] {
      line-color: #181818;
    }
    [zoom >= 8] { line-width: 1; }
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

#water-lines-low-zoom {
  [waterway = 'river'][zoom >= 8][zoom < 12] {
    [int_intermittent = 'yes'] {
      line-dasharray: 8,4;
      line-cap: butt;
      line-join: round;
      line-clip: false;
    }
    line-color: @water-dark;
    line-width: 0.7;
    [zoom >= 8] { line-width: 1; }
    [zoom >= 9] {
      line-width: 1.2;
      line-color: @water-color;
    }
    [zoom >= 10] { line-width: 1.6; }
  }
}

.water-lines {
  [waterway = 'canal'][zoom >= 12],
  [waterway = 'river'][zoom >= 12],
  [waterway = 'wadi'][zoom >= 13] {
    // the additional line of land color is used to provide a background for dashed casings
    [int_tunnel = 'yes'] {
      background/line-color: @land-color;
      background/line-width: 2;
      background/line-cap: round;
      background/line-join: round;
    }

    [bridge = 'yes'] {
      [zoom >= 14] {
        bridgecasing/line-color: black;
        bridgecasing/line-join: round;
        bridgecasing/line-width: 6;
        [zoom >= 15] { bridgecasing/line-width: 7; }
        [zoom >= 17] { bridgecasing/line-width: 11; }
        [zoom >= 18] { bridgecasing/line-width: 13; }
      }
    }

    water/line-color: @water-color;
    water/line-width: 2;
    water/line-cap: round;
    water/line-join: round;

    [int_intermittent = 'yes'],
    [waterway = 'wadi'] {
      [bridge = 'yes'][zoom >= 14] {
        bridgefill/line-color: white;
        bridgefill/line-join: round;
        bridgefill/line-width: 4;
        [zoom >= 15] { bridgefill/line-width: 5; }
        [zoom >= 17] { bridgefill/line-width: 9; }
        [zoom >= 18] { bridgefill/line-width: 11; }
      }
      water/line-dasharray: 4,3;
      water/line-cap: butt;
      water/line-join: round;
      water/line-clip: false;
    }

    [zoom >= 13] { water/line-width: 3; }
    [zoom >= 14] { water/line-width: 5; }
    [zoom >= 15] { water/line-width: 6; }
    [zoom >= 17] { water/line-width: 10; }
    [zoom >= 18] { water/line-width: 12; }

    [int_tunnel = 'yes'] {
      [zoom >= 13] { background/line-width: 3; }
      [zoom >= 14] { background/line-width: 5; }
      [zoom >= 15] { background/line-width: 6; }
      [zoom >= 17] { background/line-width: 10; }
      [zoom >= 18] { background/line-width: 12; }

      water/line-dasharray: 4,2;
      background/line-cap: butt;
      background/line-join: miter;
      water/line-cap: butt;
      water/line-join: miter;
      tunnelfill/line-color: #f3f7f7;
      tunnelfill/line-width: 1;
      [zoom >= 14] { tunnelfill/line-width: 2; }
      [zoom >= 15] { tunnelfill/line-width: 3; }
      [zoom >= 17] { tunnelfill/line-width: 7; }
      [zoom >= 18] { tunnelfill/line-width: 8; }
    }
  }

  [waterway = 'stream'],
  [waterway = 'ditch'],
  [waterway = 'drain'] {
    [int_intermittent != 'yes'][zoom >= 14],
    [zoom >= 15] {
      // the additional line of land color is used to provide a background for dashed casings
      [int_tunnel = 'yes'] {
        background/line-width: 2;
        background/line-color: @land-color;
      }
      water/line-width: 2;
      water/line-color: @water-color;

      [bridge = 'yes'] {
        bridgecasing/line-color: black;
        bridgecasing/line-join: round;
        bridgecasing/line-width: 4;
        [waterway = 'stream'][zoom >= 15] { bridgecasing/line-width: 4; }
        bridgeglow/line-color: white;
        bridgeglow/line-join: round;
        bridgeglow/line-width: 3;
        [waterway = 'stream'][zoom >= 15] { bridgeglow/line-width: 3; }
      }

      [int_intermittent = 'yes'] {
        water/line-dasharray: 4,3;
        water/line-cap: butt;
        water/line-join: round;
        water/line-clip: false;
      }

      [waterway = 'stream'][zoom >= 15] {
        water/line-width: 3;

        [int_tunnel = 'yes'] {
          background/line-width: 3;
        }
      }
      [int_tunnel = 'yes'][zoom >= 15] {
        background/line-width: 3.5;
        water/line-width: 3.5;
        [waterway = 'stream'] {
          background/line-width: 4.5;
          water/line-width: 4.5;
        }
        water/line-dasharray: 4,2;
        tunnelfill/line-width: 1;
        [waterway = 'stream'] { tunnelfill/line-width: 2; }
        tunnelfill/line-color: #f3f7f7;
      }
    }
  }

}

#water-lines-text {
  [lock = 'yes'][zoom >= 17] {
      text-name: "[lock_name]";
      text-face-name: @oblique-fonts;
      text-placement: line;
      text-fill: @water-text;
      text-spacing: 400;
      text-size: 10;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
  }

  [lock != 'yes'][int_tunnel != 'yes'] {
    [waterway = 'river'][zoom >= 13] {
      text-name: "[name]";
      text-size: 10;
      text-face-name: @oblique-fonts;
      text-fill: @water-text;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-spacing: 400;
      text-placement: line;
      text-repeat-distance: @waterway-text-repeat-distance;
      [zoom >= 14] { text-size: 12; }
    }

    [waterway = 'canal'][zoom >= 13] {
      text-name: "[name]";
      text-size: 10;
      text-face-name: @oblique-fonts;
      text-fill: @water-text;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: line;
      text-repeat-distance: @waterway-text-repeat-distance;
    }

    [waterway = 'stream'][zoom >= 15] {
      text-name: "[name]";
      text-size: 10;
      text-face-name: @oblique-fonts;
      text-fill: @water-text;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-spacing: 600;
      text-placement: line;
      text-vertical-alignment: middle;
      text-dy: 8;
      text-repeat-distance: @waterway-text-repeat-distance;
    }

    [waterway = 'drain'],
    [waterway = 'ditch'] {
      [zoom >= 15] {
        text-name: "[name]";
        text-size: 10;
        text-face-name: @oblique-fonts;
        text-fill: @water-text;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
        text-spacing: 600;
        text-placement: line;
        text-vertical-alignment: middle;
        text-dy: 8;
        text-repeat-distance: @waterway-text-repeat-distance;
      }
    }
  }
  [natural = 'strait'][zoom >= 14] {
    text-name: "[name]";
    text-size: 10;
    text-face-name: @oblique-fonts;
    text-fill: @water-text;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-max-char-angle-delta: 15;
    text-spacing: 400;
    text-placement: line;
    [zoom >= 15] {
      text-size: 12;
    }
  }
}


.text-low-zoom[zoom < 10],
#text-point[zoom >= 10],
// TODO Paul Norman <penorman@mac.com>  2019-03-10 23:13:25
.text[zoom >= 10] {
  // local
  [feature = 'place_ocean'],
  [feature = 'place_sea'] {
    #text-point[zoom >= 5] {
      text-name: "[name]";
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-fill: @water-text;
      text-size: 12;
      text-face-name: @oblique-fonts;
    }
  }

  [feature = 'natural_water'],
  [feature = 'natural_bay'],
  [feature = 'natural_strait'],
  [feature = 'landuse_reservoir'],
  [feature = 'landuse_basin'],
  [feature = 'waterway_dock'] {
    [zoom >= 0][way_pixels > 3000][way_pixels <= 768000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 10;
      text-wrap-width: 25; // 2.5 em
      text-line-spacing: -1.5; // -0.15 em
      [way_pixels > 12000] {
        text-size: 12;
        text-wrap-width: 37; // 3.1 em
        text-line-spacing: -1.6; // -0.13 em
      }
      [way_pixels > 48000] {
        text-size: 15;
        text-wrap-width: 59; // 3.9 em
        text-line-spacing: -1.5; // -0.10 em
      }
      [way_pixels > 192000] {
        text-size: 19;
        text-wrap-width: 95; // 5.0 em
        text-line-spacing: -0.95; // -0.05 em
      }
      text-fill: @water-text;
      text-face-name: @oblique-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }
}

#text-point[zoom >= 14] {
  [feature = 'natural_strait'] {
    text-name: "[name]";
    text-size: 10;
    text-wrap-width: 25; // 2.5 em
    text-line-spacing: -1.5; // -0.15 em
    text-fill: @water-text;
    text-face-name: @oblique-fonts;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: point;
    [zoom >= 15] {
      text-size: 12;
      text-wrap-width: 37; // 3.1 em
      text-line-spacing: -1.6; // -0.13 em
    }
  }
}
