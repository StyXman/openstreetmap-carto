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
@water-dark: #5a5aa1;
@water-text: @water-dark;
@land-color: #f2efe9;

@contour-op: minus;
@contour-color: #404040;
@contour-text: #404040;  // negated
@contour-halo: black;

@standard-halo-radius: 2.5;
@standard-halo-fill: white;

@darken-lighten: 50%;

// admin
@admin-boundaries: purple;

// amenities
@attraction: #f2caea;
@barracks: #ff8f8f;

@darken-lighten: 15%;

// roads
@oneway: #aaa;

@motorway-casing: darken(@motorway-fill, @darken-lighten);
@motorway-low-zoom: @motorway-fill;
@motorway-fill: #cf3030;
@motorway-tunnel-fill: lighten(@motorway-fill, @darken-lighten);

@trunk-casing: darken(@trunk-fill, @darken-lighten);
@trunk-low-zoom: #cf6868;
@trunk-fill: @motorway-fill;
@trunk-tunnel-fill: lighten(@trunk-fill, @darken-lighten);

@primary-casing: darken(@primary-fill, @darken-lighten);
@primary-low-zoom: @primary-fill;
@primary-fill: #8a5c00;
@primary-tunnel-fill: lighten(@primary-fill, @darken-lighten);

@secondary-casing: darken(@secondary-fill, @darken-lighten);
@secondary-low-zoom: @secondary-fill;
@secondary-fill: #2f6f2f;
@secondary-tunnel-fill: lighten(@secondary-fill, @darken-lighten);

@tertiary-casing: #444;
@tertiary-fill: #ffffff;
@tertiary-tunnel-fill: lighten(@tertiary-fill, 5%);

@residential-casing: #444;
@residential-fill: #ffffff;
@residential-tunnel-fill: lighten(@residential-fill, 10%);

@living-street-casing: @default-casing;
@living-street-fill: #ededed;

/*
minor roads for different zoom levels
tertiary    10-12
residential 12-13
road        10-
service     13
*/
@unimportant-road: #bbb;

@service-casing: #999;
@service-fill: @residential-fill;

@pedestrian-casing: grey;
@pedestrian-fill: #dddde8;

@road-casing: @residential-casing;
@road-fill: #ddd;

@path-casing: @default-casing;
@path-fill: black;

@steps-casing: @default-casing;
@steps-fill: @footway-fill;

@cycleway-casing: @default-casing;
@cycleway-fill: blue;

@bridleway-casing: @default-casing;
@bridleway-fill: green;

@byway-casing: @default-casing;
@byway-fill: #ffcc00;

@track-casing: @default-casing;
@track-fill: #996600;
@track-grade1-fill: #b37700;
@track-grade2-fill: #a87000;

@footway-casing: @default-casing;
@footway-fill: @track-fill;

@aeroway-fill: #bbc;
@runway-fill: @aeroway-fill;
@taxiway-fill: @aeroway-fill;
@helipad-fill: @aeroway-fill;

@rail-fill: #404040;

// terrain-small [0-6], terrain-medium [7-8], terrain-big [9-]
.terrain {
  raster-scaling: lanczos;
  raster-opacity: 0.7;
  [zoom >= 9] {
    raster-opacity: 0.9;
  }
}

// slopeshade-small [0-6], slopeshade-medium [7]
.slopeshade-over {
  comp-op: multiply;
  raster-scaling: lanczos;
  raster-opacity: 0.9;
}

// slopeshade-big [9-]
.slopeshade-overlay {
  raster-scaling: lanczos;
  comp-op: overlay;
  // raster-opacity: 0.8;
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
    /* this has its beauty too
    // comp-op: overlay;
    raster-opacity: 0.5;
    */
    comp-op: hard-light;
    raster-opacity: 0.6;
  }
}

#contour-50 {
  [zoom >= 13] {
    comp-op: @contour-op;
    line-color: @contour-color;
    line-width: 0.5;
    line-smooth: 0.8;
    line-opacity: 0.2;
  }
}

#contour-100 {
  [zoom >= 11] {
    comp-op: @contour-op;
    line-color: @contour-color;
    line-width: 0.5;
    line-smooth: 0.8;
    line-opacity: 0.6;
  }
}

#contour-250 {
  [zoom = 10] {
    comp-op: @contour-op;
    line-color: @contour-color;
    line-width: 0.5;
    line-smooth: 0.8;
    line-opacity: 0.6;
  }
}

#contour-500 {
  [zoom >= 9] {
    comp-op: @contour-op;
    line-color: @contour-color;
    line-width: 0.5;
    line-smooth: 0.8;
    line-opacity: 0.6;
  }

  [zoom >= 11] {
    line-width: 0.75;
  }

  [zoom >= 12] {
    line-width: 1;
  }
}

#contour-1000 {
  [zoom >= 8] {
    comp-op: @contour-op;
    line-color: @contour-color;
    line-width: 0.5;
    line-smooth: 0.8;
    line-opacity: 0.6;
  }

  [zoom >= 10] {
    line-width: 1.0;
  }

  [zoom >= 12] {
    // line-width: 1.5;
  }
}

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
  [zoom >= 14] {
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
