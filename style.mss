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
