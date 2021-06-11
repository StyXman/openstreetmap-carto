// nice stuff is things that are not so common and that I like to see from far,
// like castles, viewpoints and such
@nice: 11;
// it's also the max general zoom level
@emergency: 14;
// things that are useful and common enough to see in the near range
@useful: 16;

// from https://github.com/gravitystorm/openstreetmap-carto/pull/3065
@water-dark-low-zoom: #5a5aa1;
@water-dark: darken(@water-color,20%);
@water-salt: #f1dddf;
@land-color: #f2efe9;

@standard-halo-radius: 2.5;
@standard-halo-fill: white;

@darken-lighten: 15%;

// hiking trails grades
@hiking: orange;  // instead of yellow because it fades into the bg in some places
@mountain_hiking: red;
@demanding_mountain_hiking: violet;
@alpine_hiking: blue;
@demanding_alpine_hiking: gray;
@difficult_alpine_hiking: black;
@climbing: @transportation-icon;

@residential: #cfcfcf;      // Lch(89,0,0)
@residential-line: #b9b9b9; // Lch(75,0,0)
// also used for quarry
@retail: @residential;
@retail-line: @residential-line;
@commercial: @residential;
@commercial-line: @residential-line;
// also used for railway, wastewater_plant
@industrial: @residential;
// also used for railway-line, wastewater_plant-line
@industrial-line: @residential-line;

// size of icons so they can be seen while driving
@car-gps-icon-size: 24;

// terrain-small [0-6], terrain-medium [7-8], terrain-big [9-]
.terrain {
  raster-scaling: lanczos;
  raster-opacity: 0.7;
}

// slopeshade-small [0-6], slopeshade-medium [7-8]
.slopeshade-over {
  comp-op: multiply;
  raster-scaling: lanczos;
  raster-opacity: 0.9;
}

// slopeshade-big [9-]
.slopeshade-overlay {
  raster-scaling: lanczos;
  comp-op: overlay;
  // raster-opacity: 0.5;
}

// hillshade-small [0-6], hillshade-big [7-8]
.hillshade-over {
  comp-op: src-over;
  raster-scaling: lanczos;
  raster-opacity: 0.3;
}

// hillshade-big [9-]
.hillshade-overlay {
  [zoom >= 9] {
    raster-scaling: lanczos;

    // this has its beauty too
    /*
    comp-op: overlay;
    raster-opacity: 0.7;
    */

    // nice effect, but washes away the vibrantness of mountains
    /*
    comp-op: multiply;
    raster-opacity: 0.4;
    */

    comp-op: soft-light;
    /*
    */

    /*
    comp-op: hard-light;
    raster-opacity: 0.6;
    [zoom >= 11] {
      raster-opacity: 0.3;
    }
    */
  }
}

// @contour-text: #404040;  // negated
// @contour-halo: black;

#contour-10,
#contour-50,
#contour-100,
#contour-250,
#contour-500,
#contour-1000 {
  /*
  all hsvc ops look ugly because the operate at pixel level regardless of underlying data,
  and 'value' seems even broken
  // comp-op: value;
  line-comp-op: value;
  line-color: hsl(270, 100%, 75%);
  // line-opacity: 0.5;
  line-opacity: 1.0;
  */

  /*
  close, but no cigar: we can't see contours in flat regions
  comp-op: overlay;
  line-color: black;
  */

  // multiply makes it gray

  /*
  this is the default fallback, but it seem we found a friend in color-burn :)
  comp-op: minus;
  line-color: #404040;
  */

  comp-op: color-burn;
  line-color: #181818;
  line-smooth: 0.8;

  #contour-1000 {
    [zoom >=  8] { line-width: 0.2; }
    [zoom >= 10] { line-width: 0.5; }
    [zoom >= 11] { line-width: 0.75; }
    [zoom >= 13] { line-width: 1.0; }
  }

  #contour-500 {
    [zoom >=  9] { line-width: 0.2; }
    [zoom >= 11] { line-width: 0.5; }
    [zoom >= 13] { line-width: 0.75; }
  }

  #contour-250 {
    [zoom >= 10] { line-width: 0.2; }
  }

  #contour-100 {
    [zoom >= 11] { line-width: 0.2; }
    [zoom >= 13] { line-width: 0.5; }
  }

  #contour-50 {
    [zoom >= 13] { line-width: 0.2; }
  }

  #contour-10 {
    [zoom >= 15] { line-width: 0.1; }
  }

  #contour-1000[zoom >= 11],
   #contour-500[zoom >= 12],
   #contour-100[zoom >= 13],
  {
    // text-comp-op: minus;
    text-name: "[height]";
    text-face-name: @book-fonts;
    text-size: 12;
    // text-fill: #404040;
    text-fill: #404040;
    // text-opacity: 0.1;
    text-halo-radius: 2;
    text-halo-fill: white;
    text-placement: line;
    text-spacing: 400;
    text-min-distance: 100;
  }
}

#pistes {
  [zoom >= 12] {
    line-width: 1;
    line-opacity: 0.6;
    line-smooth: 0.4;
    [grade = 'novice'] {
      line-color: green;
    }
    [grade = 'easy'] {
      line-color: blue;
    }
    [grade = 'intermediate'] {
      line-color: red;
    }
    [grade = 'advanced'] {
      line-color: black;
    }
  }


  [zoom >= 14] {
    line-width: 2;
    line-opacity: 0.6;
    line-smooth: 0.4;
  }

  [zoom >= 15] {
    line-width: 4;
    text-name: "[name]";
    text-size: 12;
    text-fill: #666;
    text-face-name: @bold-fonts;
    text-halo-radius: 1.5;
    text-placement: line;
  }
}
