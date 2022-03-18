# --------------------------------------------------------------------------------------------------
# LibUnitsSI.tcl -- define system of units
# Inspired by LibUnits.tcl	by Silvia Mazzoni & Frank McKenna, 2006
# 
# Revised at 2022.03.18  
#

# define UNITS ----------------------------------------------------------------------------
set mm 1.; 				# define basic units -- output units
set kN 1.; 			# define basic units -- output units
set sec 1.; 			# define basic units -- output units
set LunitTXT "mm";			# define basic-unit text for output
set FunitTXT "kN";			# define basic-unit text for output
set TunitTXT "sec";			# define basic-unit text for output
set meter [expr 1000.*$mm]; 		# define engineering units
set MPa [expr ($kN*1000.)/pow($mm,2)];
set kgf [expr $MPa*10.];
set mm2 [expr $mm*$mm]; 		# inch^2
set mm4 [expr $mm*$mm*$mm*$mm]; 		# inch^4
set cm [expr $mm*10];		# centimeter, needed for displacement input in MultipleSupport excitation
set PI [expr 2*asin(1.0)]; 		# define constants
set g [expr 9.81*$meter/pow($sec,2)]; 	# gravitational acceleration
set Ubig 1.e10; 			# a really large number
set Usmall [expr 1/$Ubig]; 		# a really small number
