Map {
  background-color: @landcolor;
}

@water-color: #aad3df;
@land-color: #f2efe9;

@standard-halo-radius: 1;
@standard-halo-fill: rgba(255,255,255,0.6);

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
    line-color: #222;
    line-width: 0.5;
    line-smooth: 0.8;
    line-opacity: 0.2;
  }
}

#contour-100 {
  [zoom >= 11] {
    line-color: #222;
    line-width: 0.5;
    line-smooth: 0.8;
    line-opacity: 0.6;
  }

  [zoom >= 13] {
    text-name: "[height]";
    text-face-name: @book-fonts;
    text-size: 12;
    text-fill: #222;
    text-opacity: 0.6;
    text-halo-radius: 1;
    text-placement: line;
    text-spacing: 400;
  }
}

#contour-250 {
  [zoom = 10] {
    line-color: #222;
    line-width: 0.5;
    line-smooth: 0.8;
    line-opacity: 0.6;
  }
}

#contour-500 {
  [zoom >= 9] {
    line-color: #222;
    line-width: 0.5;
    line-smooth: 0.8;
    line-opacity: 0.6;
  }

  [zoom >= 11] {
    line-width: 0.75;
  }

  [zoom >= 12] {
    line-width: 1;

    text-name: "[height]";
    text-face-name: @book-fonts;
    text-size: 12;
    text-fill: #222;
    text-opacity: 0.6;
    text-halo-radius: 1;
    text-placement: line;
    text-spacing: 400;
  }
}

#contour-1000 {
  [zoom >= 8] {
    line-color: #222;
    line-width: 0.5;
    line-smooth: 0.8;
    line-opacity: 0.6;
  }

  [zoom >= 10] {
    line-width: 1.0;
  }

  [zoom >= 12] {
    // line-width: 1.5;

    text-name: "[height]";
    text-face-name: @book-fonts;
    text-size: 12;
    text-fill: #222;
    text-opacity: 0.6;
    text-halo-radius: 1;
    text-placement: line;
    text-spacing: 400;
  }
}
