Map {
  background-color: @land-color;
}

// nice stuff is things that are not so common and that I like to see from far,
// like castles, viewpoints and such
@nice: 11;
// it's also the max general zoom level
@emergency: 14;
// things that are useful and common enough to see in the near range
@useful: 16;

@water-color: #aad3df;
// from https://github.com/gravitystorm/openstreetmap-carto/pull/3065
@water-dark: darken(@water-color,20%);
@land-color: #f2efe9;

@contour-op: minus;
@contour-color-light: #404040;
@contour-color-dark:  #606060;
@contour-text: #404040;  // negated
@contour-halo: black;

@standard-halo-radius: 2.5;
@standard-halo-fill: white;

@darken-lighten: 15%;

@hiking: orange;  // instead of yellow because it fades into the bg in some places
@mountain_hiking: red;
@demanding_mountain_hiking: violet;
@alpine_hiking: blue;
@demanding_alpine_hiking: gray;
@difficult_alpine_hiking: black;

// TODO
@motorway-oneway-arrow-color: white;
@trunk-oneway-arrow-color: white;
@primary-oneway-arrow-color: white;
@secondary-oneway-arrow-color: white;

// quarry
@retail: #c5c3c3;
@commercial: #c5c3c3;

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
    // comp-op: overlay;
    // raster-opacity: 0.7;
    // comp-op: soft-light;
    comp-op: hard-light;
    raster-opacity: 0.6;
    [zoom >= 11] {
      raster-opacity: 0.3;
    }
  }
}

#contour-50 {
  [zoom >= 13] {
    comp-op: @contour-op;
    line-color: @contour-color-light;
    line-width: 0.5;
    line-smooth: 0.8;
    line-opacity: 0.6;
  }

  [zoom >= 14] {
    line-color: @contour-color-dark;
  }
}

#contour-100 {
  [zoom >= 11] {
    comp-op: @contour-op;
    line-color: @contour-color-light;
    line-width: 0.5;
    line-smooth: 0.8;
    line-opacity: 0.6;
  }

  [zoom >= 12] {
    line-opacity: 0.8;
  }

  [zoom >= 13] {
    line-opacity: 1.0;
  }

  [zoom >= 14] {
    line-color: @contour-color-dark;
  }
}

#contour-250 {
  [zoom = 10] {
    comp-op: @contour-op;
    line-color: @contour-color-light;
    line-width: 0.5;
    line-smooth: 0.8;
    line-opacity: 0.6;
  }
}

#contour-500 {
  [zoom >= 9] {
    comp-op: @contour-op;
    line-color: @contour-color-light;
    line-width: 0.5;
    line-smooth: 0.8;
    line-opacity: 0.6;
  }

  [zoom >= 11] {
    line-width: 0.75;
  }

  [zoom >= 12] {
    line-width: 1;
    line-opacity: 0.8;
  }

  [zoom >= 13] {
    line-opacity: 1.0;
  }

  [zoom >= 14] {
    line-color: @contour-color-dark;
  }
}

#contour-1000 {
  [zoom >= 8] {
    comp-op: @contour-op;
    line-color: @contour-color-light;
    line-width: 0.5;
    line-smooth: 0.8;
    line-opacity: 0.6;
  }

  [zoom >= 10] {
    line-width: 1.0;
  }

  [zoom >= 12] {
    // line-width: 1.5;
    line-opacity: 0.8;
  }

  [zoom >= 13] {
    line-opacity: 1.0;
  }

  [zoom >= 14] {
    line-color: @contour-color-dark;
  }
}

// TODO: fix
.contour-text {
  #contour-1000[zoom >= 9],
  #contour-500[zoom >= 11],
  #contour-100[zoom >= 13],
  {
    // comp-op: src-over;
    comp-op: @contour-op;

    text-name: "[height]";
    text-face-name: @book-fonts;
    text-size: 12;
    text-fill: @contour-text;
    text-opacity: 0.7;
    text-halo-radius: 2;
    text-halo-fill: @contour-halo;
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
    text-size: 10;
    text-fill: #666;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: line;
  }
}
