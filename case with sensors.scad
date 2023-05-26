// ===== PARAMETERS ===== //

/* [General Settings] */
$fn = 50;
/* [Development Board] */
// length of the development board
board_length = 51; // [0:.1:200]
// width of the development board
board_width = 28.5; // [0:.1:200]
// height of the development board (pcb + components, excluding pins)
board_height = 3; // [0:.1:10]
// length of the pins in the development board: 2.54mm * the number of pins)
board_pins_length = 38; // [0:.1:100]
// width of the pins in the development board: usually 2.54mm
board_pins_width = 2.54; // [0:.1:10]
// distance in mm between the bottom of the board and the start of the pins
board_pins_y_position = 8; // [0:.1:100]
// if the board has holes on the edges in order to hold it better
board_holes = true;
// distance of the board hole centers from the edge of the board
board_holes_edge_distance = 2; // [0:.1:50]
// diameter of the board holes
board_holes_diameter = 3; // [0:.1:10]
// if the board has usb
usb = true;
// how many millimeters the "en" and "boot" buttons are distant from the left and right edge of the development board
buttons_wall_distance_x = 6; // .1
// how many millimeters the "en" and "boot" buttons are distant from the bottom edge of the development board
buttons_wall_distance_y = 3; // .1

/* [Case] */
// width of the case walls
case_wall_width = 2; // .1
// how many millimeters the length of the case is greater than the length of the development board
case_length_tolerance = 2; // [2:0.1:10]
// how many millimeters the width of the case is greater than the witdh of the development board
case_width_tolerance = 2; // [2:0.1:10]
// roundedness of the case
case_angle_radius = 5; // .1
// roundedness of the internal face of the case
case_internal_angle_radius = 5; // .1
/* [Lid] */
lid = true;
// total height of the lid
lid_height = 11; // .1
lid_int_wall_width = 1; // .1
// length of the internal wall of the lid (the part that has to be inserted inside the bottom
lid_int_height = 5; //.1


lid_hole_width = 15; // .1
lid_hole_height = 17.5;
// the position of the lid hole starting from the bottom of the development board
lid_hole_y_position = 26; // .1

/* [Bottom] */
bottom = true;

// height of the bottom (excluded the wall part that goes inside the lid
bottom_height = 20; // .1
// how many millimeters the bottom is larger than the lid it encloses
bottom_tolerance = 0; // .1

/* [Buttons] */
button_holes_diameter = 3; // .1
buttons_number = 2;
/* [Pin Holders] */
// how many mm the pin holder diameter is smaller than the board hole diameter
pin_holder_tolerance = 1; //0.1

/* [Board Holder] */
board_holder_height = 5; // [3:.1:10]
/* [Pins Hole] */
// how many mm the pins hole is longer than the board pins
pins_hole_length_tolerance = 2; // [0:0.1:10]
// how many mm the pins hole is larger than the board pins
pins_hole_width_tolerance = 0.5; // [0:0.01:10]

/* [USB Hole] */
usb_hole_height = 7; // [0:0.1:15]
usb_hole_length = 12; // [0:0.1:20]
usb_hole_radius = 1; // [0:0.1:5]

/* [Sensors] */
sensors_distance = 2;
sensors_divider_wall_height = 5;
sensor_1 = "pir"; // [pir, ld2410, radar]
sensor_2 = "ld2410"; // [pir, ld2410, radar]
sensor_3 = "radar"; // [pir, ld2410, radar]


/* [LD 2410] */
ld2410_width = 35;
ld2410_length = 7;
ld2410_length_tolerance = 0.2; // [0:0.01:10]
ld2410_width_tolerance = 0.2; // [0:0.01:10]
ld2410 = true;
// position of the ld2410 sensor, where 0 means no sensor

/* [PIR] */
pir_width = 33;
pir_length = 24;
pir_length_tolerance = 0.2; // [0:0.1:10]
pir_width_tolerance = 0.2; // [0:0.1:10]
pir_dome_diameter = 23;
// distance between sensors
pir = true;
// position of the pir sensor, where 0 means no sensor

// if the pir sensor has holes on the left and right in order to hold it better
pir_holes = true;
// distance of the hole centers from the left and right sides of the pir sensor
pir_holes_side_distance = 1.5; // [0:.1:10]
// diameter of the pir holes
pir_holes_diameter = 2; // [0:.1:5]
// how many mm the pin holder diameter is smaller than the pir hole diameter
pir_holder_tolerance = 0.5; //0.1
// height of the pins that hold PIR sensor
pir_holder_height = 6; // [0:.1:10]

// diameter of the holes in the case for the adjustement potentiometers of the pir sensor
pir_adjustement_holes_diameter = 5; // [0:.1:10]
// height (starting from the internal ceiling of the case) of the center of the holes in the case for the adjustement potentiometers of the pir sensor
pir_adjustement_holes_height = 9.5; // [0:.1:20]
// distance between the left side of the PIR sensor and the center of the adjustement potentiometers
pir_adjustement_holes_left_distance = [15.0, 23.0];


// Variables

// the distance in mm from the bottom of the board and the start of the pins
y_position_pins_hole = board_pins_y_position - pins_hole_length_tolerance/2;
pins_hole_length = board_pins_length + pins_hole_length_tolerance;
pins_hole_width = board_pins_width + pins_hole_width_tolerance;

pin_holder_height = board_holder_height + 1.5;
pin_holder_diameter = board_holes_diameter - pin_holder_tolerance;

pir_holder_diameter = pir_holes_diameter - pir_holder_tolerance;


lid_wall_width = case_wall_width + lid_int_wall_width;

bottom_wall_width = case_wall_width - bottom_tolerance;

x_length_board = board_width + case_width_tolerance;

x_length_ld2410 = ld2410 == true ?
    ld2410_width + ld2410_width_tolerance :
    0;
    
x_length_pir = pir == true ?
    pir_width + pir_width_tolerance :
    0;
    
y_length_board = board_length + case_width_tolerance;

y_length_ld2410 = ld2410 == true ?
    ld2410_length + ld2410_length_tolerance :
    0;
    
y_length_pir = (pir == true )?
    (pir_length + pir_length_tolerance) :
    0;
    
y_length_sensors_distance = (pir && ld2410) ? sensors_distance : 0;

// internal length of the lid in the x direction
x_length_lid_int = max(x_length_board,x_length_ld2410,x_length_pir);
x_length_case = x_length_lid_int + 2*lid_wall_width;

y_length_board_case = y_length_board + 2*lid_wall_width;
y_length_case = y_length_board + y_length_ld2410 + y_length_pir + y_length_sensors_distance + 2*lid_wall_width;


x_position_ld2410 = (x_length_case - x_length_ld2410)/2;
y_position_ld2410 = y_length_board_case - lid_wall_width;

x_position_pir = (x_length_case - x_length_pir)/2;
y_position_pir = y_position_ld2410 + y_length_ld2410 + y_length_sensors_distance;

x_position_left_pir_hole = x_position_pir + pir_holes_side_distance;
x_position_right_pir_hole = x_position_pir + x_length_pir - pir_holes_side_distance;

x_position_board = (x_length_case - board_width) / 2;
y_position_board = lid_wall_width + case_length_tolerance/2;

x_position_left_pin_board_holders = x_position_board + board_holes_edge_distance;
x_position_right_pin_board_holders = x_length_case - x_position_board - board_holes_edge_distance;

x_length_board_holder = x_position_left_pin_board_holders + pin_holder_diameter/2 - lid_wall_width;
y_length_board_holder = case_length_tolerance/2+board_holes_edge_distance+pin_holder_diameter/2;

z_length_lid_int_height = lid_height + lid_int_height;

// height of the board starting from the base of the lid
lid_board_elevation = case_wall_width + board_holder_height;


bottom_pin_holders_y_pos = y_position_board + board_holes_edge_distance;

top_pin_holders_y_pos = y_length_board_case - y_position_board - board_holes_edge_distance;

// height of the board starting from the base of the bottom
bottom_board_elevation = bottom_height + lid_height - lid_board_elevation;

// Modules

// external volume of the lid
module lid_ext_wall(){
    difference(){
        linear_extrude(lid_height)minkowski(){
            translate([case_angle_radius,case_angle_radius,0])square([x_length_case - 2*case_angle_radius, y_length_case - 2*case_angle_radius]);
        // minkowski doesn't work if one of the shapes is non existent
        circle(max(0.0001,case_angle_radius));
        };
        translate([case_wall_width,case_wall_width,case_wall_width])linear_extrude(lid_height)minkowski(){
            translate([case_angle_radius,case_angle_radius,0])square([x_length_case - 2*case_angle_radius - 2*case_wall_width, y_length_case - 2*case_angle_radius - 2*case_wall_width]);
        // minkowski doesn't work if one of the shapes is non existent
        circle(max(0.0001,case_angle_radius));
        };
    }
}

module lid_external_wall_volume(){
    linear_extrude(lid_height)minkowski(){
            translate([case_angle_radius,case_angle_radius,0])square([x_length_case - 2*case_angle_radius, y_length_case - 2*case_angle_radius]);
        // minkowski doesn't work if one of the shapes is non existent
        circle(max(0.0001,case_angle_radius));
        };
}

module lid_internal_wall_volume(){
    linear_extrude(z_length_lid_int_height)minkowski(){
            translate([case_internal_angle_radius+case_wall_width,case_internal_angle_radius+case_wall_width,0])square([x_length_case - 2*case_wall_width - 2*case_internal_angle_radius, y_length_case -2*case_wall_width - 2*case_internal_angle_radius]);
        // minkowski doesn't work if one of the shapes is non existent
        circle(max(0.0001,case_internal_angle_radius));
        };
}


// internal volume of the lid
module lid_internal_volume(){
    translate([lid_wall_width,lid_wall_width,case_wall_width])linear_extrude(z_length_lid_int_height)square([x_length_case - 2*case_wall_width - 2*lid_int_wall_width, y_length_case - 2*case_wall_width - 2*lid_int_wall_width]);
}

module lid_wall(){
    if(lid_height < (lid_wall_width))echo("lid wall width is greater than lid height!");
    difference(){
        union(){
            lid_external_wall_volume();
            lid_internal_wall_volume();
        }
        lid_internal_volume();
    }
}

module pins_walls(){
    // left wall
    translate([x_position_board - case_wall_width, y_position_board + y_position_pins_hole - case_wall_width,0])linear_extrude(bottom_board_elevation - board_height)difference(){
        square([pins_hole_width+2*case_wall_width, pins_hole_length+2*case_wall_width]);
        translate([case_wall_width,case_wall_width,0])square([pins_hole_width, pins_hole_length]);
    }
    // right wall
    translate([x_length_case - x_position_board - pins_hole_width - case_wall_width, y_position_board + y_position_pins_hole - case_wall_width,0])linear_extrude(bottom_board_elevation - board_height)difference(){
        square([pins_hole_width+2*case_wall_width, pins_hole_length+2*case_wall_width]);
        translate([case_wall_width,case_wall_width,0])square([pins_hole_width, pins_hole_length]);
    }
}

module bottom_board_holders(){
    // left wall
    translate([x_position_board + pins_hole_width, y_position_board + y_position_pins_hole,0])linear_extrude(bottom_board_elevation - board_height)square([case_wall_width, pins_hole_length]);
    // right wall
    translate([x_length_case - x_position_board - pins_hole_width - case_wall_width, y_position_board + y_position_pins_hole,0])linear_extrude(bottom_board_elevation - board_height)square([case_wall_width, pins_hole_length]);
}


module left_pins_hole(){
    translate([x_position_board,y_position_board + y_position_pins_hole,0])linear_extrude(case_wall_width)square([pins_hole_width, pins_hole_length]);
}

module right_pins_hole(){
    translate([x_length_case - y_position_board - pins_hole_width,bottom_wall_width + case_width_tolerance/2 + y_position_pins_hole,0])linear_extrude(case_wall_width)square([pins_hole_width, pins_hole_length]);
}

module pins_holes(){
    left_pins_hole();
    right_pins_hole();
}
module pin_holder(){
    linear_extrude(pin_holder_height)circle(d = pin_holder_diameter);
}

module pin_holders(){
    // bottom left
    translate([x_position_left_pin_board_holders,bottom_pin_holders_y_pos,case_wall_width])pin_holder();
    // bottom right
    translate([x_position_right_pin_board_holders,bottom_pin_holders_y_pos,case_wall_width])pin_holder();
    // top left
    translate([x_position_left_pin_board_holders,top_pin_holders_y_pos,case_wall_width])pin_holder();
    // top right
    translate([x_position_right_pin_board_holders,top_pin_holders_y_pos,case_wall_width])pin_holder();
}

module board_holder(){
    translate([0,0,case_wall_width])linear_extrude(board_holder_height){
        // bottom left
        translate([lid_wall_width,lid_wall_width])square([x_length_board_holder,y_length_board_holder]);
        // bottom right
        translate([x_length_case-lid_wall_width-x_length_board_holder,lid_wall_width])square([x_length_board_holder,y_length_board_holder]);
        // top left
        translate([lid_wall_width,y_length_board_case-lid_wall_width-y_length_board_holder])square([x_length_board_holder,y_length_board_holder]);
        // top right
        translate([x_length_case-lid_wall_width-x_length_board_holder,y_length_board_case-lid_wall_width-y_length_board_holder])square([x_length_board_holder,y_length_board_holder]);
    }
}

module usb_hole(){
    if(case_wall_width > (lid_board_elevation - 1 - usb_hole_height/2)){
        echo("board elevation is probably too low for this usb hole height");
    }
    rotate([90,0,0])translate([x_length_case/2 - usb_hole_length/2 + usb_hole_radius,max(case_wall_width+usb_hole_radius,lid_board_elevation - 1 - usb_hole_height/2 + usb_hole_radius),-lid_wall_width])linear_extrude(lid_wall_width)minkowski(){
        square([usb_hole_length-2*usb_hole_radius, usb_hole_height-2*usb_hole_radius]);
        // minkowski doesn't work if one of the shapes is non existent
        circle(max(0.0001,usb_hole_radius));
    }
}

module case_angles(){
    minkowski(){
        translate([case_angle_radius,case_angle_radius,case_angle_radius])cube([x_length_case-2*case_angle_radius,y_length_case-2*case_angle_radius,100]);
        // minkowski doesn't work if one of the shapes is non existent
        sphere(max(0.0001,case_angle_radius));
    };
}

module divider_wall(){
    translate([case_wall_width,y_length_board_case - lid_wall_width,0])linear_extrude(bottom_board_elevation)square([x_length_case - 2*case_wall_width, bottom_wall_width]);
}

module ld2410_hole(){
    translate([x_position_ld2410,y_position_ld2410,0])linear_extrude(bottom_board_elevation)square([x_length_ld2410, y_length_ld2410]);
}

module pir_hole(){
    translate([x_length_case/2,y_position_pir+y_length_pir/2,0])linear_extrude(bottom_board_elevation)circle(d=pir_dome_diameter);
}

module pir_holder(){
    translate([0,0,case_wall_width])linear_extrude(pir_holder_height){
        // left
        translate([x_position_left_pir_hole,y_position_pir+y_length_pir/2,0])circle(d=pir_holder_diameter);
        // right
        translate([x_position_right_pir_hole,y_position_pir+y_length_pir/2,0])circle(d=pir_holder_diameter);
    }
}


x_position_adjustement_hole_1_bottom = x_position_pir + pir_adjustement_holes_left_distance[0];
x_position_adjustement_hole_2_bottom = x_position_pir + pir_adjustement_holes_left_distance[1];
x_position_adjustement_hole_1_lid = x_length_case - (x_position_pir + pir_adjustement_holes_left_distance[0]);
x_position_adjustement_hole_2_lid = x_length_case - (x_position_pir + pir_adjustement_holes_left_distance[1]);
y_position_adjustement_holes = y_length_case;
z_position_adjustement_holes_lid = case_wall_width+pir_adjustement_holes_height;
z_position_adjustement_holes_bottom = bottom_height + lid_height - z_position_adjustement_holes_lid;

module pir_adjustement_holes_lid(){
    rotate([90,0,0]){
        translate([x_position_adjustement_hole_1_lid,z_position_adjustement_holes_lid,-y_position_adjustement_holes])linear_extrude(lid_wall_width)circle(d=pir_adjustement_holes_diameter);
        translate([x_position_adjustement_hole_2_lid,z_position_adjustement_holes_lid,-y_position_adjustement_holes])linear_extrude(lid_wall_width)circle(d=pir_adjustement_holes_diameter);
    }
}


module pir_adjustement_holes_bottom(){
    rotate([90,0,0]){
        translate([x_position_adjustement_hole_1_bottom,z_position_adjustement_holes_bottom,-y_position_adjustement_holes])linear_extrude(bottom_wall_width)circle(d=pir_adjustement_holes_diameter);
        translate([x_position_adjustement_hole_2_bottom,z_position_adjustement_holes_bottom,-y_position_adjustement_holes])linear_extrude(bottom_wall_width)circle(d=pir_adjustement_holes_diameter);
    }
}

module sensor_divider_wall(){
    translate([lid_wall_width,y_position_pir-y_length_sensors_distance,case_wall_width])linear_extrude(sensors_divider_wall_height)square([x_length_lid_int, y_length_sensors_distance]);
}

module bottom(){
    intersection(){
        case_angles();
        difference(){
            union(){
                bottom_wall();
                //pins_walls();
                bottom_board_holders();
            }
            //pins_holes();
            if(pir)pir_adjustement_holes_bottom();
        }
    }
}


module ext_bottom(){
    linear_extrude(bottom_height)minkowski(){
        translate([case_angle_radius,case_angle_radius,0])square([x_length_case - 2*case_angle_radius, y_length_case - 2*case_angle_radius]);
        // minkowski doesn't work if one of the shapes is non existent
        circle(max(0.0001,case_angle_radius));
    }
}

module int_bottom(){
    translate([bottom_wall_width,bottom_wall_width,case_wall_width])linear_extrude(bottom_height)square([x_length_case - 2*bottom_wall_width, y_length_case - 2*bottom_wall_width]);
}

module bottom_wall(){
    difference(){
        ext_bottom();
        int_bottom();
    }
}


module lid_button_holes(){
    translate([x_position_board + buttons_wall_distance_x,y_position_board + buttons_wall_distance_y,0])linear_extrude(case_wall_width)circle(d=button_holes_diameter);
    translate([x_length_case - x_position_board - buttons_wall_distance_x,y_position_board + buttons_wall_distance_y,0])linear_extrude(case_wall_width)circle(d=button_holes_diameter);
}

module lid_hole(){
    translate([x_length_case/2 - lid_hole_width/2+case_angle_radius, y_position_board + lid_hole_y_position+case_angle_radius,0])linear_extrude(case_wall_width)minkowski(){
        square([lid_hole_width-2*case_angle_radius,lid_hole_height-2*case_angle_radius]);
        // minkowski doesn't work if one of the shapes is non existent
        circle(max(0.0001,case_angle_radius));
    };
}

module lid(){
    intersection(){
        case_angles();
        difference(){
            union(){
                lid_wall();
                //divider_wall();
                sensor_divider_wall();
                //lid_lip();
                board_holder();
                if(pir)pir_holder();
                if(board_holes){
                    pin_holders();
                }
            }
            lid_button_holes();
            lid_hole();
            if(ld2410)ld2410_hole();
            if(pir){
                pir_hole();
                pir_adjustement_holes_lid();
            }
            if(usb)usb_hole();
        }
    }
}


module button(){
    linear_extrude(board_holder_height-2.5)circle(d=button_holes_diameter+2);
    translate([0,0,board_holder_height-2.5])linear_extrude(case_wall_width+1)circle(d=button_holes_diameter);
}

module buttons(){
    if(buttons_number > 0){
        for(i = [1 : buttons_number]){
            translate([i*10,-10,0])button();
        }
    }
}


if(bottom){
    bottom();
}
if(lid){
    translate([50+2*lid_wall_width,0,0])lid();
}

buttons();

