include <BOSL/constants.scad>
use <BOSL/shapes.scad>
use <BOSL/transforms.scad>

$fn=1024;


wall_thickness = 2.6;
top_thickness = 3.4;
canister_diameter = 83.5;
tolerance = -0.05; // 0 for looser fit
lip = 18; // 12 for looser fit
height = top_thickness + lip;
od = canister_diameter + (2 * wall_thickness) + tolerance;
id = canister_diameter + tolerance;

difference() {
    cyl(d=od, h=height, align=V_TOP);
    zmove(top_thickness) cyl(d=id, h=height, align=V_TOP);
}
