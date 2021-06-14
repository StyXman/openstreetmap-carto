@water-text: @water-amenity;
@glacier: #adbcec;
@glacier-line: #6cf;

@waterway-text-repeat-distance: 200;

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
        line-dasharray: 4,2;
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
    [int_intermittent = 'no'] {
      polygon-fill: @water-color;
    }
    [int_intermittent = 'yes'] {
      // was symbols/intermittent_water.png
      // TODO: shows up as plain dark grey
      polygon-pattern-file: url('symbols/local/water_intermittent_bg.png');
      // local
      [int_salt = 'yes'] {
        polygon-pattern-file: url('symbols/local/water_intermittent_salt_bg.png');
      }
      polygon-pattern-alignment: global;
    }

    // factored
    [way_pixels >= 4] { polygon-gamma: 0.75; }
    // comment brought back from old commits
    // Turn down polygon-gamma even more for bigger areas
    // This completely eliminates white lines where large areas join
    [way_pixels >= 64] { polygon-gamma: 0.6; }

    // local
    [int_salt = 'yes'] {
      polygon-fill: @water-salt;
    }
  }

  // local
  [landuse = 'salt_pond'] {
    [zoom >= 13] {
      polygon-fill: @water-salt;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
      polygon-pattern-file: url('symbols/salt-dots-2.png');
      polygon-pattern-alignment: global;
      [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
      [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
    }
  }
}

#water-lines-casing {
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

#water-lines-low-zoom {
  [waterway = 'river'][zoom >= 8][zoom < 12] {
    [int_intermittent = 'yes'] {
      line-dasharray: 8,4;
      line-cap: butt;
      line-join: round;
      line-clip: false;
    }
    // was @water-color;
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

#water-lines,
#waterway-bridges {
  [waterway = 'canal'][zoom >= 12],
  [waterway = 'river'][zoom >= 12] {
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

    [int_intermittent = 'yes'] {
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
    // I'm used to this from ZL 13
    [int_intermittent != 'yes'][zoom >= 13],
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
      text-size: 13;
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
  [natural = 'bay'][zoom >= 14],
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
  [feature = 'natural_bay'],
  [feature = 'natural_strait'],
  [feature = 'landuse_reservoir'],
  [feature = 'landuse_basin'],
  [feature = 'waterway_dock'] {
    [zoom >= 0][way_pixels > 3000][way_pixels <= 768000],
    [zoom >= 14][way_pixels <= 768000][feature = 'natural_bay'],
    [zoom >= 14][way_pixels <= 768000][feature = 'natural_strait'],
    [zoom >= 17][way_pixels <= 768000] {
      text-name: "[name]";
      text-size: 13;
      text-wrap-width: 25; // 2.5 em
      text-line-spacing: -1.5; // -0.15 em
      [way_pixels > 12000],
      [zoom >= 15][feature = 'natural_strait'] {
        // was 12
        text-size: 15;
        text-wrap-width: 37; // 3.1 em
        text-line-spacing: -1.6; // -0.13 em
      }
      [way_pixels > 48000] {
        text-size: 17;
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
      text-halo-fill: @water-color;
      [int_salt = 'yes'] { text-halo-fill: @water-salt; }
      text-placement: interior;
    }
  }
}
