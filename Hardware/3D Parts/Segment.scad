

//Create Outer Tube and subtract inner tube and limit entire thing to 15 degrees
difference() {



	union() {
	
		//Outer Tube
		rotate_extrude(convexity = 10, $fn = 120)
		translate([250, 0, 0])
		circle(r = 10, $fn = 100);



	// Create the Standard End
	translate([250, 0, 0]){
		difference() {
			
				// Triangular Portion
				rotate(a=90, v=[0,0,90]) {
					rotate(a=180, v=[1,0,0]) {
						rotate(a=90, v=[0,1,0]) {
							cylinder(h = 7.5, r=30, $fn=3);
						}
					}
				}

			// Top Cut-off
				translate([0, 0, 25]){
					rotate(a=90, v=[0,0,90]) {
						rotate(a=180, v=[1,0,0]) {
							rotate(a=90, v=[0,1,0]) {
								cylinder(h = 7.6, r=5.1, $fn=3);
							}
						}
					}
				}
			
			// Bottom Screw Holes
				translate([0, 0, -15.1]){ // Move cylinder to bottom of triangular end
					translate([0, 3.73, 0]){ // Move cylinder to middle width-wise
						translate([11.5, 0, 0]){ // Move cylinder toward traingle corner
							cylinder(h = 12.1, r=2.25, $fn=18); 
						}
					}
				}
				translate([0, 0, -15.1]){ // Move cylinder to bottom of triangular end
					translate([0, 3.73, 0]){ // Move cylinder to middle width-wise
						translate([-11.5, 0, 0]){ // Move cylinder toward traingle corner
							cylinder(h = 12.1, r=2.25, $fn=18); 
						}
					}
				}
			
			// Side Screw Holes (Smaller to actually screw in)
				rotate(a=90, v=[1,0,0]) { // TOP Screw Hole
					translate([0, 0, -8]){ // Move along Y
						translate([0, 15, 0]){ // Move along Z
							translate([0, 0, 0]){ // Move along X
								cylinder(h = 8.5, r=1.5, $fn=18); 
							}
						}
					}
				}
				rotate(a=90, v=[1,0,0]) {
					translate([0, 0, -8]){ // Move along Y
						translate([0, -10.5, 0]){ // Move along Z
							translate([18, 0, 0]){ // Move along X
								cylinder(h = 8.5, r=1.5, $fn=18); 
							}
						}
					}
				}
				rotate(a=90, v=[1,0,0]) {
					translate([0, 0, -8]){ // Move along Y
						translate([0, -10.5, 0]){ // Move along Z
							translate([-18, 0, 0]){ // Move along X
								cylinder(h = 8.5, r=1.5, $fn=18); 
							}
						}
					}
				}
			
			}
	}




	// Create the Rotated End
	rotate(a=15, v=[0,0,1]) {
		translate([250, 0, 0]){
					
			translate([0, -7.5, 0]){
				difference() {

						// Triangular Portion
						rotate(a=90, v=[0,0,90]) {
							rotate(a=180, v=[1,0,0]) {
								rotate(a=90, v=[0,1,0]) {
									cylinder(h = 7.5, r=30, $fn=3);
								}
							}
						}


					// Top Cut-off
						translate([0, 0, 25]){
							rotate(a=90, v=[0,0,90]) {
								rotate(a=180, v=[1,0,0]) {
									rotate(a=90, v=[0,1,0]) {
										cylinder(h = 7.6, r=5.1, $fn=3);
									}
								}
							}
						}
					
					// Bottom Screw Holes
						translate([0, 0, -15.1]){ // Move cylinder to bottom of triangular end
							translate([0, 3.73, 0]){ // Move cylinder to middle width-wise
								translate([11.5, 0, 0]){ // Move cylinder toward traingle corner
									cylinder(h = 12.1, r=2.25, $fn=18); 
								}
							}
						}
						translate([0, 0, -15.1]){ // Move cylinder to bottom of triangular end
							translate([0, 3.73, 0]){ // Move cylinder to middle width-wise
								translate([-11.5, 0, 0]){ // Move cylinder toward traingle corner
									cylinder(h = 12.1, r=2.25, $fn=18); 
								}
							}
						}
				
					// Side Screw Holes (Larger for free movement)
						rotate(a=90, v=[1,0,0]) { // TOP Screw Hole
							translate([0, 0, -8]){ // Move along Y
								translate([0, 15, 0]){ // Move along Z
									translate([0, 0, 0]){ // Move along X
										cylinder(h = 8.5, r=1.75, $fn=18); 
									}
								}
							}
						}
						rotate(a=90, v=[1,0,0]) {
							translate([0, 0, -8]){ // Move along Y
								translate([0, -10.5, 0]){ // Move along Z
									translate([18, 0, 0]){ // Move along X
										cylinder(h = 8.5, r=1.75, $fn=18); 
									}
								}
							}
						}
						rotate(a=90, v=[1,0,0]) {
							translate([0, 0, -8]){ // Move along Y
								translate([0, -10.5, 0]){ // Move along Z
									translate([-18, 0, 0]){ // Move along X
										cylinder(h = 8.5, r=1.75, $fn=18); 
									}
								}
							}
						}
					

					// Side Screw Holes (Countersink)
						rotate(a=90, v=[1,0,0]) {
							translate([0, 0, -3.5]){ // Move along Y
								translate([0, 15, 0]){ // Move along Z
									translate([0, 0, 0]){ // Move along X
										cylinder(h = 4, r=2.75, $fn=18); 
									}
								}
							}
						}
						rotate(a=90, v=[1,0,0]) {
							translate([0, 0, -3.5]){ // Move along Y
								translate([0, -10.5, 0]){ // Move along Z
									translate([18, 0, 0]){ // Move along X
										cylinder(h = 4, r=2.75, $fn=18); 
									}
								}
							}
						}
						rotate(a=90, v=[1,0,0]) {
							translate([0, 0, -3.5]){ // Move along Y
								translate([0, -10.5, 0]){ // Move along Z
									translate([-18, 0, 0]){ // Move along X
										cylinder(h = 4, r=2.75, $fn=18); 
									}
								}
							}
						}
					
					}
				}
				
			}
		}

		
		
// Ring 1
	rotate(a=9.5, v=[0,0,1]) { // How far (between 0 and 15 degrees) do we rotate the ring?
		translate([250, 0, 0]){
			difference() {

				rotate(a=90, v=[0,0,90]) {
					rotate(a=180, v=[1,0,0]) {
						rotate(a=90, v=[0,1,0]) {
							cylinder(h = 2.5, r=14.5, $fn=24);
						}
					}
				}

				translate(v = [0, 1.5, 12.6]) {
					cube(size = [1,3.2,4], center = true);
				}

			}
		}
	}
	
	
// Ring 2
	rotate(a=2.25, v=[0,0,1]) { // How far (between 0 and 15 degrees) do we rotate the ring?
		translate([250, 0, 0]){
			difference() {

				rotate(a=90, v=[0,0,90]) {
					rotate(a=180, v=[1,0,0]) {
						rotate(a=90, v=[0,1,0]) {
							cylinder(h = 2.5, r=14.5, $fn=24);
						}
					}
				}

				translate(v = [0, 1.5, 12.6]) {
					cube(size = [1,3.2,4], center = true);
				}

			}
		}
	}
	
		

	}		






	// Inner tube
	rotate_extrude(convexity = 10, $fn = 120)
	translate([250, 0, 0])
	circle(r = 7.5, $fn = 100);
	
	// Create the 15 degree section
	translate([0, 0, -10]){
		rotate(a = 15){	
			cube(size = [300,300,20], center = false);
		}
	}

	// Cut away the remainder of the ring
	for(i=[90:90:270]){
		translate([0, 0, -10]){
			rotate(i){	
				cube(size = [300,300,20], center = false);
			}
		}
	}


}
	