@marina-text: #576ddf; // also swimming_pool
@wetland-text: darken(#4aa5fa, 25%); /* Also for mud */
@shop-icon: #ac39ac;
@shop-text: #939;
@transportation-icon: #c00000;
@transportation-text: #800000;
// ex water-dark
@accommodation-icon: #5a5aa1;
@accommodation-text: #5a5aa1;
@water-amenity: #5a5aa1;
@airtransport: #8461C4; //also ferry_terminal
@health-color: #BF0000;
@amenity-brown: #734a08;
@gastronomy-icon: #C77400;
@gastronomy-text: darken(@gastronomy-icon, 5%);
@memorials: @amenity-brown;
@culture: @amenity-brown;
@public-service: @amenity-brown;
@ruin: #9f8762;
@office: #4863A0;
@man-made-icon: #666666;
@advertising-grey: @man-made-icon;
@barrier-icon: #3f3f3f;
@landform-color: #d08f55;
@leisure-green: darken(@park, 60%);
@protected-area: #008000;
@aboriginal: #82643a;
@religious-icon: #000000;

@landcover-font-size: 10;
@landcover-wrap-width-size: 30; // 3 em
@landcover-line-spacing-size: -1.5; // -0.15 em
@landcover-font-size-big: 12;
@landcover-wrap-width-size-big: 36; // 3 em
@landcover-line-spacing-size-big: -1.8; // -0.15 em
@landcover-font-size-bigger: 15;
@landcover-wrap-width-size-bigger: 45; // 3 em
@landcover-line-spacing-size-bigger: -2.25; // -0.15 em
@landcover-face-name: @oblique-fonts;

@standard-font-size: 10;
@standard-wrap-width: 30; // 3 em
@standard-line-spacing-size: -1.5; // -0.15 em
@standard-font: @book-fonts;

// icon sizes
@tiny: 4;
@dot: 6;
@small: 8;
@medium: 10;
@normal: 12;
@big: 16;
// size of icons so they can be seen while driving
@huge: 24;

#amenity-points {
  [feature = 'tourism_alpine_hut'][zoom >= 13],
  [feature = 'tourism_wilderness_hut'][zoom >= 13],
  [feature = 'amenity_shelter'][zoom >= 16] {
    marker-file: url('symbols/amenity/shelter.svg');
    [feature = 'tourism_wilderness_hut'] {
      marker-file: url('symbols/tourism/wilderness_hut.svg');
    }
    [feature = 'tourism_alpine_hut'] {
      marker-file: url('symbols/tourism/alpinehut.svg');
    }
    [feature = 'amenity_shelter'] {
      // these are usually bus stop shelters, so smaller
      marker-width: @medium;
      marker-fill: @man-made-icon;
    }
    marker-fill: @accommodation-icon;
    marker-clip: false;
    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  // was 18
  [feature = 'amenity_atm'][zoom >= @useful] {
    marker-file: url('symbols/amenity/atm.svg');
    marker-fill: @amenity-brown;
    marker-clip: false;
  }

  [feature = 'amenity_bureau_de_change'][zoom >= @useful] {
    marker-file: url('symbols/amenity/bureau_de_change.svg');
    marker-fill: @amenity-brown;
    marker-clip: false;
  }

  // was: 17
  [feature = 'amenity_bank'][zoom >= 16] {
    marker-file: url('symbols/amenity/bank.svg');
    marker-fill: @public-service;
    marker-clip: false;
  }

  [feature = 'amenity_bar'][zoom >= 16],
  [feature = 'amenity_biergarten'][zoom >= 16],
  [feature = 'amenity_cafe'][zoom >= 16],
  [feature = 'amenity_fast_food'][zoom >= 16],
  [feature = 'amenity_food_court'][zoom >= 16],
  [feature = 'amenity_ice_cream'][zoom >= 16],
  [feature = 'amenity_pub'][zoom >= 16],
  [feature = 'amenity_restaurant'][zoom >= 16] {
    marker-clip: false;
    marker-fill: @gastronomy-icon;
    [feature != 'amenity_food_court'][zoom = 16] {
      marker-width: @tiny;
      marker-line-width: 0;
    }
    // was: 17
    [feature = 'amenity_bar'][zoom >= 17] {
      marker-file: url('symbols/amenity/bar.svg');
    }
    [feature = 'amenity_biergarten'][zoom >= 17] {
      marker-file: url('symbols/amenity/biergarten.svg');
    }
    [feature = 'amenity_cafe'][zoom >= 17] {
      marker-file: url('symbols/amenity/cafe.svg');
    }
    [feature = 'amenity_fast_food']/* [zoom >= 18] */ {
      marker-width: @tiny;
      marker-line-width: 0;
      [zoom >= 18] {
        marker-width: @medium;
        marker-file: url('symbols/amenity/fast_food.svg');
      }
    }
    [feature = 'amenity_food_court'][zoom >= 17],
    [feature = 'amenity_restaurant'][zoom >= 17] {
      marker-file: url('symbols/amenity/restaurant.svg');
    }
    [feature = 'amenity_ice_cream'][zoom >= 17] {
      marker-file: url('symbols/amenity/ice_cream.svg');
    }
    [feature = 'amenity_pub'][zoom >= 17] {
      marker-file: url('symbols/amenity/pub.svg');
    }
  }

  [feature = 'amenity_internet_cafe'][zoom >= @useful] {
    marker-file: url('symbols/amenity/internet_cafe.svg');
    marker-fill: @amenity-brown;
    marker-clip: false;
  }

  [feature = 'amenity_bbq'][zoom >= 17] {
    marker-file: url('symbols/amenity/bbq.svg');
    marker-width: @medium;
    marker-fill: @amenity-brown;
    marker-clip: false;
    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  // was 19, but 18 is my limit
  [feature = 'amenity_public_bookcase'][zoom >= 18] {
    marker-file: url('symbols/amenity/public_bookcase.svg');
    marker-width: @medium;
    marker-fill: @amenity-brown;
    marker-clip: false;
  }

  [feature = 'amenity_bicycle_rental'][zoom >= @useful] {
    marker-file: url('symbols/amenity/rental_bicycle.svg');
    marker-fill: @transportation-icon;
    marker-clip: false;
  }

  [feature = 'highway_bus_stop'] {
    [zoom >= 15] {
      marker-file: url('symbols/square.svg');
      marker-fill: @transportation-icon;
      marker-width: @tiny;
      marker-clip: false;
    }
    [zoom >= 16] {
      marker-width: @dot;
    }
    [zoom >= 17] {
      marker-file: url('symbols/highway/bus_stop.12.svg');
      marker-width: 14;
    }
  }

  [feature = 'highway_elevator'][zoom >= 18] {
    [access = null],
    [access = 'yes'] {
      marker-file: url('symbols/highway/elevator.12.svg');
      marker-width: @small;
      marker-fill: @transportation-icon;
    }
  }

  [feature = 'amenity_bus_station'][zoom >= 16] {
    marker-file: url('symbols/amenity/bus_station.svg');
    // use colors from SVG to allow for white background
    marker-clip: false;
  }

  [feature = 'amenity_taxi'][zoom >= 17] {
    marker-file: url('symbols/amenity/taxi.svg');
    marker-fill: @transportation-icon;
    marker-clip: false;
  }

  // was 19, but 18 is my limit
  [feature = 'amenity_vending_machine'][zoom >= 18] {
    /*
    [vending = 'excrement_bags'] {
      marker-file: url('symbols/amenity/excrement_bags.svg');
    }
    */
    [vending = 'parking_tickets'] {
      marker-file: url('symbols/amenity/parking_tickets.svg');
      marker-fill: @amenity-brown;
      marker-placement: interior;
      marker-clip: false;
    }
    [vending = 'public_transport_tickets'] {
      marker-file: url('symbols/amenity/public_transport_tickets.svg');
      marker-fill: @amenity-brown;
      marker-placement: interior;
      marker-clip: false;
    }
    marker-fill: @amenity-brown;
    marker-clip: false;
  }

  [feature = 'highway_traffic_signals'][zoom >= 17] {
    marker-file: url('symbols/highway/traffic_light.13.svg');
    // make it darker, was #545454
    marker-fill: #0a0a0a;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'barrier_toll_booth'][zoom >= 16] {
    marker-file: url('symbols/barrier/toll_booth.svg');
    // make it bigger, darker, as red on red does not work on highways
    marker-width: @huge;
    // was @transportation-icon
    marker-fill: black;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'tourism_artwork'][zoom >= 17] {
    marker-width: @medium;
    [artwork_type != 'statue'] {
      marker-file: url('symbols/tourism/artwork.svg');
    }
    [artwork_type = 'statue'] {
      marker-file: url('symbols/historic/statue.svg');
    }
    [artwork_type = 'bust'] {
      marker-file: url('symbols/historic/bust.svg');
    }
    marker-fill: @memorials;
  }

  [feature = 'tourism_camp_site'][zoom >= 16] {
    marker-file: url('symbols/tourism/camping.svg');
    marker-width: @medium;
    // was @accommodation-icon
    marker-fill: @leisure-green;
    marker-clip: false;
  }

  // Ford tagging on points - ford on lines is defined later
  [feature = 'highway_ford'][zoom >= 16] {
    marker-file: url('symbols/natural/saddle.svg');
    // was @transportation-icon
    marker-fill: @water-amenity;
    marker-clip: false;
  }

  [feature = 'tourism_caravan_site'][zoom >= 16] {
    marker-file: url('symbols/tourism/caravan_park.svg');
    marker-width: @medium;
    marker-clip: false;
    // was: @accommodation-icon;
    marker-fill: @leisure-green;
  }

  [feature = 'amenity_car_rental'][zoom >= 17] {
    marker-file: url('symbols/amenity/rental_car.svg');
    marker-width: @medium;
    marker-fill: @transportation-icon;
    marker-clip: false;
  }

  [feature = 'amenity_car_wash'][zoom >= 17] {
    marker-file: url('symbols/amenity/car_wash.svg');
    marker-width: @medium;
    marker-fill: @amenity-brown;
    marker-clip: false;
  }

  [feature = 'tourism_chalet'][zoom >= 17] {
    marker-file: url('symbols/tourism/chalet.svg');
    marker-width: @medium;
    marker-fill: @accommodation-icon;
    marker-clip: false;
  }

  [feature = 'amenity_cinema'][zoom >= 16] {
    marker-file: url('symbols/amenity/cinema.svg');
    marker-width: @medium;
    marker-fill: @culture;
    marker-clip: false;
  }

  [feature = 'amenity_public_bath'][zoom >= 17] {
    marker-file: url('symbols/amenity/public_bath.svg');
    marker-width: @medium;
    marker-fill: @amenity-brown;
    marker-clip: false;
  }

  [feature = 'amenity_nightclub'][zoom >= 17] {
    marker-width: @tiny;
    marker-line-width: 0;
    [zoom >= 18] {
      marker-file: url('symbols/amenity/nightclub.svg');
      marker-width: @small;
    }
    marker-fill: @amenity-brown;
    marker-clip: false;
  }

  [feature = 'amenity_fire_station'][zoom >= 16] {
    marker-file: url('symbols/amenity/firestation.svg');
    // seems important, but you don't go to one
    marker-width: @medium;
    marker-fill: @public-service;
    marker-clip: false;
  }

  [feature = 'amenity_fountain'] {
    ::basin {
      [zoom = 17] {
        marker-fill: @water-color;
        marker-allow-overlap: true;
        marker-line-width: 0;
        marker-width: 10;
        marker-ignore-placement: true;
      }
    }
    ::nozzle {
      [zoom = 17] {
        nozzle/marker-fill: @marina-text;
        nozzle/marker-line-width: 0;
        nozzle/marker-width: 3;
      }
      [zoom >= 18] {
        nozzle/marker-file: url('symbols/amenity/fountain.svg');
        nozzle/marker-fill: @marina-text;
        nozzle/marker-clip: false;
      }
    }
  }

  [feature = 'amenity_charging_station'][zoom >= @useful] {
    marker-file: url('symbols/amenity/charging_station.svg');
    marker-width: @huge;
    marker-fill: @transportation-icon;
    marker-clip: false;
    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [feature = 'amenity_fuel'][zoom >= @useful] {
    marker-file: url('symbols/amenity/fuel.svg');
    marker-width: @huge;
    marker-fill: @transportation-icon;
    marker-clip: false;
  }

  [feature = 'tourism_guest_house'][zoom >= 17] {
    marker-file: url('symbols/tourism/guest_house.svg');
    marker-width: @medium;
    marker-fill: @accommodation-icon;
    marker-clip: false;
  }

  [feature = 'tourism_apartment'][zoom >= 18] {
    marker-file: url('symbols/tourism/apartment.svg');
    marker-width: @medium;
    marker-fill: @accommodation-icon;
    marker-clip: false;
  }

  // was 19, but 18 is my limit
  [feature = 'amenity_bicycle_repair_station'][zoom >= 18] {
    marker-file: url('symbols/amenity/bicycle_repair_station.svg');
    marker-width: @medium;
    marker-fill: @amenity-brown;
    marker-clip: false;
    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [feature = 'amenity_hospital'][zoom >= @useful] {
    marker-file: url('symbols/amenity/hospital.svg');
    marker-fill: @health-color;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_casino'][zoom >= 17] {
    marker-file: url('symbols/amenity/casino.svg');
    marker-width: @small;
    marker-fill: @amenity-brown;
    marker-clip: false;
  }

  [feature = 'tourism_gallery'][zoom >= 17] {
    marker-width: @tiny;
    marker-line-width: 0;
    [zoom >= 18] {
      marker-file: url('symbols/shop/art.svg');
      marker-width: @medium;
    }
    marker-clip: false;
    marker-fill: @amenity-brown;
  }

  [feature = 'tourism_hostel'][zoom >= 17] {
    marker-file: url('symbols/tourism/hostel.svg');
    marker-clip: false;
    marker-fill: @accommodation-icon;
  }

  [feature = 'tourism_hotel'][zoom >= 17] {
    marker-file: url('symbols/tourism/hotel.svg');
    marker-clip: false;
    marker-fill: @accommodation-icon;
  }

  [feature = 'tourism_motel'][zoom >= 17] {
    marker-file: url('symbols/tourism/motel.svg');
    marker-clip: false;
    marker-fill: @accommodation-icon;
  }

  // was 19, but 18 is my limit
  [feature = 'tourism_information'][zoom >= 18], // TODO: see if I want emergency here too
  // local
  [feature = 'tourism_information']["information"='guidepost'][zoom >= @emergency],
  // was 17
  [feature = 'tourism_information']["information"='office'][zoom >= @emergency] {
    marker-file: url('symbols/tourism/information.svg');
    [information = 'audioguide'] {
      marker-file: url('symbols/tourism/audioguide.svg');
    }
    [information = 'board'] {
      marker-file: url('symbols/tourism/board.svg');
    }
    [information = 'guidepost'] {
      // marker-file: url('symbols/tourism/guidepost.svg');
      marker-file: url('symbols/local/guidepost-14.svg');
      marker-width: 18;
      marker-fill: @amenity-brown;
    }
    [information = 'office'] {
      marker-file: url('symbols/tourism/office.svg');
      marker-fill: @amenity-brown;
    }
    [information = 'map'],
    [information = 'tactile_map'] {
      marker-file: url('symbols/tourism/map.svg');
    }
    [information = 'terminal'] {
      marker-file: url('symbols/tourism/terminal.svg');
    }
    marker-fill: @man-made-icon;
    marker-clip: false;
  }

  [feature = 'amenity_embassy'][zoom >= 17] {
    marker-file: url('symbols/amenity/embassy.svg');
    marker-width: @small;
    marker-fill: @public-service;
    marker-clip: false;
  }

  [feature = 'amenity_library'][zoom >= 16] {
    marker-file: url('symbols/amenity/library.svg');
    marker-width: @medium;
    marker-fill: @culture;
    marker-clip: false;
  }

  [feature = 'amenity_courthouse'][zoom >= 16] {
    marker-file: url('symbols/amenity/courthouse.svg');
    marker-width: @medium;
    marker-fill: @public-service;
    marker-clip: false;
  }

  [feature = 'amenity_community_centre'][zoom >= 17] {
    marker-file: url('symbols/amenity/community_centre.svg');
    marker-width: @small;
    marker-fill: @culture;
    marker-clip: false;
  }

  [feature = 'amenity_shower'][zoom >= 18] {
    marker-file: url('symbols/amenity/shower.svg');
    marker-fill: @amenity-brown;
    marker-clip: false;
    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [feature = 'amenity_social_facility'][zoom >= 17] {
    marker-file: url('symbols/amenity/social_facility.svg');
    marker-width: @small;
    marker-fill: @public-service;
    marker-clip: false;
  }

  [feature = 'amenity_townhall'][zoom >= 16] {
    marker-file: url('symbols/amenity/town_hall.svg');
    marker-fill: @public-service;
    marker-clip: false;
  }

  [feature = 'man_made_mast']["tower:type" != 'lighting'],
  [feature = 'man_made_mast']["tower:type" = 'lighting'][zoom >= 18]   {
    [zoom >= 14][height >= 160],
    [zoom >= 15][height >= 80],
    [zoom >= 16][height >= 40],
    [zoom >= 17][height >= 20],
    [zoom >= 18] {
      marker-file: url('symbols/man_made/mast.svg');
      marker-fill: @man-made-icon;
      marker-clip: false;
      ["tower:type" = 'lighting'] {
        marker-file: url('symbols/man_made/mast_lighting.svg');
      }
      ["tower:type" = 'communication'] {
        marker-file: url('symbols/man_made/mast_communications.svg');
      }
    }
  }

  [feature = 'man_made_tower']["tower:type" = 'cooling'][zoom >= 15],
  [feature = 'man_made_tower']["tower:type" = 'lighting'][zoom >= 18],
  [feature = 'man_made_tower']["tower:type" = 'bell_tower'][zoom >= 18],
  [feature = 'man_made_tower']["tower:type" = 'watchtower'][zoom >= 18],
  [feature = 'man_made_tower']["tower:type" != 'cooling']["tower:type" != 'lighting']["tower:type" != 'bell_tower']["tower:type" != 'watchtower'] {
    [zoom >= 14][height >= 160],
    [zoom >= 15][height >= 80],
    [zoom >= 16][height >= 40],
    [zoom >= 17] {
      marker-file: url('symbols/man_made/tower_generic.svg');
      marker-fill: @man-made-icon;
      marker-clip: false;
      ["tower:type" = 'defensive'] {
        marker-file: url('symbols/man_made/tower_defensive.svg');
      }
      ["tower:type" = 'observation'],
      ["tower:type" = 'watchtower'] {
        marker-file: url('symbols/man_made/tower_observation.svg');
      }
      ["tower:type" = 'bell_tower'] {
        marker-file: url('symbols/man_made/bell_tower.svg');
      }
      ["tower:type" = 'cooling'] {
        marker-file: url('symbols/man_made/tower_cooling.svg');
      }
      ["tower:construction" = 'lattice'] {
        marker-file: url('symbols/man_made/tower_lattice.svg');
      }
      ["tower:construction" = 'dish'] {
        marker-file: url('symbols/man_made/tower_dish.svg');
      }
      ["tower:construction" = 'dome'] {
        marker-file: url('symbols/man_made/tower_dome.svg');
      }
      ["tower:type" = 'communication'] {
        marker-file: url('symbols/man_made/tower_cantilever_communication.svg');
        ["tower:construction" = 'lattice'] {
          marker-file: url('symbols/man_made/tower_lattice_communication.svg');
        }
        ["tower:construction" = 'dish'] {
          marker-file: url('symbols/man_made/tower_dish.svg');
        }
        ["tower:construction" = 'dome'] {
          marker-file: url('symbols/man_made/tower_dome.svg');
        }
      }
      ["tower:type" = 'lighting'] {
        marker-file: url('symbols/man_made/tower_lighting.svg');
        ["tower:construction" = 'lattice'] {
          marker-file: url('symbols/man_made/tower_lattice_lighting.svg');
        }
      }
    }
  }

  [feature = 'man_made_communications_tower'][zoom >= 14] {
    marker-file: url('symbols/man_made/communications_tower.svg');
    marker-fill: @man-made-icon;
    marker-clip: false;
  }

  [feature = 'man_made_chimney'] {
    [zoom >= 16][height > 50],
    [zoom >= 17][height > 30],
    [zoom >= 18] {
      marker-file: url('symbols/man_made/chimney.svg');
      marker-fill: @man-made-icon;
      marker-clip: false;
    }
  }

  [feature = 'man_made_crane'] {
    [zoom >= 16][height > 50],
    [zoom >= 17] {
      marker-file: url('symbols/man_made/crane.svg');
      marker-fill: @man-made-icon;
      marker-clip: false;
    }
  }

  [feature = 'man_made_telescope']["telescope:type" != 'optical']["telescope:type" != null] {
    [zoom >= 14]["telescope:diameter" >= 60],
    [zoom >= 15]["telescope:diameter" >= 30],
    [zoom >= 16] {
      marker-file: url('symbols/man_made/telescope_dish.svg');
      marker-fill: @man-made-icon;
      marker-clip: false;
    }
  }

  [feature = 'man_made_telescope']["telescope:type" = 'optical'],
  [feature = 'man_made_telescope']["telescope:type" = null], {
    [zoom >= 14]["telescope:diameter" >= 8],
    [zoom >= 15]["telescope:diameter" >= 4],
    [zoom >= 16]["telescope:diameter" >= 2],
    [zoom >= 17] {
      marker-file: url('symbols/man_made/telescope_dome.svg');
      marker-fill: @man-made-icon;
      marker-clip: false;
    }
  }

  [feature = 'historic_city_gate'][zoom >= @nice] {
    marker-file: url('symbols/historic/city_gate.svg');
    // was @man-made-icon;
    marker-fill: @culture;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'tourism_museum'][zoom >= 16] {
    marker-file: url('symbols/tourism/museum.svg');
    marker-fill: @culture;
    marker-clip: false;
  }

  [feature = 'amenity_clinic'][zoom >= 17],
  [feature = 'amenity_doctors'][zoom >= @useful] {
    marker-file: url('symbols/amenity/doctors.svg');
    marker-fill: @health-color;
    marker-clip: false;
  }

  [feature = 'amenity_dentist'][zoom >= 17] {
    marker-width: @tiny;
    marker-line-width: 0;
    [zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/amenity/dentist.svg');
    }
    marker-fill: @health-color;
    marker-clip: false;
  }

  [feature = 'amenity_hospital'][zoom >= @useful] {
    marker-file: url('symbols/amenity/hospital.svg');
    marker-fill: @health-color;
    marker-clip: false;
  }

  [feature = 'amenity_pharmacy'][zoom >= @useful] {
    marker-file: url('symbols/amenity/pharmacy.svg');
    marker-fill: @health-color;
    marker-clip: false;
  }

  [feature = 'amenity_veterinary'][zoom >= 17] {
    marker-width: @tiny;
    marker-line-width: 0;
    [zoom >= 18] {
      marker-file: url('symbols/amenity/veterinary.svg');
      marker-width: @small;
    }
    marker-fill: @health-color;
    marker-clip: false;
  }

  [feature = 'amenity_place_of_worship'][zoom >= 16] {
    marker-file: url('symbols/amenity/place_of_worship.svg');
    marker-fill: @religious-icon;
    marker-clip: false;
    [religion = 'christian'] {
      marker-file: url('symbols/religion/christian.svg');
      [denomination = 'jehovahs_witness']{
        marker-file: url('symbols/amenity/place_of_worship.svg');
      }
    }
    [religion = 'muslim'] {
      marker-file: url('symbols/religion/muslim.svg');
    }
    [religion = 'sikh'] {
      marker-file: url('symbols/religion/sikhist.svg');
    }
    [religion = 'jewish'] {
      marker-file: url('symbols/religion/jewish.svg');
    }
    [religion = 'hindu'] {
      marker-file: url('symbols/religion/hinduist.svg');
    }
    [religion = 'buddhist'] {
      marker-file: url('symbols/religion/buddhist.svg');
    }
    [religion = 'shinto'] {
      marker-file: url('symbols/religion/shintoist.svg');
    }
    [religion = 'taoist'] {
      marker-file: url('symbols/religion/taoist.svg');
    }
  }

  [feature = 'man_made_storage_tank'][zoom >= 18],
  [feature = 'man_made_silo'][zoom >= 18] {
    marker-file: url('symbols/man_made/storage_tank.svg');
    marker-width: @small;
    marker-fill: @man-made-icon;
    marker-clip: false;
  }

  // was 16
  [feature = 'amenity_police'][zoom >= @useful] {
    marker-file: url('symbols/amenity/police.svg');
    marker-fill: @public-service;
    marker-clip: false;
  }

  [feature = 'amenity_vehicle_inspection'][zoom >= 17] {
    marker-file: url('symbols/amenity/vehicle_inspection.svg');
    marker-width: @medium;
    marker-fill: @public-service;
    marker-clip: false;
  }

  // was 19, but 18 is my limit
  [feature = 'amenity_post_box'][zoom >= 18] {
    marker-file: url('symbols/amenity/post_box.svg');
    marker-fill: @amenity-brown;
    marker-clip: false;
  }

  [feature = 'amenity_post_office'][zoom >= @useful] {
    marker-file: url('symbols/amenity/post_office.svg');
    marker-fill: @public-service;
    marker-clip: false;
  }

  [feature = 'amenity_recycling'][recycling_type = 'centre'][zoom >= 17],
  // was 19, but 18 is my limit
  [feature = 'amenity_recycling'][zoom >= 18] {
    marker-file: url('symbols/amenity/recycling.svg');
    marker-fill: @amenity-brown;
    marker-clip: false;
    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [feature = 'amenity_telephone'][zoom >= 17] {
    marker-file: url('symbols/amenity/telephone.svg');
    marker-fill: @amenity-brown;
    marker-clip: false;
  }

  // was 18
  [feature = 'emergency_phone'][zoom >= 15] {
    marker-file: url('symbols/amenity/emergency_phone.svg');
    // was @amenity-brown, darker so they stand out against motorways
    marker-fill: black;
    marker-clip: false;
  }

  [feature = 'amenity_theatre'][zoom >= 16] {
    marker-file: url('symbols/amenity/theatre.svg');
    marker-width: @medium;
    marker-fill: @culture;
    marker-clip: false;
  }

  [feature = 'amenity_arts_centre'][zoom >= 17] {
    marker-file: url('symbols/amenity/arts_centre.svg');
    marker-width: @medium;
    marker-fill: @culture;
    marker-clip: false;
  }

  [feature = 'amenity_toilets'] {
    [access = 'yes'][zoom >= @emergency],
    [zoom >= 19] {
      marker-file: url('symbols/amenity/toilets.svg');
      marker-width: @big;
      marker-fill: @amenity-brown;
      marker-clip: false;
      [access != ''][access != 'permissive'][access != 'yes'] {
        marker-opacity: 0.33;
      }
    }
  }

  [feature = 'amenity_drinking_water'][zoom >= @emergency] {
    marker-file: url('symbols/amenity/drinking_water.svg');
    // was @amenity-brown;
    marker-fill: @water-amenity;
    marker-width: @big;
    marker-clip: false;
    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [feature = 'amenity_prison'][zoom >= 17] {
    marker-file: url('symbols/amenity/prison.svg');
    marker-width: @small;
    marker-fill: @public-service;
    marker-clip: false;
  }

  [feature = 'amenity_nursing_home'],
  [feature = 'amenity_childcare'] {
    [zoom >= 17] {
      marker-width: @tiny;
      [zoom >= 18] {
        marker-width: @small;
      }
      marker-line-width: 0;
      marker-clip: false;
      marker-fill: darken(@societal_amenities, 80%);
    }
  }

  /*
  [feature = 'amenity_driving_school'][zoom >= 17] {
    marker-width: 4;
    [zoom >= 18] {
      marker-width: 8;
    }
    marker-line-width: 0;
    marker-clip: false;
    marker-fill: @shop-icon;
  }
  */

  [feature = 'tourism_viewpoint'][zoom >= @nice] {
    marker-file: url('symbols/tourism/viewpoint.svg');
    marker-fill: @amenity-brown;
    marker-clip: false;
  }

  [feature = 'man_made_water_tower'][zoom >= 17] {
    marker-file: url('symbols/man_made/water_tower.svg');
    marker-width: @medium;
    marker-fill: @man-made-icon;
    marker-clip: false;
  }

  [feature = 'historic_memorial'][memorial = null][zoom >= 17],
  [feature = 'historic_memorial'][memorial != null][memorial != 'blue_plaque'][memorial != 'bust'][memorial != 'plaque'][memorial != 'stele'][memorial != 'stone'][zoom >= 17],
  [feature = 'historic_memorial'][memorial = 'statue'][zoom >= 17],
  [feature = 'historic_memorial'][memorial = 'bust'][zoom >= 18],
  [feature = 'historic_memorial'][memorial = 'stele'][zoom >= 18],
  [feature = 'historic_memorial'][memorial = 'stone'][zoom >= 18],
  [feature = 'historic_memorial'][memorial = 'blue_plaque'][zoom >= 19],
  [feature = 'historic_memorial'][memorial = 'plaque'][zoom >= 19] {
    marker-file: url('symbols/historic/memorial.svg');
    [memorial = 'bust']{
      marker-file: url('symbols/historic/bust.svg');
    }
    [memorial = 'blue_plaque'],
    [memorial = 'plaque'] {
      marker-file: url('symbols/historic/plaque.svg');
    }
    [memorial = 'statue'] {
      marker-file: url('symbols/historic/statue.svg');
    }
    [memorial = 'stone'] {
      marker-file: url('symbols/historic/stone.svg');
    }
    marker-fill: @memorials;
    marker-clip: false;
  }

  [feature = 'man_made_obelisk'][zoom >= 17] {
    marker-file: url('symbols/historic/obelisk.svg');
    marker-fill: @memorials;
    marker-clip: false;
  }

  [feature = 'historic_monument'][zoom >= 16] {
    marker-file: url('symbols/historic/monument.svg');
    marker-fill: @memorials;
    marker-clip: false;
  }

  [feature = 'historic_fort'][zoom >= @nice] {
    marker-file: url('symbols/local/fort.svg');
    marker-width: 14;
    marker-placement: interior;
    marker-clip: false;
    [ruins = 'yes'] {
      marker-fill: @ruin;
    }
  }

  /*
  the original code had this, but I prefer a more fine grained version below
  [feature = 'historic_castle'][castle_type != 'stately'][zoom >= @nice],
  [feature = 'historic_castle'][castle_type = 'stately'][zoom >= 16],
  [feature = 'historic_manor'][zoom >= 15] {
  */
  [feature = 'historic_castle'][zoom >= @nice] {
    marker-file: url('symbols/historic/castle.svg');
    marker-width: 14;
    marker-fill: @memorials;
    marker-clip: false;
    [ruins = 'yes'] {
      marker-fill: @ruin;
    }
    [zoom >= 15] {
      [castle_type = 'palace'],
      [castle_type = 'stately'][zoom >= 16] {
        marker-file: url('symbols/historic/palace.svg');
      }

      [castle_type = 'manor'][zoom >= 16],
      [feature = 'historic_manor'][zoom >= 16] {
        marker-file: url('symbols/historic/manor.svg');
      }
    }
    [castle_type = 'fortress'],
    [castle_type = 'defensive'],
    [castle_type = 'castrum'],
    [castle_type = 'shiro'],
    [castle_type = 'kremlin'] {
      marker-width: 14;
      marker-file: url('symbols/historic/fortress.svg');
    }
  }

  // TODO; differentiate ruins form tourist attractions
  // use maki icon ∴
  [feature = 'historic_archaeological_site'][zoom >= @nice] {
    marker-file: url('symbols/historic/archaeological_site.svg');
    marker-fill: @culture;
    marker-clip: false;
  }

  [feature = 'amenity_marketplace'][zoom >= 16][way_pixels > 3000],
  [feature = 'amenity_marketplace'][zoom >= 17] {
    marker-clip: false;
    marker-fill: @shop-icon;
    marker-file: url('symbols/shop/marketplace.svg');
  }

  [feature = 'shop'] {
    [shop != 'mall'][shop != 'massage'][zoom >= 17],
    [shop = 'supermarket'][zoom >= 16],
    [shop = 'department_store'][zoom >= 16] {
      marker-clip: false;
      marker-fill: @shop-icon;
    }

    [zoom >= 17][zoom < 18][shop != 'supermarket'][shop != 'department_store'][shop != 'mall'][shop != 'massage'] {
      marker-width: @tiny;
      marker-line-width: 0;
    }

    [shop = 'other'][zoom >= 18] {
      marker-width: @dot;
      marker-line-width: 0;
    }

    [shop = 'supermarket'][zoom >= 16] {
      marker-file: url('symbols/shop/supermarket.svg');
    }

    [shop = 'art'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/art.svg');
    }

    [shop = 'bag'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/bag.svg');
    }

    [shop = 'bakery'][zoom >= 18] {
      marker-file: url('symbols/shop/bakery.svg');
    }

    [shop = 'beauty'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/beauty.svg');
    }

    [shop = 'bed'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/bed.svg');
    }

    [shop = 'beverages'][zoom >= 18] {
      marker-width: @medium;
      marker-file: url('symbols/shop/beverages.svg');
    }

    /*
    gambling
    [shop = 'bookmaker'][zoom >= 18] {
      marker-file: url('symbols/shop/bookmaker.svg');
    }
    */

    [shop = 'books'][zoom >= 18] {
      marker-file: url('symbols/amenity/library.svg');
      marker-width: @medium;
    }

    [shop = 'butcher'][zoom >= 18] {
      marker-file: url('symbols/shop/butcher.svg');
    }

    [shop = 'carpet'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/carpet.svg');
    }

    [shop = 'charity'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/charity.svg');
    }

    [shop = 'chemist'][zoom >= 18] {
      marker-file: url('symbols/shop/chemist.svg');
    }

    [shop = 'clothes'],
    [shop = 'fashion'] {
      [zoom >= 18] {
        marker-width: @small;
        marker-file: url('symbols/shop/clothes.svg');
      }
    }

    [shop = 'coffee'][zoom >= 18] {
      marker-width: @medium;
      marker-file: url('symbols/shop/coffee.svg');
    }

    [shop = 'computer'][zoom >= 18] {
      marker-width: @medium;
      marker-file: url('symbols/shop/computer.svg');
    }

    [shop = 'convenience'][zoom >= 18] {
      marker-file: url('symbols/shop/convenience.svg');
    }

    [shop = 'chocolate'][zoom >= 18],
    [shop = 'confectionery'][zoom >= 18],
    [shop = 'pastry'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/confectionery.svg');
    }

    [shop = 'copyshop'][zoom >= 18] {
      marker-width: @medium;
      marker-file: url('symbols/shop/copyshop.svg');
    }

    [shop = 'cosmetics'],
    [shop = 'perfumery'] {
      [zoom >= 18] {
        marker-width: @small;
        marker-file: url('symbols/shop/perfumery.svg');
      }
    }

    [shop = 'deli'] {
      [zoom >= 18] {
        marker-file: url('symbols/shop/deli.svg');
      }
    }

    [shop = 'department_store'][zoom >= 16] {
      marker-file: url('symbols/shop/department_store.svg');
    }

    [shop = 'doityourself'],
    [shop = 'hardware'] {
      [zoom >= 18] {
        marker-width: @medium;
        marker-file: url('symbols/shop/diy.svg');
      }
    }

    [shop = 'dry_cleaning'],
    [shop = 'laundry'] {
      [zoom >= 18] {
        marker-file: url('symbols/shop/laundry.svg');
        marker-width: @medium;
      }
    }

    [shop = 'fabric'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/fabric.svg');
    }

    [shop = 'fishmonger'],
    [shop = 'seafood'] {
      [zoom >= 18] {
        marker-width: @medium;
        marker-file: url('symbols/shop/seafood.svg');
      }
    }

    [shop = 'florist'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/florist.svg');
    }

    [shop = 'garden_centre'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/garden_centre.svg');
    }

    [shop = 'greengrocer'],
    [shop = 'farm'] {
      [zoom >= 18] {
        marker-width: @medium;
        marker-file: url('symbols/shop/greengrocer.svg');
      }
    }

    [shop = 'hairdresser'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/hairdresser.svg');
    }

    [shop = 'hifi'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/hifi.svg');
    }

    [shop = 'houseware'][zoom >= 18] {
      marker-width: @medium;
      marker-file: url('symbols/shop/houseware.svg');
    }

    [shop = 'car'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/car.svg');
    }

    [shop = 'car_parts'][zoom >= 18] {
      marker-width: @medium;
      marker-file: url('symbols/shop/car_parts.svg');
    }

    [shop = 'car_repair'][zoom >= @useful] {
      marker-width: @medium;
      marker-file: url('symbols/shop/car_repair.svg');
      marker-fill: @amenity-brown;
    }

    [shop = 'dairy'][zoom >= 18] {
      marker-width: @medium;
      marker-file: url('symbols/shop/dairy.svg');
    }

    [shop = 'bicycle'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/bicycle.svg');
    }

    [shop = 'pet'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/pet.svg');
    }

    [shop = 'photo'],
    [shop = 'photo_studio'],
    [shop = 'photography'] {
      [zoom >= 18] {
        marker-width: @medium;
        marker-file: url('symbols/shop/photo.svg');
      }
    }

    [shop = 'paint'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/paint.svg');
    }

    [shop = 'shoes'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/shoes.svg');
    }

    [shop = 'gift'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/gift.svg');
    }

    [shop = 'electronics'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/electronics.svg');
    }

    [shop = 'alcohol'],
    [shop = 'wine'] {
      [zoom >= 18] {
        marker-width: @medium;
        marker-file: url('symbols/shop/alcohol.svg');
      }
    }

    [shop = 'optician'][zoom >= 18] {
      marker-file: url('symbols/shop/optician.svg');
    }

    [shop = 'outdoor'][zoom >= 18] {
      marker-width: @medium;
      marker-file: url('symbols/shop/outdoor.svg');
    }

    [shop = 'furniture'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/furniture.svg');
    }

    [shop = 'interior_decoration'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/interior_decoration.svg');
    }

    [shop = 'massage'][zoom >= 18] {
      marker-file: url('symbols/shop/massage.svg');
      marker-width: @small;
      marker-fill: @leisure-green;
    }

    [shop = 'medical_supply'][zoom >= 18]{
      marker-width: @small;
      marker-file: url('symbols/shop/medical_supply.svg');
    }

    [shop = 'mobile_phone'][zoom >= 18] {
      marker-width: @medium;
      marker-file: url('symbols/shop/mobile_phone.svg');
    }

    [shop = 'motorcycle'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/motorcycle.svg');
    }

    [shop = 'music'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/music.svg');
    }

    [shop = 'musical_instrument'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/musical_instrument.svg');
    }

    [shop = 'kiosk'],
    [shop = 'newsagent'] {
      [zoom >= 18] {
        marker-width: @small;
        marker-file: url('symbols/shop/newsagent.svg');
      }
    }

    [shop = 'jewelry'],
    [shop = 'jewellery'] {
      [zoom >= 18] {
        marker-width: @small;
        marker-file: url('symbols/shop/jewelry.svg');
      }
    }

    [shop = 'toys'][zoom >= 18] {
      marker-width: @medium;
      marker-file: url('symbols/shop/toys.svg');
    }

    [shop = 'travel_agency'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/travel_agency.svg');
    }

    [shop = 'second_hand'][zoom >= 18] {
      marker-width: @medium;
      marker-file: url('symbols/shop/second_hand.svg');
    }

    [shop = 'sports'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/sports.svg');
    }

    [shop = 'stationery'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/stationery.svg');
    }

    [shop = 'tobacco'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/tobacco.svg');
    }

    [shop = 'tea'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/tea.svg');
    }

    [shop = 'ticket'][zoom >= 18] {
      marker-width: @medium;
      marker-file: url('symbols/shop/ticket.svg');
    }

    [shop = 'trade'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/trade.svg');
    }

    [shop = 'wholesale'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/trade.svg');
    }

    [shop = 'tyres'][zoom >= 18] {
      marker-width: @medium;
      marker-file: url('symbols/shop/tyres.svg');
    }

    [shop = 'variety_store'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/variety_store.svg');
    }

    [shop = 'video'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/video.svg');
    }

    [shop = 'video_games'][zoom >= 18] {
      marker-width: @small;
      marker-file: url('symbols/shop/video_games.svg');
    }
  }

  /*
  [feature = 'advertising_column'][zoom >= 19]{
      marker-file: url('symbols/advertising_column.svg');
      marker-fill: @advertising-grey;
      marker-clip: false;
  }
  */

  // office points
  [feature = 'office'][zoom >= 18] {
    marker-width: 6;
    marker-line-width: 0;
    marker-clip: false;
    marker-fill: @office;
  }

  // local
  [feature = 'sport_climbing'][zoom >= @nice],
  [feature = 'leisure_sports_centre'][sport = 'climbing'][zoom >= @nice] {
    marker-placement: interior;
    marker-fill: @climbing;
    marker-width: @big;
    marker-file: url('symbols/local/climbing.svg');
    marker-clip: false;
    [zoom >= 15] {
      marker-allow-overlap: true;
    }
  }

  [feature = 'leisure_water_park'][zoom >= 17],
  [feature = 'leisure_sports_centre'][sport = 'swimming'][zoom >= 17],
  [feature = 'leisure_swimming_area'][zoom >= 17] {
    marker-file: url('symbols/leisure/water_park.svg');
    marker-width: @medium;
    marker-fill: @leisure-green;
    marker-clip: false;
  }

  [feature = 'leisure_fitness_centre'][zoom >= 17],
  [feature = 'leisure_fitness_station'][zoom >= 17] {
    marker-file: url('symbols/leisure/fitness.svg');
    marker-width: @small;
    marker-fill: @leisure-green;
    marker-clip: false;
    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [feature = 'leisure_dog_park'][zoom >= 17] {
    marker-file: url('symbols/shop/pet.svg');
    marker-width: @medium;
    marker-fill: @leisure-green;
    marker-clip: false;
  }

  [feature = 'leisure_playground'][zoom >= @emergency] {
    marker-file: url('symbols/leisure/playground.svg');
    marker-width: @big;
    marker-fill: @leisure-green;
    marker-clip: false;
    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [feature = 'leisure_miniature_golf'][zoom >= 17] {
    marker-file: url('symbols/leisure/miniature_golf.svg');
    marker-width: @small;
    marker-fill: @leisure-green;
    marker-clip: false;
  }

  [feature = 'leisure_golf_course'][zoom >= 15] {
    marker-file: url('symbols/leisure/golf.svg');
    marker-width: @small;
    marker-fill: @leisure-green;
    marker-clip: false;
  }

  [feature = 'tourism_picnic_site'][zoom >= 16] {
    marker-file: url('symbols/tourism/picnic.svg');
    marker-width: @medium;
    marker-fill: @leisure-green;
    marker-clip: false;
    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [feature = 'leisure_picnic_table'][zoom >= 17] {
    marker-file: url('symbols/tourism/picnic.svg');
    marker-fill: @man-made-icon;
    marker-clip: false;
    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [feature = 'leisure_firepit'][zoom >= 17] {
    marker-file: url('symbols/leisure/firepit.svg');
    marker-fill: @amenity-brown;
    marker-clip: false;
    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [feature = 'leisure_sauna'][zoom >= 17] {
     marker-file: url('symbols/leisure/sauna.svg');
     marker-width: @small;
     marker-fill: @leisure-green;
     marker-clip: false;
   }

  [feature = 'leisure_beach_resort'][zoom >= 16] {
     marker-file: url('symbols/leisure/beach_resort.svg');
     marker-width: @small;
     marker-fill: @leisure-green;
     marker-clip: false;
   }

  [feature = 'leisure_bowling_alley'][zoom >= 17] {
     marker-file: url('symbols/leisure/bowling_alley.svg');
     marker-width: @small;
     marker-fill: @leisure-green;
     marker-clip: false;
   }

  // food courts with free seating
  // was 19, but 18 is my limit
  [feature = 'leisure_outdoor_seating'][zoom >= 18] {
     marker-file: url('symbols/leisure/outdoor_seating.svg');
     marker-fill: @leisure-green;
     marker-clip: false;
   }

  /*
  [feature = 'leisure_bird_hide'][zoom >= 17] {
     marker-file: url('symbols/leisure/bird_hide.svg');
     marker-fill: @leisure-green;
     marker-clip: false;
   }
  */

  [feature = 'leisure_amusement_arcade'][zoom >= 17] {
    marker-width: @tiny;
    marker-line-width: 0;
    [zoom >= 18] {
      marker-file: url('symbols/leisure/amusement_arcade.svg');
      marker-width: @small;
    }
    marker-fill: @leisure-green;
    marker-clip: false;
  }

  [feature = 'leisure_fishing'][zoom >= 17] {
     marker-file: url('symbols/leisure/fishing.svg');
     marker-width: @small;
     marker-fill: @leisure-green;
     marker-clip: false;
  }

  // Slipway tagging on points - slipway on lines is defined later
  [feature = 'leisure_slipway'][zoom >= 17] {
    marker-file: url('symbols/leisure/slipway.svg');
    marker-width: @small;
    // was @transportation-icon;
    marker-fill: @water-amenity;
    marker-clip: false;
  }

  [feature = 'amenity_boat_rental'][zoom >= 17] {
    marker-file: url('symbols/amenity/boat_rental.svg');
    marker-width: @small;
    // was @transportation-icon;
    marker-fill: @water-amenity;
    marker-clip: false;
  }

  [feature = 'aeroway_helipad'][zoom >= 16] {
    marker-file: url('symbols/helipad.16.svg');
    marker-width: @small;
    marker-clip: false;
    marker-fill: @airtransport;
  }

  [feature = 'aeroway_aerodrome']['access' != 'private']['icao' != null]['iata' != null][zoom >= 10][zoom < 17],
  [feature = 'aeroway_aerodrome']['access' = 'private'][zoom >= 12][zoom < 18],
  [feature = 'aeroway_aerodrome']['icao' = null][zoom >= 12][zoom < 18],
  [feature = 'aeroway_aerodrome']['iata' = null][zoom >= 12][zoom < 18] {
    [way_pixels <= 192000],
    [way_pixels = null] {
      marker-file: url('symbols/aerodrome.12.svg');
      marker-width: @medium;
      marker-clip: false;
      marker-fill: @airtransport;
    }
  }

  [feature = 'amenity_ferry_terminal'][zoom >= 15] {
    marker-file: url('symbols/amenity/ferry.svg');
    marker-clip: false;
    marker-fill: @airtransport;
  }

  [feature = 'man_made_lighthouse'][zoom >= 15] {
    marker-file: url('symbols/man_made/lighthouse.svg');
    marker-clip: false;
    marker-fill: @water-amenity;
  }

  [feature = 'natural_peak'][zoom >= 11] {
    marker-file: url('symbols/natural/peak.svg');
    marker-fill: @landform-color;
    marker-clip: false;
  }

  [feature = 'natural_volcano'][zoom >= 11] {
    marker-file: url('symbols/natural/peak.svg');
    marker-fill: #d40000;
    marker-clip: false;
  }

  [feature = 'natural_saddle'][zoom >= 15] {
    marker-file: url('symbols/natural/saddle.svg');
    marker-fill: @landform-color;
    marker-clip: false;
  }

  /* moved
  [feature = 'natural_spring'][zoom >= 14] {
    marker-file: url('symbols/spring.svg');
    marker-clip: false;
  }
  */

  // was: 15
  [feature = 'natural_cave_entrance'][zoom >= @nice] {
    marker-file: url('symbols/natural/cave.svg');
    marker-fill: @landform-color;
    marker-clip: false;
  }

  [feature = 'waterway_waterfall'] {
    [zoom >= @nice][height > 20],
    [zoom >= @nice][height > 10],
    [zoom >= 15][name != null],
    [zoom >= 16] {
      marker-file: url('symbols/waterfall.svg');
      marker-fill: @water-amenity;
      marker-width: @big;
      marker-clip: false;
    }
  }

  [feature = 'natural_spring'][zoom >= 14] {
    marker-fill: @water-color;
    marker-line-width: 0;
    marker-allow-overlap: true;
    marker-width: @small;
    [zoom >= 17] {
      marker-width: @medium;
    }
    ::dot {
      marker-fill: @water-amenity;
      marker-line-width: 0;
      marker-allow-overlap: true;
      marker-width: @tiny;
      [zoom >= 17] {
        marker-width: @small;
      }
    }
  }

  [feature = 'military_bunker'][zoom >= @nice] {
    marker-file: url('symbols/bunker.svg');
    marker-fill: @man-made-icon;
    marker-clip: false;
  }

  [feature = 'power_generator']['generator:source' = 'wind'] {
    [zoom >= 15][location != 'rooftop'][location != 'roof'],
    [zoom >= 15][location = null],
    [zoom >= 19] {
      marker-file: url('symbols/generator_wind.svg');
      marker-width: @small;
      marker-fill: @man-made-icon;
      marker-clip: false;
    }
  }

  [feature = 'man_made_windmill'][zoom >= 16] {
    marker-file: url('symbols/man_made/windmill.svg');
    marker-fill: @man-made-icon;
    marker-clip: false;
    [ruins = 'yes'] {
      marker-fill: @ruin;
    }
  }

  /*
  [feature = 'amenity_hunting_stand'][zoom >= 16] {
    marker-file: url('symbols/amenity/hunting_stand.svg');
    marker-width: @small;
    marker-fill: @man-made-icon;
    marker-clip: false;
  }
  */

  // waste_disposal tagging on ways - tagging on nodes is defined later
  // was 19, but 18 is my limit currently
  [feature = 'amenity_waste_disposal'][zoom >= 18] {
    [access = null],
    [access = 'permissive'],
    [access = 'yes'] {
      marker-file: url('symbols/amenity/waste_disposal.svg');
      marker-fill: @man-made-icon;
    }
  }

  [feature = 'amenity_parking'],
  [feature = 'amenity_bicycle_parking'],
  [feature = 'amenity_motorcycle_parking'],
  [feature = 'amenity_parking_entrance'] {
    [zoom >= 14][way_pixels > 750],
    [zoom >= 17][feature = 'amenity_parking'],
    [zoom >= 18] {
      marker-width: @medium;
      [feature = 'amenity_parking'] {
        marker-file: url('symbols/amenity/parking.svg');
        marker-width: @huge;
      }
      [feature = 'amenity_bicycle_parking'] { marker-file: url('symbols/amenity/bicycle_parking.svg'); }
      [feature = 'amenity_motorcycle_parking'] { marker-file: url('symbols/amenity/motorcycle_parking.svg'); }
      [feature = 'amenity_parking_entrance']["parking"='underground'] {
        marker-file: url('symbols/amenity/parking_entrance_underground.svg');
        // added
        marker-width: @huge;
      }
      [feature = 'amenity_parking_entrance']["parking"='multi-storey'] {
        marker-file: url('symbols/amenity/parking_entrance_multistorey.svg');
        // added
        marker-width: @huge;
      }
      marker-clip: false;
      marker-fill: @transportation-icon;
      [access != ''][access != 'permissive'][access != 'yes'] { marker-opacity: 0.33; }
    }
  }
}

#amenity-low-priority {
  [feature = 'man_made_cross'][zoom >= 16],
  [feature = 'historic_wayside_cross'][zoom >= 16] {
    marker-file: url('symbols/man_made/cross.svg');
    marker-width: @small;
    marker-fill: @religious-icon;
    marker-clip: false;
  }

  [feature = 'historic_wayside_shrine'][zoom >= 17] {
    marker-file: url('symbols/historic/shrine.svg');
    marker-width: @small;
    marker-fill: @man-made-icon;
    marker-clip: false;
  }

  [feature = 'railway_level_crossing'][zoom >= 14]::railway,
  [feature = 'railway_crossing'][zoom >= 15]::railway{
    marker-file: url('symbols/level_crossing.svg');
    [zoom >= 16] {
      marker-file: url('symbols/level_crossing2.svg');
    }
  }

  [feature = 'highway_mini_roundabout'][zoom >= 17]::highway {
    marker-file: url('symbols/highway/mini_roundabout.svg');
    marker-clip: false;
  }

  [feature = 'barrier_gate']::barrier {
    [zoom >= 17] {
      marker-file: url('symbols/barrier/gate.svg');
      marker-clip: false;
    }
  }

  [feature = 'barrier_lift_gate'][zoom >= 17]::barrier,
  [feature = 'barrier_swing_gate'][zoom >= 17]::barrier {
    marker-file: url('symbols/barrier/lift_gate.svg');
    marker-fill: @barrier-icon;
    marker-clip: false;
  }

  [feature = 'barrier_cattle_grid'][zoom >= 17]::barrier {
    marker-file: url('symbols/barrier/cattle_grid.svg');
    marker-fill: @barrier-icon;
    marker-clip: false;
  }

  [feature = 'barrier_stile'][zoom >= 17]::barrier {
    marker-file: url('symbols/barrier/stile.svg');
    marker-fill: @barrier-icon;
    marker-clip: false;
  }

  [feature = 'barrier_motorcycle_barrier'][zoom >= 17]::barrier {
    marker-file: url('symbols/barrier/motorcycle_barrier.svg');
    marker-fill: @barrier-icon;
    marker-clip: false;
  }

  [feature = 'barrier_cycle_barrier'][zoom >= 17]::barrier {
    marker-file: url('symbols/barrier/cycle_barrier.svg');
    marker-fill: @barrier-icon;
    marker-clip: false;
  }

  [feature = 'barrier_full-height_turnstile'][zoom >= 17]::barrier {
    marker-file: url('symbols/barrier/full-height_turnstile.svg');
    marker-fill: @barrier-icon;
    marker-clip: false;
  }

  [feature = 'barrier_kissing_gate'][zoom >= 17]::barrier {
    marker-file: url('symbols/barrier/kissing_gate.svg');
    marker-fill: @barrier-icon;
    marker-clip: false;
  }

  [feature = 'barrier_bollard'],
  [feature = 'barrier_block'],
  [feature = 'barrier_log'],
  [feature = 'barrier_turnstile'] {
    [zoom >= 17] {
      marker-width: 3;
      marker-line-width: 0;
      marker-fill: #7d7c7c;

      [zoom >= 18] {
        marker-width: 4;
      }
    }
  }

  // was 19, but 18 is my limit
  [feature = 'amenity_bench'][zoom >= 18]::amenity {
    marker-file: url('symbols/amenity/bench.svg');
    marker-fill: @man-made-icon;
    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  // was 19, but 18 is my limit
  [feature = 'amenity_waste_basket'][zoom >= 18]::amenity {
    marker-file: url('symbols/amenity/waste_basket.svg');
    marker-fill: @man-made-icon;
    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  // waste_disposal tagging on nodes - tagging on ways is defined earlier
  // was 19, but 18 is my limit
  [feature = 'amenity_waste_disposal'][zoom >= 18]::amenity {
    [access = null],
    [access = 'permissive'],
    [access = 'yes'] {
      marker-file: url('symbols/amenity/waste_disposal.svg');
      marker-fill: @man-made-icon;
    }
  }
}

/* Note that these layers are also used in water.mss */
#text-poly-low-zoom[zoom < 10],
#text-point[zoom >= 10] {
  [feature = 'place_island'][zoom >= 4][way_pixels > 3000],
  [feature = 'place_island'][zoom >= 16],
  [feature = 'place_islet'][zoom >= 11][way_pixels > 3000],
  [feature = 'place_islet'][zoom >= 17] {
    text-name: "[name]";
    text-fill: #000;
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    [way_pixels > 12000] {
      text-size: @landcover-font-size-big;
      text-wrap-width: @landcover-wrap-width-size-big;
      text-line-spacing: @landcover-line-spacing-size-big;
    }
    [way_pixels > 48000] {
      text-size: @landcover-font-size-bigger;
      text-wrap-width: @landcover-wrap-width-size-bigger;
      text-line-spacing: @landcover-line-spacing-size-bigger;
    }
    text-face-name: @oblique-fonts;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  [feature = 'place_locality'][zoom >= 16] {
    text-name: "[name]";
    text-size: 10;
    text-fill: @placenames;
    text-face-name: @book-fonts;
    text-halo-fill: @standard-halo-fill;
    text-halo-radius: @standard-halo-radius * 1.5;
    text-wrap-width: 45; // 4.5 em
    text-line-spacing: -0.8; // -0.08 em
    text-margin: 7.0; // 0.7 em
    [zoom >= 17] {
      text-size: 12;
      text-wrap-width: 60; // 5.0 em
      text-line-spacing: -0.60; // -0.05 em
      text-margin: 8.4; // 0.7 em
      text-fill: @placenames-light;
      text-halo-fill: white;
    }
  }

  [feature = 'place_square'][zoom >= 17] {
    text-name: "[name]";
    text-size: 11;
    text-face-name: @book-fonts;
    text-halo-fill: @standard-halo-fill;
    text-halo-radius: @standard-halo-radius * 1.5;
    text-wrap-width: 45; // 4.5 em
    text-line-spacing: -0.8; // -0.08 em
    text-margin: 7.0; // 0.7 em
  }

  [feature = 'amenity_pub'][zoom >= 18],
  [feature = 'amenity_restaurant'][zoom >= 18],
  [feature = 'amenity_food_court'][zoom >= 17],
  [feature = 'amenity_cafe'][zoom >= 18],
  [feature = 'amenity_fast_food'][zoom >= 18],
  [feature = 'amenity_biergarten'][zoom >= 18],
  [feature = 'amenity_bar'][zoom >= 18],
  [feature = 'amenity_ice_cream'][zoom >= 18] {
    text-name: "[name]";
    text-fill: @gastronomy-text;
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-dy: 11;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    [feature = 'amenity_bar'] {
      text-dy: 13;
    }
  }

  [feature = 'amenity_library'],
  [feature = 'tourism_museum'],
  [feature = 'amenity_theatre'],
  [feature = 'amenity_cinema'],
  [feature = 'amenity_arts_centre'],
  [feature = 'amenity_community_centre'],
  [feature = 'historic_archaeological_site'],
  [feature = 'amenity_nightclub'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: @culture;
      text-dy: 11;
      [feature = 'amenity_community_centre'] { text-dy: 10; }
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      [feature = 'amenity_nightclub']{
        text-dy: 12;
      }
    }
  }

  [feature = 'amenity_public_bath'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @amenity-brown;
    text-dy: 11;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  /*
  [feature = 'leisure_sauna'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @leisure-green;
    text-dy: 11;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }
  */

  [feature = 'amenity_car_rental'][zoom >= 17],
  [feature = 'amenity_bicycle_rental'][zoom >= 17],
  [feature = 'amenity_boat_rental'][zoom >= 17],
  // [feature = 'barrier_toll_booth'][zoom >= 17],
  [feature = 'leisure_slipway'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @transportation-text;
    [feature = 'amenity_car_rental']     { text-dy: 10; }
    [feature = 'amenity_bicycle_rental'] { text-dy: 10; }
    [feature = 'amenity_boat_rental']    { text-dy: 13; }
    // [feature = 'barrier_toll_booth']     { text-dy: 13; }
    [feature = 'leisure_slipway']        { text-dy: 13; }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  [feature = 'amenity_courthouse'][zoom >= 17],
  [feature = 'amenity_townhall'][zoom >= 17],
  [feature = 'amenity_police'][zoom >= 17],
  [feature = 'amenity_social_facility'][zoom >= 17],
  [feature = 'amenity_fire_station'][zoom >= 17],
  [feature = 'amenity_post_office'][zoom >= 17],
  [feature = 'amenity_prison'][zoom >= 17],
  [feature = 'amenity_embassy'][zoom >= 17],
  [feature = 'amenity_bank'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @public-service;
    text-dy: 11;
    [feature = 'amenity_courthouse'] { text-dy: 13; }
    [feature = 'amenity_townhall'] { text-dy: 13; }
    [feature = 'amenity_prison'] { text-dy: 12; }
    [feature = 'amenity_embassy'] { text-dy: 10; }
    [feature = 'amenity_bank'] { text-dy: 9; }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  [feature = 'amenity_vehicle_inspection'][zoom >= 17],
  [feature = 'amenity_car_wash'][zoom >= 17],
  [feature = 'amenity_internet_cafe'][zoom >= 17],
  [feature = 'leisure_bowling_alley'][zoom >= 17],
  [feature = 'leisure_beach_resort'][zoom >= 17],
  // [feature = 'leisure_bird_hide'][zoom >= 17],
  [feature = 'leisure_amusement_arcade'][zoom >= 17],
  [feature = 'leisure_outdoor_seating'][zoom >= 19],
  [feature = 'leisure_fishing'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @amenity-brown;
    [feature = 'leisure_outdoor_seating'],
    [feature = 'leisure_fishing'],
    [feature = 'leisure_bowling_alley'],
    // [feature = 'leisure_bird_hide'],
    [feature = 'leisure_amusement_arcade'],
    [feature = 'leisure_beach_resort'] {
      text-fill: @leisure-green;
    }
    text-dy: 10;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  // [feature = 'amenity_bbq'][zoom >= 17],
  [feature = 'amenity_bicycle_repair_station'][zoom >= 19],
  [feature = 'amenity_drinking_water'][zoom >= 17],
  [feature = 'amenity_shower'][zoom >= 18],
  [feature = 'tourism_picnic_site'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @amenity-brown;
    [feature = 'tourism_picnic_site'] {
      text-fill: @leisure-green;
    }
    text-dy: 10;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    [access != ''][access != 'permissive'][access != 'yes'] {
      text-opacity: 0.33;
      text-halo-radius: 0;
    }
  }

  [feature = 'amenity_place_of_worship'][zoom >= 16][way_pixels > 3000],
  [feature = 'amenity_place_of_worship'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: #000033;
    text-dy: 12;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  [feature = 'amenity_marketplace'][zoom >= 16][way_pixels > 3000],
  [feature = 'amenity_marketplace'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-dy: 12;
    text-fill: @shop-text;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: rgba(255, 255, 255, 0.6);
  }

  [feature = 'natural_peak'][zoom >= 13],
  [feature = 'natural_volcano'][zoom >= 13],
  [feature = 'natural_saddle'][zoom >= 15],
  [feature = 'tourism_viewpoint'][zoom >= 16] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: darken(@landform-color, 30%);
    [feature = 'natural_volcano'] { text-fill: #d40000; }
    text-dy: 7;
    [feature = 'tourism_viewpoint'] { text-dy: 11; }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  [feature = 'natural_cape'][zoom >= 14] {
    text-name: "[name]";
    text-fill: #000;
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    // TODO:
    // text-face-name: @oblique-fonts;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  // was 19, but 18 is my limit
  [feature = 'tourism_information'][zoom >= 18],
  // local
  [feature = 'tourism_information']["information"='guidepost'][zoom >= @emergency],
  [feature = 'tourism_information']["information"='office'][zoom >= 17] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: darken(black, 30%);
      [information = 'office'],["information"='guidepost'] { text-fill: @amenity-brown; }
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-dy: 11;
  }

  [feature = 'waterway_waterfall'] {
    [zoom >= 13][height > 20],
    [zoom >= 14][height > 10],
    [zoom >= 15][name != null],
    [zoom >= 16] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: @water-amenity;
      text-dy: 10;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }

  [feature = 'power_generator']['generator:source' = 'wind'][location != 'rooftop'][location != 'roof'][zoom >= 17],
  [feature = 'power_generator']['generator:source' = 'wind'][location = null][zoom >= 17],
  [feature = 'power_generator']['generator:source' = 'wind'][zoom >= 19],
  // was 17
  [feature = 'historic_city_gate'][zoom >= @nice],
  // was 15
  [feature = 'natural_cave_entrance'][zoom >= @nice],
  [feature = 'man_made_mast'][zoom >= 18],
  [feature = 'man_made_tower'][zoom >= 17],
  [feature = 'man_made_storage_tank'][zoom >= 18],
  [feature = 'man_made_silo'][zoom >= 18],
  [feature = 'man_made_communications_tower'][zoom >= 17],
  [feature = 'man_made_telescope']["telescope:type" != 'optical']["telescope:type" != null][zoom >= 16],
  [feature = 'man_made_telescope'][zoom >= 17],
  [feature = 'man_made_water_tower'][zoom >= 17],
  [feature = 'man_made_chimney'][zoom >= 17],
  [feature = 'man_made_crane'][zoom >= 17],
  [feature = 'man_made_waste_water_plant'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: darken(@man-made-icon, 20%);
    [feature = 'power_generator']['generator:source' = 'wind'],
    [feature = 'historic_city_gate'],
    [feature = 'man_made_mast'],
    [feature = 'man_made_tower'],
    [feature = 'man_made_communications_tower'],
    [feature = 'man_made_telescope'],
    [feature = 'man_made_water_tower'],
    [feature = 'man_made_storage_tank'],
    [feature = 'man_made_silo'],
    [feature = 'man_made_chimney'],
    [feature = 'man_made_crane'] {
      text-dy: 10;
    }
    [feature = 'natural_cave_entrance'] {
      text-dy: 11;
    }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  [feature = 'tourism_artwork'][zoom >= 17],
  [feature = 'historic_memorial'][memorial = null][zoom >= 17],
  [feature = 'historic_memorial'][memorial != null][memorial != 'blue_plaque'][memorial != 'bust'][memorial != 'plaque'][memorial != 'stele'][memorial != 'stone'][zoom >= 17],
  [feature = 'historic_memorial'][memorial = 'statue'][zoom >= 17],
  [feature = 'historic_memorial'][memorial = 'bust'][zoom >= 18],
  [feature = 'historic_memorial'][memorial = 'stele'][zoom >= 18],
  [feature = 'historic_memorial'][memorial = 'stone'][zoom >= 18],
  [feature = 'historic_memorial'][memorial = 'blue_plaque'][zoom >= 19],
  [feature = 'historic_memorial'][memorial = 'plaque'][zoom >= 19],
  [feature = 'man_made_obelisk'][zoom >= 17],
  [feature = 'historic_monument'][zoom >= 16],
  [feature = 'historic_fort'][zoom >= @nice],
  [feature = 'historic_castle'][zoom >= @nice],
  [feature = 'historic_manor'][zoom >= 16] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @memorials;
    text-dy: 11;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  // was 17
  [feature = 'military_bunker'][zoom >= @nice] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: darken(@man-made-icon, 20%);
    text-dy: 10;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  [feature = 'leisure_miniature_golf'][zoom >= 17],
  [feature = 'leisure_golf_course'][zoom >= 15] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @leisure-green;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-dy: 13;
  }

  [feature = 'leisure_water_park'],
  [feature = 'leisure_sports_centre'][sport = 'swimming'],
  [feature = 'leisure_swimming_area'] {
    [zoom >= 14][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: @leisure-green;
      text-dy: 11;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }

  // local
  [feature = 'sport_climbing'][zoom >= @nice],
  [feature = 'leisure_sports_centre'][sport = 'climbing'][zoom >= @nice] {
    text-name: "[name]";
    text-size: 10;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @climbing;
    text-dy: 12;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    // text-placement: interior;
    text-wrap-width: @standard-wrap-width;
  }

  [feature = 'leisure_swimming_pool'][is_building = 'no'] {
    [zoom >= 14][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: @marina-text;
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }

  [feature = 'leisure_playground'],
  [feature = 'leisure_dog_park'],
  [feature = 'leisure_fitness_centre'],
  [feature = 'leisure_fitness_station'] {
    [zoom >= 14][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-dy: 13;
      text-fill: @leisure-green;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      [access != ''][access != 'permissive'][access != 'yes'] {
        text-fill: darken(@park, 50%);
      }
    }
  }

  [feature = 'landuse_military'],
  [feature = 'natural_wood'],
  [feature = 'landuse_forest'],
  [feature = 'boundary_national_park'],
  [feature = 'leisure_nature_reserve'],
  [feature = 'boundary_aboriginal_lands'],
  [feature = 'boundary_protected_area'] {
    [zoom >= 8][way_pixels > 3000][is_building = 'no'],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      [feature = 'landuse_military'] {
        text-fill: darken(@military, 40%);
      }
      [feature = 'boundary_aboriginal_lands'] {
        text-fill: @aboriginal;
      }
      [feature = 'natural_wood'],
      [feature = 'landuse_forest'] {
        text-fill: @forest-text;
      }
      [feature = 'boundary_national_park'],
      [feature = 'leisure_nature_reserve'],
      [feature = 'boundary_protected_area'] {
        text-fill: @protected-area;
      }
    }
  }

  [feature = 'military_danger_area'][is_building = 'no'] {
    [zoom >= 9][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: darken(@military, 20%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }

  /*
  [feature = 'landuse_garages'][is_building = 'no'] {
    [zoom >= 13][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: darken(@garages, 50%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }
  */

  [feature = 'natural_wetland'],
  [feature = 'natural_mud'],
  [feature = 'leisure_park'],
  [feature = 'leisure_recreation_ground'],
  [feature = 'landuse_recreation_ground'],
  [feature = 'landuse_village_green'],
  [feature = 'leisure_garden'],
  [feature = 'landuse_quarry'],
  [feature = 'landuse_vineyard'],
  [feature = 'landuse_orchard'],
  [feature = 'landuse_plant_nursery'],
  [feature = 'landuse_cemetery'],
  [feature = 'amenity_grave_yard'],
  [feature = 'landuse_residential'],
  [feature = 'landuse_meadow'],
  [feature = 'natural_grassland'],
  [feature = 'landuse_grass'],
  [feature = 'landuse_allotments'],
  [feature = 'landuse_farmyard'],
  [feature = 'landuse_farmland'],
  [feature = 'landuse_greenhouse_horticulture'],
  [feature = 'shop'][shop = 'mall'][location != 'underground'],
  [feature = 'landuse_retail'],
  [feature = 'landuse_industrial'],
  [feature = 'landuse_railway'],
  [feature = 'man_made_works'],
  [feature = 'man_made_water_works'],
  [feature = 'man_made_wastewater_plant'],
  [feature = 'landuse_commercial'],
  [feature = 'landuse_brownfield'],
  [feature = 'landuse_landfill'],
  [feature = 'landuse_construction'],
  [feature = 'landuse_salt_pond'],
  [feature = 'tourism_theme_park'],
  [feature = 'tourism_zoo'],
  [feature = 'amenity_kindergarten'],
  [feature = 'amenity_school'],
  [feature = 'amenity_college'],
  [feature = 'amenity_university'],
  [feature = 'landuse_religious'],
  [feature = 'natural_heath'],
  [feature = 'natural_scrub'],
  [feature = 'natural_beach'],
  [feature = 'natural_shoal'],
  [feature = 'natural_reef'],
  [feature = 'leisure_fitness_centre'],
  [feature = 'leisure_fitness_station'],
  [feature = 'leisure_sports_centre'],
  [feature = 'leisure_stadium'],
  [feature = 'leisure_track'],
  [feature = 'leisure_dog_park'],
  [feature = 'leisure_ice_rink'],
  [feature = 'leisure_pitch'] {
    [zoom >= 10][way_pixels > 3000][is_building = 'no'],
    [zoom >= 17][is_building = 'no'],
    [zoom >= 10][way_pixels > 3000][shop = 'mall'],
    [zoom >= 17][shop = 'mall'] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      [feature = 'natural_reef'],
      [feature = 'natural_wetland'],
      [feature = 'natural_mud'],
      [feature = 'landuse_salt_pond'] {
        text-fill: @wetland-text;
      }
      [feature = 'leisure_park'],
      [feature = 'leisure_recreation_ground'],
      [feature = 'landuse_recreation_ground'],
      [feature = 'landuse_village_green'],
      [feature = 'leisure_garden'] {
        text-fill: @leisure-green;
      }
      [feature = 'landuse_quarry'] {
        text-fill: darken(@quarry, 60%);
      }
      [feature = 'landuse_vineyard'],
      [feature = 'landuse_orchard'],
      [feature = 'landuse_plant_nursery'] {
        text-fill: darken(@orchard, 50%);
      }
      [feature = 'landuse_cemetery'],
      [feature = 'amenity_grave_yard'] {
        text-fill: darken(@cemetery, 50%);
        text-halo-radius: @standard-halo-radius * 1.5; /* extra halo needed to overpower the cemetery polygon pattern */
      }
      [feature = 'landuse_residential'] {
        text-fill: darken(@residential, 50%);
      }
      [feature = 'landuse_meadow'],
      [feature = 'natural_grassland'],
      [feature = 'landuse_grass'] {
        text-fill: darken(@grass, 50%);
      }
      [feature = 'landuse_allotments'] {
        text-fill: darken(@allotments, 50%);
      }
      [feature = 'landuse_farmyard'] {
        text-fill: darken(@farmyard, 50%);
      }
      [feature = 'landuse_farm'],
      [feature = 'landuse_farmland'],
      [feature = 'landuse_greenhouse_horticulture'] {
        text-fill: darken(@farmland, 50%);
      }
      [feature = 'shop'][shop = 'mall'],
      [feature = 'landuse_retail'] {
        text-fill: darken(@retail, 50%);
      }
      [feature = 'landuse_industrial'],
      [feature = 'landuse_railway'],
      [feature = 'man_made_wastewater_plant'],
      [feature = 'man_made_water_works'],
      [feature = 'man_made_works'] {
        text-fill: darken(@industrial, 60%);
      }
      [feature = 'landuse_commercial'] {
        text-fill: darken(@commercial, 60%);
      }
      [feature = 'landuse_brownfield'],
      [feature = 'landuse_landfill'],
      [feature = 'landuse_construction'] {
        text-fill: darken(@construction, 50%);
      }
      [feature = 'tourism_caravan_site'] {
        // was: darken(@campsite, 50%);
        text-fill: darken(@leisure-green, 50%);
        text-dy: 15;
      }
      [feature = 'tourism_theme_park'],
      [feature = 'tourism_zoo'] {
        text-fill: @tourism;
        text-face-name: @bold-fonts; /*rendered bold to improve visibility since theme parks tend to have crowded backgrounds*/
      }
      [feature = 'amenity_kindergarten'],
      [feature = 'amenity_school'],
      [feature = 'amenity_college'],
      [feature = 'amenity_university'] {
        text-fill: darken(@societal_amenities, 80%);
      }
      [feature = 'landuse_religious'] {
        text-fill: darken(@place_of_worship, 50%);
      }
      [feature = 'natural_heath'] {
        text-fill: darken(@heath, 40%);
      }
      [feature = 'natural_scrub'] {
        text-fill: darken(@scrub, 60%);
      }
      [feature = 'natural_beach'],
      [feature = 'natural_shoal'] {
        text-fill: darken(@beach, 60%);
      }
      [feature = 'leisure_sports_centre'],
      [feature = 'leisure_stadium'] {
        text-fill: darken(@stadium, 70%);
      }
      [feature = 'leisure_fitness_centre'],
      [feature = 'leisure_fitness_station'] {
        text-fill: @leisure-green;
        [access != ''][access != 'permissive'][access != 'yes'] {
          text-opacity: 0.33;
          text-halo-radius: 0;
        }
      }
      [feature = 'leisure_dog_park'] {
        text-fill: @leisure-green;
        text-halo-radius: @standard-halo-radius * 1.5; /* Extra halo needed to stand out from paw pattern. */
        text-halo-fill: @standard-halo-fill;
      }
      [feature = 'leisure_track'] {
        text-fill: darken(@track, 40%);
      }
      [feature = 'leisure_ice_rink'],
      [feature = 'leisure_pitch'] {
        text-fill: darken(@pitch, 40%);
      }
    }
  }

  // this is for points, areas are in water
  // was 16
  [feature = 'natural_spring'][zoom >= 14] {
    text-name: "[name]";
    text-size: 13;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @water-text;
    text-face-name: @oblique-fonts;
    text-halo-radius: @standard-halo-radius;
    // was @standard-halo-fill
    text-halo-fill: @water-color;
    text-dy: 6;
  }

  // was 19
  [feature = 'amenity_atm'][zoom >= @useful],
  // was 19, but 18 is my current limit
  [feature = 'amenity_vending_machine'][vending = 'public_transport_tickets'][zoom >= 18] {
    text-name: "[operator]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-dy: 10;
    text-fill: @amenity-brown;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-face-name: @standard-font;
  }

  [feature = 'amenity_bureau_de_change'][zoom >= 17],
  [feature = 'amenity_public_bookcase'][zoom >= 19],
  [feature = 'tourism_gallery'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-dy: 10;
    text-fill: @amenity-brown;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-face-name: @standard-font;
  }

  [feature = 'tourism_alpine_hut'][zoom >= 14],
  [feature = 'amenity_shelter'][zoom >= 17],
  // [feature = 'leisure_picnic_table'][zoom >= 17],
  [feature = 'tourism_hotel'][zoom >= 17],
  [feature = 'tourism_motel'][zoom >= 17],
  [feature = 'tourism_hostel'][zoom >= 17],
  [feature = 'tourism_chalet'][zoom >= 17],
  [feature = 'tourism_guest_house'][zoom >= 17],
  [feature = 'tourism_apartment'][zoom >= 18],
  [feature = 'tourism_wilderness_hut'][zoom >= 14],
  [feature = 'tourism_camp_site'][zoom >= 17],
  [feature = 'tourism_caravan_site'][zoom >= 17], {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @accommodation-text;
    text-dy: 11;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    [feature = 'tourism_motel'] {
      text-dy: 13;
    }
    [feature = 'tourism_camp_site'] {
      text-dy: 15;
      text-fill: @leisure-green;
    }
    [feature = 'tourism_caravan_site'] {
      text-fill: @leisure-green;
      text-dy: 15;
    }
    [feature = 'leisure_picnic_table'][zoom >= 17],
    [feature = 'amenity_shelter'] {
      text-fill: @man-made-icon;
    }
    [feature = 'tourism_alpine_hut'],
    [feature = 'tourism_wilderness_hut'],
    [feature = 'amenity_shelter'] {
      [access != ''][access != 'permissive'][access != 'yes'] {
        text-opacity: 0.33;
        text-halo-radius: 0;
      }
    }
  }

  [feature = 'amenity_taxi'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @transportation-text;
    text-dy: 11;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  [feature = 'highway_bus_stop'],
  [feature = 'amenity_charging_station'],
  [feature = 'amenity_fuel'],
  [feature = 'amenity_bus_station'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: @transportation-text;
      text-dy: 11;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      [feature = 'highway_bus_stop'] {
        text-dy: 9;
      }
      [access != ''][access != 'permissive'][access != 'yes'] {
        text-opacity: 0.33;
        text-halo-radius: 0;
      }
    }
  }

  [feature = 'leisure_marina'][zoom >= 15] {
    [zoom >= 10][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: @marina-text;
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }

  [feature = 'amenity_fountain'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @marina-text;
    text-dy: 4;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    [zoom >= 18] {
      text-dy: 10;
    }
  }

  [feature = 'man_made_lighthouse'][zoom >= 15],
  [feature = 'man_made_windmill'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: darken(@man-made-icon, 20%);
    text-dy: 10;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  [feature = 'amenity_recycling'][recycling_type = 'centre'][zoom >= 17] {
  // [feature = 'amenity_recycling'][zoom >= 19] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @amenity-brown;
    text-dy: 10;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  [feature = 'amenity_hospital'][zoom >= 16],
  [feature = 'healthcare_hospital'][zoom >= 16] {
    text-name: "[name]";
    text-fill: @health-color;
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-dy: 10;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }


  [feature = 'amenity_clinic'],
  [feature = 'amenity_pharmacy'],
  [feature = 'amenity_doctors'],
  [feature = 'amenity_dentist'],
  [feature = 'amenity_veterinary'],
  [feature = 'healthcare_alternative'],
  [feature = 'healthcare_audiologist'],
  [feature = 'healthcare_birthing_center'],
  [feature = 'healthcare_blood_bank'],
  [feature = 'healthcare_blood_donation'],
  [feature = 'healthcare_centre'],
  [feature = 'healthcare_clinic'],
  [feature = 'healthcare_dentist'],
  [feature = 'healthcare_dialysis'],
  [feature = 'healthcare_doctor'],
  [feature = 'healthcare_laboratory'],
  [feature = 'healthcare_midwife'],
  [feature = 'healthcare_occupational_therapist'],
  [feature = 'healthcare_optometrist'],
  [feature = 'healthcare_physiotherapist'],
  [feature = 'healthcare_podiatrist'],
  [feature = 'healthcare_psychotherapist'],
  [feature = 'healthcare_rehabilitation'],
  [feature = 'healthcare_speech_therapist'],
  [feature = 'healthcare_yes'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-dy: 12;
      text-fill: @health-color;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }

  [feature = 'amenity_nursing_home'],
  [feature = 'amenity_childcare'] {
    [zoom >= 18] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-dy: 8;
      text-fill: darken(@societal_amenities, 80%);
    }
  }

  [feature = 'amenity_driving_school'] {
    [zoom >= 18] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-dy: 8;
      text-fill: @shop-text;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: rgba(255, 255, 255, 0.6);
    }
  }

  [feature = 'shop'][shop != 'mall'] {
    [way_pixels > 3000][zoom >= 17],
    [zoom >= 18] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-dy: 12;
      text-fill: @shop-text;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: rgba(255, 255, 255, 0.6);
      [shop = 'car_repair'] {
        text-fill: @amenity-brown;
      }
      [shop = 'massage'] {
        text-fill: @leisure-green;
      }
    }
  }

  [feature = 'office'] {
    [zoom >= 18] {
      [office = 'accountant'],
      [office = 'adoption_agency'],
      [office = 'advertising_agency'],
      [office = 'architect'],
      [office = 'association'],
      [office = 'charity'],
      [office = 'company'],
      [office = 'educational_institution'],
      [office = 'diplomatic'],
      [office = 'employment_agency'],
      [office = 'energy_supplier'],
      [office = 'estate_agent'],
      [office = 'financial'],
      [office = 'forestry'],
      [office = 'foundation'],
      [office = 'government'],
      [office = 'guide'],
      [office = 'insurance'],
      [office = 'it'],
      [office = 'lawyer'],
      [office = 'logistics'],
      [office = 'moving_company'],
      [office = 'newspaper'],
      [office = 'ngo'],
      [office = 'notary'],
      [office = 'political_party'],
      [office = 'private_investigator'],
      [office = 'property_management'],
      [office = 'quango'],
      [office = 'religion'],
      [office = 'research'],
      [office = 'surveyor'],
      [office = 'tax'],
      [office = 'tax_advisor'],
      [office = 'telecommunication'],
      [office = 'travel_agent'],
      [office = 'water_utility'] {
        text-name: "[name]";
        text-size: @standard-font-size;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-dy: 8;
        text-fill: @office;
        text-face-name: @standard-font;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: rgba(255, 255, 255, 0.6);
      }
    }

    // all other offices
    [zoom >= 19] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-dy: 8;
      text-fill: @office;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: rgba(255, 255, 255, 0.6);
    }
  }

  [feature = 'shop_supermarket'],
  [feature = 'shop_department_store'] {
    [zoom >= @useful] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-dy: 12;
      text-fill: @shop-text;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: rgba(255, 255, 255, 0.6);
    }
  }

  [feature = 'aeroway_gate'][zoom >= 17] {
    text-name: "[ref]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: black;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  [feature = 'power_plant'][is_building = 'no'][zoom >= 10],
  [feature = 'power_generator'][is_building = 'no']["generator:source" != 'wind'][zoom >= 10],
  [feature = 'power_substation'][is_building = 'no'][zoom >= 13]{
    [way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: darken(@power, 40%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }

  [feature = 'natural_scree'][zoom >= 9],
  [feature = 'natural_shingle'][zoom >= 9],
  [feature = 'natural_bare_rock'],
  [feature = 'natural_sand'] {
    [zoom >= 8][way_pixels > 3000][is_building = 'no'],
    [zoom >= 17][is_building = 'no'] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      [feature = 'natural_scree'],
      [feature = 'natural_shingle'],
      [feature = 'natural_bare_rock'] {
        text-fill: darken(@bare_ground, 50%);
      }
      [feature = 'natural_sand'] {
        text-fill: darken(@sand, 50%);
      }
    }
  }

  [feature = 'aeroway_apron'][is_building = 'no'] {
    [zoom >= 10][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: darken(@apron, 60%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }

  [feature = 'highway_services'][is_building = 'no'],
  [feature = 'highway_rest_area'][is_building = 'no'] {
    [zoom >= 10][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: darken(@rest_area, 40%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }

  [feature = 'natural_glacier'][is_building = 'no'] {
    [zoom >= 8][way_pixels > 10000],
    [zoom >= 10][way_pixels > 750],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: mix(darken(@glacier, 40%), darken(@glacier-line, 30%), 50%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }

  [feature = 'aeroway_helipad'][zoom >= 16] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @airtransport;
    text-dy: -10;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  [feature = 'aeroway_aerodrome']['access' != 'private']['icao' != null]['iata' != null][zoom >= 11][zoom < 17],
  [feature = 'aeroway_aerodrome']['access' = 'private'][zoom >= 13][zoom < 18],
  [feature = 'aeroway_aerodrome']['icao' = null][zoom >= 13][zoom < 18],
  [feature = 'aeroway_aerodrome']['iata' = null][zoom >= 13][zoom < 18] {
    [way_pixels <= 192000],
    [way_pixels = null] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: darken(@airtransport, 15%);
      text-dy: 10;
      text-face-name: @oblique-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }

  [feature = 'amenity_ferry_terminal'][zoom >= 15] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: darken(@airtransport, 15%);
    text-dy: 10;
    text-face-name: @oblique-fonts;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  /*
  [feature = 'amenity_hunting_stand'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-dy: 10;
    text-fill: darken(@man-made-icon, 20%);
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }
  */

  [feature = 'natural_tree'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: green;
    text-dy: 7;
    [zoom >= 18] { text-dy: 8; }
    [zoom >= 19] { text-dy: 11; }
    [zoom >= 20] { text-dy: 18; }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  [feature = 'amenity_casino'][zoom >= 17] {
    text-name: "[name]";
    text-fill: @amenity-brown;
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-dy: 10;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }

  [feature = 'tourism_attraction'][zoom >= 17][is_building = 'no'] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @tourism;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-face-name: @standard-font;
  }

  [feature = 'amenity_parking'],
  [feature = 'amenity_bicycle_parking'],
  [feature = 'amenity_motorcycle_parking'],
  [feature = 'amenity_parking_entrance']["parking"='underground'] {
    [zoom >= 14][way_pixels > 3000],
    [zoom >= 18] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: @transportation-text;
      text-dy: 9;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      [access != ''][access != 'permissive'][access != 'yes'] {
        text-opacity: 0.33;
        text-halo-radius: 0;
      }
      [feature = 'amenity_bicycle_parking'],
      [feature = 'amenity_motorcycle_parking'] { text-dy: 12; }
    }
  }
}

#text-low-priority {
  [feature = 'man_made_cross'][zoom >= 17],
  [feature = 'historic_wayside_cross'][zoom >= 17],
  [feature = 'historic_wayside_shrine'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: darken(@man-made-icon, 20%);
    text-dy: 6;
    [feature = 'historic_wayside_shrine'] { text-dy: 10; }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }
}

#amenity-line {
  // Ford tagging on ways
  [feature = 'highway_ford'][zoom >= 16] {
    marker-file: url('symbols/natural/saddle.svg');
    marker-fill: @water-amenity;
  }

  // Slipway tagging on ways
  [feature = 'leisure_slipway'][zoom >= 17] {
    marker-file: url('symbols/leisure/slipway.svg');
    marker-fill: @water-amenity;
  }

  [feature = 'leisure_track'] {
    [zoom >= 16] {
      [zoom >= 17] {
        bridgecasing/line-color: saturate(darken(@pitch, 30%), 20%);
        bridgecasing/line-join: round;
        bridgecasing/line-width: 1.25;
        [zoom >= 18] { bridgecasing/line-width: 2.5; }
        [zoom >= 19] { bridgecasing/line-width: 5; }
      }
      line-color: @pitch;
      line-join: round;
      line-cap: round;
      line-width: 1;
      [zoom >= 18] { line-width: 2; }
      [zoom >= 19] { line-width: 4; }
    }
  }

  [feature = 'attraction_water_slide'] {
    [zoom >= 16] {
      [zoom >= 17] {
        bridgecasing/line-color: black;
        bridgecasing/line-join: round;
        bridgecasing/line-width: 1.25;
        [zoom >= 18] { bridgecasing/line-width: 2.5; }
        [zoom >= 19] { bridgecasing/line-width: 5; }
      }
      line-color: @pitch;
      line-join: round;
      line-cap: round;
      line-width: 1;
      [zoom >= 18] { line-width: 2; }
      [zoom >= 19] { line-width: 4; }
    }
  }
}

#text-line {
  [feature = 'leisure_track'],
  [feature = 'attraction_water_slide'] {
    [zoom >= 19] {
      text-name: "[name]";
      text-size: 10;
      text-face-name: @oblique-fonts;
      text-fill: darken(@pitch, 40%);
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: line;
      text-vertical-alignment: middle;
      text-repeat-distance: @waterway-text-repeat-distance;
      text-dy: 8;
    }
  }

  // local
  [feature = 'sport_climbing'][zoom >= @nice] {
    // why is this here?
    // marker-placement: interior;
    marker-fill: @climbing;
    marker-file: url('symbols/local/climbing.svg');
    marker-width: @big;
    marker-clip: false;

    [zoom >= 15] {
      marker-allow-overlap: true;
    }

    text-name: "[name]";
    text-size: 10;
    text-face-name: @standard-font;
    text-fill: @climbing;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    // text-placement: interior;
    // text-vertical-alignment: middle;
    text-dy: 12;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
  }

  /*
  [feature = 'leisure_slipway'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @transportation-text;
    text-dy: 13;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }
  */
}

#trees [zoom >= 16] {
  ::canopy {
    opacity: 0.3;
    [natural = 'tree_row'] {
      line-color: green;
      line-cap: round;
      line-width: 2.5;
      [zoom >= 17] {
        line-width: 5;
      }
      [zoom >= 18] {
        line-width: 10;
      }
      [zoom >= 19] {
        line-width: 15;
      }
      [zoom >= 20] {
        line-width: 30;
      }
    }

    [natural = 'tree'] {
      [zoom >= 18] {
        marker-fill: green;
        marker-allow-overlap: true;
        marker-line-width: 0;
        marker-ignore-placement: true;
        marker-width: 10;
      }
      [zoom >= 19] {
        marker-width: 15;
      }
      [zoom >= 20] {
        marker-width: 30;
      }
    }
  }

  [natural = 'tree']::trunk {
    [zoom >= 18] {
      trunk/marker-fill: #b27f36;
      trunk/marker-allow-overlap: true;
      trunk/marker-line-width: 0;
      trunk/marker-width: 2;
      trunk/marker-ignore-placement: true;
    }
    [zoom >= 19] {
      trunk/marker-width: 3;
    }
    [zoom >= 20] {
      trunk/marker-width: 6;
    }
  }
}
