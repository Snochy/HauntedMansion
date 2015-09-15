//Maya ASCII 2015 scene
//Name: FlexiPlane_13PArts01.0001.ma
//Last modified: Wed, Nov 05, 2014 03:11:24 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201407071530-922714";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.41207815123494385 50.277636628455831 36.077130803737056 ;
	setAttr ".r" -type "double3" -55.538352729617145 -9.7999999999994447 -8.0691323013502315e-016 ;
	setAttr ".rp" -type "double3" -2.2915003228263231e-013 -1.1319833959078096e-012 
		-3.637978807091713e-012 ;
	setAttr ".rpt" -type "double3" 2.964547171299973e-012 -1.3986975577933551e-012 2.8121202543210442e-012 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 65.165996165722632;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 18.446044316735669 4.2632564145606011e-014 0.095061057150452655 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "flexiPlane01";
createNode transform -n "flexiPlane_cnt_Global01" -p "flexiPlane01";
	addAttr -ci true -sn "Extra" -ln "Extra" -min 0 -max 0 -en "Controls" -at "enum";
	addAttr -ci true -sn "volumne" -ln "volumne" -min 0 -max 1 -at "bool";
	setAttr -cb on ".Extra";
	setAttr -k on ".volumne" yes;
createNode nurbsCurve -n "flexiPlane_cnt_Global01Shape" -p "flexiPlane_cnt_Global01";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode nurbsCurve -n "flexiPlane_cnt_Global01Shape1" -p "flexiPlane_cnt_Global01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.36037476412409153 2.2066590068902521e-017 1.6396252358759091
		-5.8144615021626401e-017 3.1206870950769419e-017 1.4903531210387051
		-0.36037476412409114 2.2066590068902536e-017 1.6396252358759087
		-0.5096468789612949 1.2124458378284805e-032 2
		-0.36037476412409125 -2.2066590068902521e-017 2.3603747641240913
		-1.5356655095984271e-016 -3.1206870950769419e-017 2.5096468789612949
		0.36037476412409092 -2.2066590068902533e-017 2.3603747641240913
		0.5096468789612949 -1.3679783352957418e-032 2
		0.36037476412409153 2.2066590068902521e-017 1.6396252358759091
		-5.8144615021626401e-017 3.1206870950769419e-017 1.4903531210387051
		-0.36037476412409114 2.2066590068902536e-017 1.6396252358759087
		;
createNode transform -n "flexiPlane_globalMove01" -p "flexiPlane01";
createNode transform -n "flexiPlane_Surface01" -p "flexiPlane_globalMove01";
createNode nurbsSurface -n "flexiPlane_Surface0Shape1" -p "flexiPlane_Surface01";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "flexiPlane_Surface0Shape1Orig" -p "flexiPlane_Surface01";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 0 no 
		18 0 0 0 0.076923076923076927 0.15384615384615385 0.23076923076923078 0.30769230769230771
		 0.38461538461538464 0.46153846153846156 0.53846153846153855 0.61538461538461542 0.69230769230769229
		 0.76923076923076927 0.84615384615384626 0.92307692307692313 1 1 1
		6 0 0 0 1 1 1
		
		64
		-13 -6.1232339954918371e-017 0.99999999996
		-13 -2.0410779984972791e-017 0.33333333332000004
		-13 2.0410779984972785e-017 -0.33333333331999992
		-13 6.1232339954918371e-017 -0.99999999996
		-12.333333333333334 -6.1232339954918371e-017 0.99999999996
		-12.333333333333334 -2.0410779984972791e-017 0.33333333332000004
		-12.333333333333334 2.0410779984972785e-017 -0.33333333331999992
		-12.333333333333334 6.1232339954918371e-017 -0.99999999996
		-11 -6.1232339954918371e-017 0.99999999996
		-11 -2.0410779984972791e-017 0.33333333332000004
		-11 2.0410779984972785e-017 -0.33333333331999992
		-11 6.1232339954918371e-017 -0.99999999996
		-8.9999999999999982 -6.1232339954918371e-017 0.99999999996
		-8.9999999999999982 -2.0410779984972791e-017 0.33333333332000004
		-8.9999999999999982 2.0410779984972785e-017 -0.33333333331999992
		-8.9999999999999982 6.1232339954918371e-017 -0.99999999996
		-6.9999999999999982 -6.1232339954918371e-017 0.99999999996
		-6.9999999999999982 -2.0410779984972791e-017 0.33333333332000004
		-6.9999999999999982 2.0410779984972785e-017 -0.33333333331999992
		-6.9999999999999982 6.1232339954918371e-017 -0.99999999996
		-4.9999999999999991 -6.1232339954918371e-017 0.99999999996
		-4.9999999999999991 -2.0410779984972791e-017 0.33333333332000004
		-4.9999999999999991 2.0410779984972785e-017 -0.33333333331999992
		-4.9999999999999991 6.1232339954918371e-017 -0.99999999996
		-2.9999999999999991 -6.1232339954918371e-017 0.99999999996
		-2.9999999999999991 -2.0410779984972791e-017 0.33333333332000004
		-2.9999999999999991 2.0410779984972785e-017 -0.33333333331999992
		-2.9999999999999991 6.1232339954918371e-017 -0.99999999996
		-0.99999999999999889 -6.1232339954918371e-017 0.99999999996
		-0.99999999999999889 -2.0410779984972791e-017 0.33333333332000004
		-0.99999999999999889 2.0410779984972785e-017 -0.33333333331999992
		-0.99999999999999889 6.1232339954918371e-017 -0.99999999996
		1.0000000000000007 -6.1232339954918371e-017 0.99999999996
		1.0000000000000007 -2.0410779984972791e-017 0.33333333332000004
		1.0000000000000007 2.0410779984972785e-017 -0.33333333331999992
		1.0000000000000007 6.1232339954918371e-017 -0.99999999996
		3 -6.1232339954918371e-017 0.99999999996
		3 -2.0410779984972791e-017 0.33333333332000004
		3 2.0410779984972785e-017 -0.33333333331999992
		3 6.1232339954918371e-017 -0.99999999996
		5 -6.1232339954918371e-017 0.99999999996
		5 -2.0410779984972791e-017 0.33333333332000004
		5 2.0410779984972785e-017 -0.33333333331999992
		5 6.1232339954918371e-017 -0.99999999996
		7.0000000000000009 -6.1232339954918371e-017 0.99999999996
		7.0000000000000009 -2.0410779984972791e-017 0.33333333332000004
		7.0000000000000009 2.0410779984972785e-017 -0.33333333331999992
		7.0000000000000009 6.1232339954918371e-017 -0.99999999996
		9.0000000000000018 -6.1232339954918371e-017 0.99999999996
		9.0000000000000018 -2.0410779984972791e-017 0.33333333332000004
		9.0000000000000018 2.0410779984972785e-017 -0.33333333331999992
		9.0000000000000018 6.1232339954918371e-017 -0.99999999996
		11.000000000000002 -6.1232339954918371e-017 0.99999999996
		11.000000000000002 -2.0410779984972791e-017 0.33333333332000004
		11.000000000000002 2.0410779984972785e-017 -0.33333333331999992
		11.000000000000002 6.1232339954918371e-017 -0.99999999996
		12.333333333333334 -6.1232339954918371e-017 0.99999999996
		12.333333333333334 -2.0410779984972791e-017 0.33333333332000004
		12.333333333333334 2.0410779984972785e-017 -0.33333333331999992
		12.333333333333334 6.1232339954918371e-017 -0.99999999996
		13 -6.1232339954918371e-017 0.99999999996
		13 -2.0410779984972791e-017 0.33333333332000004
		13 2.0410779984972785e-017 -0.33333333331999992
		13 6.1232339954918371e-017 -0.99999999996
		
		;
createNode transform -n "flexiPlane_cnt_grp01" -p "flexiPlane_globalMove01";
createNode transform -n "flexiPlane_cnt_a01" -p "flexiPlane_cnt_grp01";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" -13 0 0 ;
	setAttr ".sp" -type "double3" -13 0 0 ;
createNode nurbsCurve -n "flexiPlane_cnt_a0Shape1" -p "flexiPlane_cnt_a01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-13.598451429530225 0 -0.5984514295302259
		-12.401548570469773 0 -0.5984514295302259
		-12.401548570469773 0 0.5984514295302259
		-13.598451429530225 0 0.5984514295302259
		-13.598451429530225 0 -0.5984514295302259
		;
createNode transform -n "flexiPlane_cnt_b01" -p "flexiPlane_cnt_grp01";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 13 0 0 ;
	setAttr ".sp" -type "double3" 13 0 0 ;
createNode nurbsCurve -n "flexiPlane_cnt_b0Shape1" -p "flexiPlane_cnt_b01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		12.401548570469775 0 -0.5984514295302259
		13.598451429530227 0 -0.5984514295302259
		13.598451429530227 0 0.5984514295302259
		12.401548570469775 0 0.5984514295302259
		12.401548570469775 0 -0.5984514295302259
		;
createNode transform -n "flexiPlane_midBend_grp01" -p "flexiPlane_cnt_grp01";
createNode transform -n "flexiPlane_midBend01" -p "flexiPlane_midBend_grp01";
createNode mesh -n "flexiPlane_midBend0Shape1" -p "flexiPlane_midBend01";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 62 ".uvst[0].uvsp[0:61]" -type "float2" 0 0.14285715 0.14285715
		 0.14285715 0.2857143 0.14285715 0.42857146 0.14285715 0.5714286 0.14285715 0.71428573
		 0.14285715 0.85714287 0.14285715 1 0.14285715 0 0.2857143 0.14285715 0.2857143 0.2857143
		 0.2857143 0.42857146 0.2857143 0.5714286 0.2857143 0.71428573 0.2857143 0.85714287
		 0.2857143 1 0.2857143 0 0.42857146 0.14285715 0.42857146 0.2857143 0.42857146 0.42857146
		 0.42857146 0.5714286 0.42857146 0.71428573 0.42857146 0.85714287 0.42857146 1 0.42857146
		 0 0.5714286 0.14285715 0.5714286 0.2857143 0.5714286 0.42857146 0.5714286 0.5714286
		 0.5714286 0.71428573 0.5714286 0.85714287 0.5714286 1 0.5714286 0 0.71428573 0.14285715
		 0.71428573 0.2857143 0.71428573 0.42857146 0.71428573 0.5714286 0.71428573 0.71428573
		 0.71428573 0.85714287 0.71428573 1 0.71428573 0 0.85714287 0.14285715 0.85714287
		 0.2857143 0.85714287 0.42857146 0.85714287 0.5714286 0.85714287 0.71428573 0.85714287
		 0.85714287 0.85714287 1 0.85714287 0.071428575 0 0.21428573 0 0.35714287 0 0.5 0
		 0.64285719 0 0.78571433 0 0.92857146 0 0.071428575 1 0.21428573 1 0.35714287 1 0.5
		 1 0.64285719 1 0.78571433 1 0.92857146 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 44 ".vt[0:43]"  0.14695586 -0.48943374 -0.18427679 -0.052447915 -0.48943374 -0.22978941
		 -0.21235733 -0.48943374 -0.10226592 -0.21235734 -0.48943374 0.1022659 -0.052447937 -0.48943374 0.22978941
		 0.14695585 -0.48943374 0.1842768 0.23569888 -0.48943374 0 0.26480532 -0.33869866 -0.33205527
		 -0.094507881 -0.33869866 -0.4140662 -0.3826547 -0.33869866 -0.18427682 -0.38265473 -0.33869866 0.18427679
		 -0.094507918 -0.33869866 0.4140662 0.26480529 -0.33869866 0.33205533 0.42471468 -0.33869866 0
		 0.33020678 -0.12088011 -0.41406614 -0.11784939 -0.12088011 -0.51633209 -0.47716257 -0.12088011 -0.22978942
		 -0.4771626 -0.12088011 0.22978938 -0.11784944 -0.12088011 0.51633209 0.33020675 -0.12088011 0.4140662
		 0.52961057 -0.12088011 0 0.33020678 0.12088011 -0.41406614 -0.11784939 0.12088011 -0.51633209
		 -0.47716257 0.12088011 -0.22978942 -0.4771626 0.12088011 0.22978938 -0.11784944 0.12088011 0.51633209
		 0.33020675 0.12088011 0.4140662 0.52961057 0.12088011 0 0.26480532 0.33869866 -0.33205527
		 -0.094507881 0.33869866 -0.4140662 -0.3826547 0.33869866 -0.18427682 -0.38265473 0.33869866 0.18427679
		 -0.094507918 0.33869866 0.4140662 0.26480529 0.33869866 0.33205533 0.42471468 0.33869866 0
		 0.14695586 0.48943374 -0.18427679 -0.052447915 0.48943374 -0.22978941 -0.21235733 0.48943374 -0.10226592
		 -0.21235734 0.48943374 0.1022659 -0.052447937 0.48943374 0.22978941 0.14695585 0.48943374 0.1842768
		 0.23569888 0.48943374 0 0 -0.54323047 0 0 0.54323047 0;
	setAttr -s 91 ".ed[0:90]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 0 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 7 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 14 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 21 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 28 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 35 0 0 7 0 1 8 0 2 9 0 3 10 0 4 11 0 5 12 0 6 13 0 7 14 0 8 15 0 9 16 0
		 10 17 0 11 18 0 12 19 0 13 20 0 14 21 0 15 22 0 16 23 0 17 24 0 18 25 0 19 26 0 20 27 0
		 21 28 0 22 29 0 23 30 0 24 31 0 25 32 0 26 33 0 27 34 0 28 35 0 29 36 0 30 37 0 31 38 0
		 32 39 0 33 40 0 34 41 0 42 0 0 42 1 0 42 2 0 42 3 0 42 4 0 42 5 0 42 6 0 35 43 0
		 36 43 0 37 43 0 38 43 0 39 43 0 40 43 0 41 43 0;
	setAttr -s 49 -ch 182 ".fc[0:48]" -type "polyFaces" 
		f 4 0 43 -8 -43
		mu 0 4 0 1 9 8
		f 4 1 44 -9 -44
		mu 0 4 1 2 10 9
		f 4 2 45 -10 -45
		mu 0 4 2 3 11 10
		f 4 3 46 -11 -46
		mu 0 4 3 4 12 11
		f 4 4 47 -12 -47
		mu 0 4 4 5 13 12
		f 4 5 48 -13 -48
		mu 0 4 5 6 14 13
		f 4 6 42 -14 -49
		mu 0 4 6 7 15 14
		f 4 7 50 -15 -50
		mu 0 4 8 9 17 16
		f 4 8 51 -16 -51
		mu 0 4 9 10 18 17
		f 4 9 52 -17 -52
		mu 0 4 10 11 19 18
		f 4 10 53 -18 -53
		mu 0 4 11 12 20 19
		f 4 11 54 -19 -54
		mu 0 4 12 13 21 20
		f 4 12 55 -20 -55
		mu 0 4 13 14 22 21
		f 4 13 49 -21 -56
		mu 0 4 14 15 23 22
		f 4 14 57 -22 -57
		mu 0 4 16 17 25 24
		f 4 15 58 -23 -58
		mu 0 4 17 18 26 25
		f 4 16 59 -24 -59
		mu 0 4 18 19 27 26
		f 4 17 60 -25 -60
		mu 0 4 19 20 28 27
		f 4 18 61 -26 -61
		mu 0 4 20 21 29 28
		f 4 19 62 -27 -62
		mu 0 4 21 22 30 29
		f 4 20 56 -28 -63
		mu 0 4 22 23 31 30
		f 4 21 64 -29 -64
		mu 0 4 24 25 33 32
		f 4 22 65 -30 -65
		mu 0 4 25 26 34 33
		f 4 23 66 -31 -66
		mu 0 4 26 27 35 34
		f 4 24 67 -32 -67
		mu 0 4 27 28 36 35
		f 4 25 68 -33 -68
		mu 0 4 28 29 37 36
		f 4 26 69 -34 -69
		mu 0 4 29 30 38 37
		f 4 27 63 -35 -70
		mu 0 4 30 31 39 38
		f 4 28 71 -36 -71
		mu 0 4 32 33 41 40
		f 4 29 72 -37 -72
		mu 0 4 33 34 42 41
		f 4 30 73 -38 -73
		mu 0 4 34 35 43 42
		f 4 31 74 -39 -74
		mu 0 4 35 36 44 43
		f 4 32 75 -40 -75
		mu 0 4 36 37 45 44
		f 4 33 76 -41 -76
		mu 0 4 37 38 46 45
		f 4 34 70 -42 -77
		mu 0 4 38 39 47 46
		f 3 -1 -78 78
		mu 0 3 1 0 48
		f 3 -2 -79 79
		mu 0 3 2 1 49
		f 3 -3 -80 80
		mu 0 3 3 2 50
		f 3 -4 -81 81
		mu 0 3 4 3 51
		f 3 -5 -82 82
		mu 0 3 5 4 52
		f 3 -6 -83 83
		mu 0 3 6 5 53
		f 3 -7 -84 77
		mu 0 3 7 6 54
		f 3 35 85 -85
		mu 0 3 40 41 55
		f 3 36 86 -86
		mu 0 3 41 42 56
		f 3 37 87 -87
		mu 0 3 42 43 57
		f 3 38 88 -88
		mu 0 3 43 44 58
		f 3 39 89 -89
		mu 0 3 44 45 59
		f 3 40 90 -90
		mu 0 3 45 46 60
		f 3 41 84 -91
		mu 0 3 46 47 61;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode pointConstraint -n "flexiPlane_midBend_grp01_pointConstraint1" -p "flexiPlane_midBend_grp01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_cnt_a01W0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "flexiPlane_cnt_b01W1" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode pointConstraint -n "flexiPlane_globalMove01_pointConstraint1" -p "flexiPlane_globalMove01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_cnt_Global01W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "flexiPlane_globalMove01_orientConstraint1" -p "flexiPlane_globalMove01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_cnt_Global01W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode scaleConstraint -n "flexiPlane_globalMove01_scaleConstraint1" -p "flexiPlane_globalMove01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_cnt_Global01W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "flexiPlane_extraNodes01" -p "flexiPlane01";
createNode transform -n "flexiPlane_cl_grp01" -p "flexiPlane_extraNodes01";
	setAttr ".v" no;
createNode transform -n "flexiPlane_cl_a01" -p "flexiPlane_cl_grp01";
	setAttr ".rp" -type "double3" -13 0 -5 ;
	setAttr ".sp" -type "double3" -13 0 -5 ;
createNode clusterHandle -n "flexiPlane_cl_a01Shape" -p "flexiPlane_cl_a01";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -15 0 -5 ;
createNode transform -n "flexiPlane_cl_b01" -p "flexiPlane_cl_grp01";
	setAttr ".rp" -type "double3" 0 0 -5 ;
	setAttr ".sp" -type "double3" 0 0 -5 ;
createNode clusterHandle -n "flexiPlane_cl_b01Shape" -p "flexiPlane_cl_b01";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 0 -5 ;
createNode transform -n "flexiPlane_cl_c01" -p "flexiPlane_cl_grp01";
	setAttr ".rp" -type "double3" 13 0 -5 ;
	setAttr ".sp" -type "double3" 13 0 -5 ;
createNode clusterHandle -n "flexiPlane_cl_c01Shape" -p "flexiPlane_cl_c01";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 15 0 -5 ;
createNode transform -n "flexiPlane_wire_surface01BaseWire1" -p "flexiPlane_extraNodes01";
	setAttr ".v" no;
createNode nurbsCurve -n "flexiPlane_wire_surface01BaseWire1Shape" -p "flexiPlane_wire_surface01BaseWire1";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "cv[0:1]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "cv[1:2]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		2 1 0 no 3
		4 0 0 1 1
		3
		-13 0 -5
		0 0 -5
		13 0 -5
		;
createNode nurbsCurve -n "flexiPlane_wire_surface01BaseWire1Shape1Orig" -p "flexiPlane_wire_surface01BaseWire1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		2 1 0 no 3
		4 0 0 1 1
		3
		-13 0 -5
		0 0 -5
		13 0 -5
		;
createNode transform -n "flexiPlane_wire_surface01" -p "flexiPlane_extraNodes01";
	setAttr ".v" no;
createNode nurbsCurve -n "flexiPlane_wire_surface01Shape" -p "flexiPlane_wire_surface01";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "flexiPlane_wire_surface01Shape1Orig" -p "flexiPlane_wire_surface01";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		2 1 0 no 3
		4 0 0 1 1
		3
		-13 0 -5
		0 0 -5
		13 0 -5
		;
createNode transform -n "flexiPlane_Surface_BS01" -p "flexiPlane_extraNodes01";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 -5 ;
createNode nurbsSurface -n "flexiPlane_Surface_BS0Shape1" -p "flexiPlane_Surface_BS01";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "flexiPlane_Surface_BS0Shape1Orig" -p "flexiPlane_Surface_BS01";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 0 no 
		18 0 0 0 0.076923076923076927 0.15384615384615385 0.23076923076923078 0.30769230769230771
		 0.38461538461538464 0.46153846153846156 0.53846153846153855 0.61538461538461542 0.69230769230769229
		 0.76923076923076927 0.84615384615384626 0.92307692307692313 1 1 1
		6 0 0 0 1 1 1
		
		64
		-13 -6.1232339954918371e-017 0.99999999996
		-13 -2.0410779984972791e-017 0.33333333332000004
		-13 2.0410779984972785e-017 -0.33333333331999992
		-13 6.1232339954918371e-017 -0.99999999996
		-12.333333333333334 -6.1232339954918371e-017 0.99999999996
		-12.333333333333334 -2.0410779984972791e-017 0.33333333332000004
		-12.333333333333334 2.0410779984972785e-017 -0.33333333331999992
		-12.333333333333334 6.1232339954918371e-017 -0.99999999996
		-11 -6.1232339954918371e-017 0.99999999996
		-11 -2.0410779984972791e-017 0.33333333332000004
		-11 2.0410779984972785e-017 -0.33333333331999992
		-11 6.1232339954918371e-017 -0.99999999996
		-8.9999999999999982 -6.1232339954918371e-017 0.99999999996
		-8.9999999999999982 -2.0410779984972791e-017 0.33333333332000004
		-8.9999999999999982 2.0410779984972785e-017 -0.33333333331999992
		-8.9999999999999982 6.1232339954918371e-017 -0.99999999996
		-6.9999999999999982 -6.1232339954918371e-017 0.99999999996
		-6.9999999999999982 -2.0410779984972791e-017 0.33333333332000004
		-6.9999999999999982 2.0410779984972785e-017 -0.33333333331999992
		-6.9999999999999982 6.1232339954918371e-017 -0.99999999996
		-4.9999999999999991 -6.1232339954918371e-017 0.99999999996
		-4.9999999999999991 -2.0410779984972791e-017 0.33333333332000004
		-4.9999999999999991 2.0410779984972785e-017 -0.33333333331999992
		-4.9999999999999991 6.1232339954918371e-017 -0.99999999996
		-2.9999999999999991 -6.1232339954918371e-017 0.99999999996
		-2.9999999999999991 -2.0410779984972791e-017 0.33333333332000004
		-2.9999999999999991 2.0410779984972785e-017 -0.33333333331999992
		-2.9999999999999991 6.1232339954918371e-017 -0.99999999996
		-0.99999999999999889 -6.1232339954918371e-017 0.99999999996
		-0.99999999999999889 -2.0410779984972791e-017 0.33333333332000004
		-0.99999999999999889 2.0410779984972785e-017 -0.33333333331999992
		-0.99999999999999889 6.1232339954918371e-017 -0.99999999996
		1.0000000000000007 -6.1232339954918371e-017 0.99999999996
		1.0000000000000007 -2.0410779984972791e-017 0.33333333332000004
		1.0000000000000007 2.0410779984972785e-017 -0.33333333331999992
		1.0000000000000007 6.1232339954918371e-017 -0.99999999996
		3 -6.1232339954918371e-017 0.99999999996
		3 -2.0410779984972791e-017 0.33333333332000004
		3 2.0410779984972785e-017 -0.33333333331999992
		3 6.1232339954918371e-017 -0.99999999996
		5 -6.1232339954918371e-017 0.99999999996
		5 -2.0410779984972791e-017 0.33333333332000004
		5 2.0410779984972785e-017 -0.33333333331999992
		5 6.1232339954918371e-017 -0.99999999996
		7.0000000000000009 -6.1232339954918371e-017 0.99999999996
		7.0000000000000009 -2.0410779984972791e-017 0.33333333332000004
		7.0000000000000009 2.0410779984972785e-017 -0.33333333331999992
		7.0000000000000009 6.1232339954918371e-017 -0.99999999996
		9.0000000000000018 -6.1232339954918371e-017 0.99999999996
		9.0000000000000018 -2.0410779984972791e-017 0.33333333332000004
		9.0000000000000018 2.0410779984972785e-017 -0.33333333331999992
		9.0000000000000018 6.1232339954918371e-017 -0.99999999996
		11.000000000000002 -6.1232339954918371e-017 0.99999999996
		11.000000000000002 -2.0410779984972791e-017 0.33333333332000004
		11.000000000000002 2.0410779984972785e-017 -0.33333333331999992
		11.000000000000002 6.1232339954918371e-017 -0.99999999996
		12.333333333333334 -6.1232339954918371e-017 0.99999999996
		12.333333333333334 -2.0410779984972791e-017 0.33333333332000004
		12.333333333333334 2.0410779984972785e-017 -0.33333333331999992
		12.333333333333334 6.1232339954918371e-017 -0.99999999996
		13 -6.1232339954918371e-017 0.99999999996
		13 -2.0410779984972791e-017 0.33333333332000004
		13 2.0410779984972785e-017 -0.33333333331999992
		13 6.1232339954918371e-017 -0.99999999996
		
		;
createNode transform -n "flexiPlane_Follicle_grp01" -p "flexiPlane_extraNodes01";
createNode transform -n "flexiPlane_flc_a01" -p "flexiPlane_Follicle_grp01";
createNode follicle -n "flexiPlane_flc_a0Shape1" -p "flexiPlane_flc_a01";
	setAttr -k off ".v";
	setAttr ".pu" 0.038461538461538464;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode scaleConstraint -n "flexiPlane_flc_a01_scaleConstraint1" -p "flexiPlane_flc_a01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_globalMove01W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "flexiPlane_bn_a01" -p "flexiPlane_flc_a01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 5.5511151231257827e-017 -9.2444637330587321e-033 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 -12 0 0 1;
	setAttr ".radi" 0.5;
createNode transform -n "flexiPlane_flc_b01" -p "flexiPlane_Follicle_grp01";
createNode follicle -n "flexiPlane_flc_b0Shape1" -p "flexiPlane_flc_b01";
	setAttr -k off ".v";
	setAttr ".pu" 0.11538461538461539;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode scaleConstraint -n "flexiPlane_flc_b01_scaleConstraint1" -p "flexiPlane_flc_b01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_globalMove01W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "flexiPlane_bn_b01" -p "flexiPlane_flc_b01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 5.5511151231257827e-017 -9.2444637330587321e-033 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 -10 0 0 1;
	setAttr ".radi" 0.5;
createNode transform -n "flexiPlane_flc_c01" -p "flexiPlane_Follicle_grp01";
createNode follicle -n "flexiPlane_flc_c0Shape1" -p "flexiPlane_flc_c01";
	setAttr -k off ".v";
	setAttr ".pu" 0.19230769230769232;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode scaleConstraint -n "flexiPlane_flc_c01_scaleConstraint1" -p "flexiPlane_flc_c01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_globalMove01W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "flexiPlane_bn_c01" -p "flexiPlane_flc_c01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 5.5511151231257827e-017 -1.0785207688568521e-032 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 -8 0 0 1;
	setAttr ".radi" 0.5;
createNode transform -n "flexiPlane_flc_d01" -p "flexiPlane_Follicle_grp01";
createNode follicle -n "flexiPlane_flc_d0Shape1" -p "flexiPlane_flc_d01";
	setAttr -k off ".v";
	setAttr ".pu" 0.26923076923076922;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode scaleConstraint -n "flexiPlane_flc_d01_scaleConstraint1" -p "flexiPlane_flc_d01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_globalMove01W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "flexiPlane_bn_d01" -p "flexiPlane_flc_d01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 5.5511151231257827e-017 -7.7037197775489434e-033 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 -6 0 0 1;
	setAttr ".radi" 0.5;
createNode transform -n "flexiPlane_flc_e01" -p "flexiPlane_Follicle_grp01";
createNode follicle -n "flexiPlane_flc_e0Shape1" -p "flexiPlane_flc_e01";
	setAttr -k off ".v";
	setAttr ".pu" 0.34615384615384615;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode scaleConstraint -n "flexiPlane_flc_e01_scaleConstraint1" -p "flexiPlane_flc_e01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_globalMove01W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "flexiPlane_bn_e01" -p "flexiPlane_flc_e01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 5.5511151231257827e-017 -7.7037197775489434e-033 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 -4 0 0 1;
	setAttr ".radi" 0.5;
createNode transform -n "flexiPlane_flc_f01" -p "flexiPlane_Follicle_grp01";
createNode follicle -n "flexiPlane_flc_f0Shape1" -p "flexiPlane_flc_f01";
	setAttr -k off ".v";
	setAttr ".pu" 0.42307692307692307;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode scaleConstraint -n "flexiPlane_flc_f01_scaleConstraint1" -p "flexiPlane_flc_f01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_globalMove01W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "flexiPlane_bn_f01" -p "flexiPlane_flc_f01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -2.2204460492503131e-016 5.5511151231257827e-017 -7.7037197775489434e-033 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 -2 0 0 1;
	setAttr ".radi" 0.5;
createNode transform -n "flexiPlane_flc_g01" -p "flexiPlane_Follicle_grp01";
createNode follicle -n "flexiPlane_flc_g0Shape1" -p "flexiPlane_flc_g01";
	setAttr -k off ".v";
	setAttr ".pu" 0.5;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode scaleConstraint -n "flexiPlane_flc_g01_scaleConstraint1" -p "flexiPlane_flc_g01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_globalMove01W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "flexiPlane_bn_g01" -p "flexiPlane_flc_g01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.0531133177191805e-016 5.5511151231257827e-017 -9.2444637330587321e-033 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 0 0 0 1;
	setAttr ".radi" 0.5;
createNode transform -n "flexiPlane_flc_h01" -p "flexiPlane_Follicle_grp01";
createNode follicle -n "flexiPlane_flc_h0Shape1" -p "flexiPlane_flc_h01";
	setAttr -k off ".v";
	setAttr ".pu" 0.57692307692307687;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode scaleConstraint -n "flexiPlane_flc_h01_scaleConstraint1" -p "flexiPlane_flc_h01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_globalMove01W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "flexiPlane_bn_h01" -p "flexiPlane_flc_h01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 5.5511151231257827e-017 -7.7037197775489434e-033 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 2 0 0 1;
	setAttr ".radi" 0.5;
createNode transform -n "flexiPlane_flc_i01" -p "flexiPlane_Follicle_grp01";
createNode follicle -n "flexiPlane_flc_i0Shape1" -p "flexiPlane_flc_i01";
	setAttr -k off ".v";
	setAttr ".pu" 0.65384615384615385;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode scaleConstraint -n "flexiPlane_flc_i01_scaleConstraint1" -p "flexiPlane_flc_i01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_globalMove01W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "flexiPlane_bn_i01" -p "flexiPlane_flc_i01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 5.5511151231257827e-017 -7.7037197775489434e-033 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 4 0 0 1;
	setAttr ".radi" 0.5;
createNode transform -n "flexiPlane_flc_j01" -p "flexiPlane_Follicle_grp01";
createNode follicle -n "flexiPlane_flc_j0Shape1" -p "flexiPlane_flc_j01";
	setAttr -k off ".v";
	setAttr ".pu" 0.73076923076923073;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode scaleConstraint -n "flexiPlane_flc_j01_scaleConstraint1" -p "flexiPlane_flc_j01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_globalMove01W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "flexiPlane_bn_j01" -p "flexiPlane_flc_j01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 5.5511151231257827e-017 -9.2444637330587321e-033 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 6 0 0 1;
	setAttr ".radi" 0.5;
createNode transform -n "flexiPlane_flc_k01" -p "flexiPlane_Follicle_grp01";
createNode follicle -n "flexiPlane_flc_k0Shape1" -p "flexiPlane_flc_k01";
	setAttr -k off ".v";
	setAttr ".pu" 0.80769230769230771;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode scaleConstraint -n "flexiPlane_flc_k01_scaleConstraint1" -p "flexiPlane_flc_k01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_globalMove01W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "flexiPlane_bn_k01" -p "flexiPlane_flc_k01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 5.5511151231257827e-017 -9.2444637330587321e-033 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 8 0 0 1;
	setAttr ".radi" 0.5;
createNode transform -n "flexiPlane_flc_l01" -p "flexiPlane_Follicle_grp01";
createNode follicle -n "flexiPlane_flc_l0Shape1" -p "flexiPlane_flc_l01";
	setAttr -k off ".v";
	setAttr ".pu" 0.88461538461538458;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode scaleConstraint -n "flexiPlane_flc_l01_scaleConstraint1" -p "flexiPlane_flc_l01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_globalMove01W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "flexiPlane_bn_l01" -p "flexiPlane_flc_l01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 5.5511151231257827e-017 -7.7037197775489434e-033 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 10 0 0 1;
	setAttr ".radi" 0.5;
createNode transform -n "flexiPlane_flc_m01" -p "flexiPlane_Follicle_grp01";
createNode follicle -n "flexiPlane_flc_m0Shape1" -p "flexiPlane_flc_m01";
	setAttr -k off ".v";
	setAttr ".pu" 0.96153846153846156;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode scaleConstraint -n "flexiPlane_flc_m01_scaleConstraint1" -p "flexiPlane_flc_m01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_globalMove01W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "flexiPlane_bn_m01" -p "flexiPlane_flc_m01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 5.5511151231257827e-017 -9.2444637330587321e-033 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 12 0 0 1;
	setAttr ".radi" 0.5;
createNode transform -n "FlexiPlane_Twist_Handle01" -p "flexiPlane_extraNodes01";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 -5 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 13 13 13 ;
	setAttr ".smd" 7;
createNode deformTwist -n "FlexiPlane_Twist_HandleShape" -p "FlexiPlane_Twist_Handle01";
	setAttr -k off ".v";
	setAttr ".dd" -type "doubleArray" 4 -1 1 0 0 ;
	setAttr ".hw" 1.0999999999560002;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode lambert -n "FlexiPlane01:felciPlane_Surface_Material01";
	setAttr ".c" -type "float3" 0.058439061 0.69880581 0.74509805 ;
	setAttr ".it" -type "float3" 0.72179753 0.72179753 0.72179753 ;
createNode shadingEngine -n "FlexiPlane01:lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "FlexiPlane01:materialInfo1";
createNode hyperGraphInfo -n "FlexiPlane01:nodeEditorPanel2Info";
createNode hyperView -n "FlexiPlane01:hyperView1";
	setAttr ".vl" -type "double2" -1182.3290725876227 -118.38955018019534 ;
	setAttr ".vh" -type "double2" 760.52807026951825 483.99140220075657 ;
	setAttr ".dag" no;
createNode hyperLayout -n "FlexiPlane01:hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 6 ".hyp";
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" -117.14286041259766;
	setAttr ".hyp[2].y" 131.42857360839844;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].x" 140;
	setAttr ".hyp[3].y" 131.42857360839844;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].x" -460;
	setAttr ".hyp[4].y" 304.28570556640625;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".anf" yes;
createNode surfaceShader -n "FlexiPlane01:flexiPlane_ss_midBend01";
	setAttr ".oc" -type "float3" 0.97321701 1 0 ;
createNode shadingEngine -n "FlexiPlane01:surfaceShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "FlexiPlane01:materialInfo2";
createNode script -n "FlexiPlane01:uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n"
		+ "                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "FlexiPlane01:sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode multiplyDivide -n "FlexiPlane01:flexiPlane_div_squashSretch_length01";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 10 1 1 ;
createNode multiplyDivide -n "FlexiPlane01:flexiPlane_div_volumne01";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode condition -n "FlexiPlane01:flexiPlane_cond_volumne01";
	setAttr ".st" 1;
createNode blendShape -n "flexiPlane_BS_node01";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".w[0]"  1;
	setAttr ".aal" -type "attributeAlias" {"flexiPlane_Surface_BS01","weight[0]"} ;
createNode tweak -n "flexiPlane_bs_tweak1";
createNode objectSet -n "flexiPlane_BS_node01Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "flexiPlane_BS_node01GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "flexiPlane_BS_node01GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode cluster -n "flexiPlane_cl_a01Cluster";
	setAttr ".wl[0].w[1]"  0.5;
	setAttr ".rel" yes;
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "flexiPlane_tweak1";
createNode objectSet -n "cluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0:1]";
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "flexiPlane_cl_c01Cluster";
	setAttr ".wl[0].w[1]"  0.5;
	setAttr ".rel" yes;
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1:2]";
createNode cluster -n "flexiPlane_cl_b01Cluster";
	setAttr ".rel" yes;
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster3Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster3GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster3GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1]";
createNode wire -n "flexiPlane_wrAttr_surface01";
	setAttr ".dds[0]"  20;
	setAttr ".sc[0]"  1;
createNode tweak -n "flexiPlane_cls_tweak01";
createNode objectSet -n "wire1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "wire1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "wire1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode objectSet -n "tweakSet3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode makeNurbCircle -n "makeNurbCircle1";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 0.0001;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 0.45988950734889361 0 0 0 0 0.45988950734889361 0 0
		 0 0 0.45988950734889361 0 0 0 -2 1;
createNode nonLinear -n "FlexiPlane_Twist_Attr01";
	addAttr -is true -ci true -k true -sn "sa" -ln "startAngle" -smn -15 -smx 15 -at "doubleAngle";
	addAttr -is true -ci true -k true -sn "ea" -ln "endAngle" -smn -15 -smx 15 -at "doubleAngle";
	addAttr -is true -ci true -k true -sn "lb" -ln "lowBound" -dv -1 -max 0 -smn -10 
		-smx 0 -at "double";
	addAttr -is true -ci true -k true -sn "hb" -ln "highBound" -dv 1 -min 0 -smn 0 -smx 
		10 -at "double";
	setAttr -k on ".sa";
	setAttr -k on ".ea";
	setAttr -k on ".lb";
	setAttr -k on ".hb";
createNode objectSet -n "twist1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "twist1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "twist1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode curveInfo -n "flexiPlane_CrvInfo01";
createNode multiplyDivide -n "FlexiPlane_SquashStretch_Divide01";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 26 1 1 ;
createNode multiplyDivide -n "FlexiPlane_Volumne_Divide01";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode condition -n "FlexiPlane_OnOff01";
	setAttr ".st" 1;
createNode hyperGraphInfo -n "nodeView1";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -188.0952380952381 -115.47619047619054 ;
	setAttr ".vh" -type "double2" 1077.3809523809525 410.71428571428572 ;
	setAttr ".dag" no;
	setAttr ".d" -type "string" "Flexi_Squash01";
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
	setAttr ".hyp[0].x" -42.857143402099609;
	setAttr ".hyp[0].y" 240;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" -42.857143402099609;
	setAttr ".hyp[1].y" 68.571426391601563;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 245.23809814453125;
	setAttr ".hyp[2].y" -7.6190476417541504;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].x" 492.26190185546875;
	setAttr ".hyp[3].y" 92.380950927734375;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].x" 257.14285278320312;
	setAttr ".hyp[4].y" 240;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".anf" yes;
createNode dagPose -n "bindPose1";
	setAttr -s 29 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 -12 -3.0814879110195774e-033 5.5511151231257827e-017 1;
	setAttr ".wm[5]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 -10 -3.0814879110195774e-033 5.5511151231257827e-017 1;
	setAttr ".wm[7]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 -7.9999999999999982 -1.5407439555097887e-033 5.5511151231257827e-017 1;
	setAttr ".wm[9]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 -6 -4.622231866529366e-033 5.5511151231257827e-017 1;
	setAttr ".wm[11]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 -4 -4.622231866529366e-033 5.5511151231257827e-017 1;
	setAttr ".wm[13]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 -1.9999999999999998 -4.622231866529366e-033 5.5511151231257827e-017 1;
	setAttr ".wm[15]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 -3.0531133177191805e-016 -3.0814879110195774e-033 5.5511151231257827e-017 1;
	setAttr ".wm[17]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 1.9999999999999982 -4.622231866529366e-033 5.5511151231257827e-017 1;
	setAttr ".wm[19]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 4 -4.622231866529366e-033 5.5511151231257827e-017 1;
	setAttr ".wm[21]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 5.9999999999999982 -3.0814879110195774e-033 5.5511151231257827e-017 1;
	setAttr ".wm[23]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 8 -3.0814879110195774e-033 5.5511151231257827e-017 1;
	setAttr ".wm[25]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 9.9999999999999982 -4.622231866529366e-033 5.5511151231257827e-017 1;
	setAttr ".wm[27]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 12 -3.0814879110195774e-033 5.5511151231257827e-017 1;
	setAttr -s 29 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 0 0 0 -12
		 -3.0814879110195774e-033 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 5.5511151231257827e-017
		 -9.2444637330587321e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0 0 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 0 0 0 -10
		 -3.0814879110195774e-033 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 5.5511151231257827e-017
		 -9.2444637330587321e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0 0 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 0 0 0 -7.9999999999999982
		 -1.5407439555097887e-033 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.7763568394002505e-015
		 5.5511151231257827e-017 -1.0785207688568521e-032 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.70710678118654746 0 0 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 8.3266726846886814e-017
		 0 0 -6 -4.622231866529366e-033 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 5.5511151231257827e-017
		 -7.7037197775489434e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0 0 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 0 0 0 -4
		 -4.622231866529366e-033 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 5.5511151231257827e-017
		 -7.7037197775489434e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0 0 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 0 0 0 -1.9999999999999998
		 -4.622231866529366e-033 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2204460492503131e-016
		 5.5511151231257827e-017 -7.7037197775489434e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.70710678118654746 0 0 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 8.3266726846886568e-017
		 -4.6222318665293572e-033 0 -3.0531133177191805e-016 -3.0814879110195774e-033
		 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.0531133177191805e-016
		 5.5511151231257827e-017 -9.2444637330587321e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.70710678118654746 0 0 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 0 0 0 1.9999999999999982
		 -4.622231866529366e-033 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7763568394002505e-015
		 5.5511151231257827e-017 -7.7037197775489434e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.70710678118654746 0 0 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 0 -4.6222318665293702e-033 0 4
		 -4.622231866529366e-033 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 5.5511151231257827e-017
		 -7.7037197775489434e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0 0 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 0 0 0 5.9999999999999982
		 -3.0814879110195774e-033 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7763568394002505e-015
		 5.5511151231257827e-017 -9.2444637330587321e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.70710678118654746 0 0 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 8.3266726846886137e-017
		 -4.6222318665293332e-033 0 8 -3.0814879110195774e-033 5.5511151231257827e-017 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 5.5511151231257827e-017
		 -9.2444637330587321e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0 0 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 0 0 0 9.9999999999999982
		 -4.622231866529366e-033 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7763568394002505e-015
		 5.5511151231257827e-017 -7.7037197775489434e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.70710678118654746 0 0 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 0 0 0 12
		 -3.0814879110195774e-033 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 5.5511151231257827e-017
		 -9.2444637330587321e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0 0 0.70710678118654768 1
		 1 1 yes;
	setAttr -s 29 ".m";
	setAttr -s 29 ".p";
	setAttr -s 29 ".g[0:28]" yes yes yes yes no yes no yes no yes no yes 
		no yes no yes no yes no yes no yes no yes no yes no yes no;
	setAttr ".bp" yes;
createNode hyperGraphInfo -n "nodeEditorPanel3Info";
createNode hyperView -n "hyperView2";
	setAttr ".vl" -type "double2" -188.09523809523805 -216.43086570816749 ;
	setAttr ".vh" -type "double2" 1078.5714285714284 510.47848475578678 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout2";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
	setAttr ".hyp[0].x" -42.857143402099609;
	setAttr ".hyp[0].y" 240;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" -42.857143402099609;
	setAttr ".hyp[1].y" 68.571426391601563;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 245.23809814453125;
	setAttr ".hyp[2].y" -7.6190476417541504;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].x" 492.26190185546875;
	setAttr ".hyp[3].y" 92.380950927734375;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].x" 257.14285278320312;
	setAttr ".hyp[4].y" 240;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".anf" yes;
createNode hyperGraphInfo -n "nodeEditorPanel2Info";
createNode hyperView -n "hyperView3";
	setAttr ".vl" -type "double2" -188.0952380952381 -115.47619047619054 ;
	setAttr ".vh" -type "double2" 1077.3809523809525 410.71428571428572 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout3";
	setAttr ".ihi" 0;
	setAttr -s 6 ".hyp";
	setAttr ".hyp[0].x" -42.857143402099609;
	setAttr ".hyp[0].y" 240;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" -42.857143402099609;
	setAttr ".hyp[1].y" 68.571426391601563;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 245.23809814453125;
	setAttr ".hyp[2].y" -7.6190476417541504;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].x" 492.26190185546875;
	setAttr ".hyp[3].y" 92.380950927734375;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].x" 257.14285278320312;
	setAttr ".hyp[4].y" 240;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].x" 52.738094329833984;
	setAttr ".hyp[5].y" 410.71429443359375;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".anf" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "transformGeometry1.og" "flexiPlane_cnt_Global01Shape.cr";
connectAttr "flexiPlane_globalMove01_scaleConstraint1.csx" "flexiPlane_globalMove01.sx"
		;
connectAttr "flexiPlane_globalMove01_scaleConstraint1.csy" "flexiPlane_globalMove01.sy"
		;
connectAttr "flexiPlane_globalMove01_scaleConstraint1.csz" "flexiPlane_globalMove01.sz"
		;
connectAttr "flexiPlane_globalMove01_pointConstraint1.ctx" "flexiPlane_globalMove01.tx"
		;
connectAttr "flexiPlane_globalMove01_pointConstraint1.cty" "flexiPlane_globalMove01.ty"
		;
connectAttr "flexiPlane_globalMove01_pointConstraint1.ctz" "flexiPlane_globalMove01.tz"
		;
connectAttr "flexiPlane_globalMove01_orientConstraint1.crx" "flexiPlane_globalMove01.rx"
		;
connectAttr "flexiPlane_globalMove01_orientConstraint1.cry" "flexiPlane_globalMove01.ry"
		;
connectAttr "flexiPlane_globalMove01_orientConstraint1.crz" "flexiPlane_globalMove01.rz"
		;
connectAttr "flexiPlane_BS_node01GroupId.id" "flexiPlane_Surface0Shape1.iog.og[0].gid"
		;
connectAttr "flexiPlane_BS_node01Set.mwc" "flexiPlane_Surface0Shape1.iog.og[0].gco"
		;
connectAttr "groupId2.id" "flexiPlane_Surface0Shape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "flexiPlane_Surface0Shape1.iog.og[1].gco";
connectAttr "flexiPlane_BS_node01.og[0]" "flexiPlane_Surface0Shape1.cr";
connectAttr "flexiPlane_bs_tweak1.pl[0].cp[0]" "flexiPlane_Surface0Shape1.twl";
connectAttr "flexiPlane_midBend_grp01_pointConstraint1.ctx" "flexiPlane_midBend_grp01.tx"
		;
connectAttr "flexiPlane_midBend_grp01_pointConstraint1.cty" "flexiPlane_midBend_grp01.ty"
		;
connectAttr "flexiPlane_midBend_grp01_pointConstraint1.ctz" "flexiPlane_midBend_grp01.tz"
		;
connectAttr "flexiPlane_midBend_grp01.pim" "flexiPlane_midBend_grp01_pointConstraint1.cpim"
		;
connectAttr "flexiPlane_midBend_grp01.rp" "flexiPlane_midBend_grp01_pointConstraint1.crp"
		;
connectAttr "flexiPlane_midBend_grp01.rpt" "flexiPlane_midBend_grp01_pointConstraint1.crt"
		;
connectAttr "flexiPlane_cnt_a01.t" "flexiPlane_midBend_grp01_pointConstraint1.tg[0].tt"
		;
connectAttr "flexiPlane_cnt_a01.rp" "flexiPlane_midBend_grp01_pointConstraint1.tg[0].trp"
		;
connectAttr "flexiPlane_cnt_a01.rpt" "flexiPlane_midBend_grp01_pointConstraint1.tg[0].trt"
		;
connectAttr "flexiPlane_cnt_a01.pm" "flexiPlane_midBend_grp01_pointConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_midBend_grp01_pointConstraint1.w0" "flexiPlane_midBend_grp01_pointConstraint1.tg[0].tw"
		;
connectAttr "flexiPlane_cnt_b01.t" "flexiPlane_midBend_grp01_pointConstraint1.tg[1].tt"
		;
connectAttr "flexiPlane_cnt_b01.rp" "flexiPlane_midBend_grp01_pointConstraint1.tg[1].trp"
		;
connectAttr "flexiPlane_cnt_b01.rpt" "flexiPlane_midBend_grp01_pointConstraint1.tg[1].trt"
		;
connectAttr "flexiPlane_cnt_b01.pm" "flexiPlane_midBend_grp01_pointConstraint1.tg[1].tpm"
		;
connectAttr "flexiPlane_midBend_grp01_pointConstraint1.w1" "flexiPlane_midBend_grp01_pointConstraint1.tg[1].tw"
		;
connectAttr "flexiPlane_globalMove01.pim" "flexiPlane_globalMove01_pointConstraint1.cpim"
		;
connectAttr "flexiPlane_globalMove01.rp" "flexiPlane_globalMove01_pointConstraint1.crp"
		;
connectAttr "flexiPlane_globalMove01.rpt" "flexiPlane_globalMove01_pointConstraint1.crt"
		;
connectAttr "flexiPlane_cnt_Global01.t" "flexiPlane_globalMove01_pointConstraint1.tg[0].tt"
		;
connectAttr "flexiPlane_cnt_Global01.rp" "flexiPlane_globalMove01_pointConstraint1.tg[0].trp"
		;
connectAttr "flexiPlane_cnt_Global01.rpt" "flexiPlane_globalMove01_pointConstraint1.tg[0].trt"
		;
connectAttr "flexiPlane_cnt_Global01.pm" "flexiPlane_globalMove01_pointConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_globalMove01_pointConstraint1.w0" "flexiPlane_globalMove01_pointConstraint1.tg[0].tw"
		;
connectAttr "flexiPlane_globalMove01.ro" "flexiPlane_globalMove01_orientConstraint1.cro"
		;
connectAttr "flexiPlane_globalMove01.pim" "flexiPlane_globalMove01_orientConstraint1.cpim"
		;
connectAttr "flexiPlane_cnt_Global01.r" "flexiPlane_globalMove01_orientConstraint1.tg[0].tr"
		;
connectAttr "flexiPlane_cnt_Global01.ro" "flexiPlane_globalMove01_orientConstraint1.tg[0].tro"
		;
connectAttr "flexiPlane_cnt_Global01.pm" "flexiPlane_globalMove01_orientConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_globalMove01_orientConstraint1.w0" "flexiPlane_globalMove01_orientConstraint1.tg[0].tw"
		;
connectAttr "flexiPlane_globalMove01.pim" "flexiPlane_globalMove01_scaleConstraint1.cpim"
		;
connectAttr "flexiPlane_cnt_Global01.s" "flexiPlane_globalMove01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_cnt_Global01.pm" "flexiPlane_globalMove01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_globalMove01_scaleConstraint1.w0" "flexiPlane_globalMove01_scaleConstraint1.tg[0].tw"
		;
connectAttr "flexiPlane_cnt_a01.t" "flexiPlane_cl_a01.t";
connectAttr "flexiPlane_midBend01.t" "flexiPlane_cl_b01.t";
connectAttr "flexiPlane_cnt_b01.t" "flexiPlane_cl_c01.t";
connectAttr "flexiPlane_cl_b01Cluster.og[0]" "flexiPlane_wire_surface01Shape.cr"
		;
connectAttr "flexiPlane_tweak1.pl[0].cp[0]" "flexiPlane_wire_surface01Shape.twl"
		;
connectAttr "cluster1GroupId.id" "flexiPlane_wire_surface01Shape.iog.og[0].gid";
connectAttr "cluster1Set.mwc" "flexiPlane_wire_surface01Shape.iog.og[0].gco";
connectAttr "groupId4.id" "flexiPlane_wire_surface01Shape.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "flexiPlane_wire_surface01Shape.iog.og[1].gco";
connectAttr "cluster2GroupId.id" "flexiPlane_wire_surface01Shape.iog.og[2].gid";
connectAttr "cluster2Set.mwc" "flexiPlane_wire_surface01Shape.iog.og[2].gco";
connectAttr "cluster3GroupId.id" "flexiPlane_wire_surface01Shape.iog.og[3].gid";
connectAttr "cluster3Set.mwc" "flexiPlane_wire_surface01Shape.iog.og[3].gco";
connectAttr "wire1GroupId.id" "flexiPlane_Surface_BS0Shape1.iog.og[4].gid";
connectAttr "wire1Set.mwc" "flexiPlane_Surface_BS0Shape1.iog.og[4].gco";
connectAttr "groupId6.id" "flexiPlane_Surface_BS0Shape1.iog.og[5].gid";
connectAttr "tweakSet3.mwc" "flexiPlane_Surface_BS0Shape1.iog.og[5].gco";
connectAttr "twist1GroupId.id" "flexiPlane_Surface_BS0Shape1.iog.og[6].gid";
connectAttr "twist1Set.mwc" "flexiPlane_Surface_BS0Shape1.iog.og[6].gco";
connectAttr "flexiPlane_wrAttr_surface01.og[0]" "flexiPlane_Surface_BS0Shape1.cr"
		;
connectAttr "flexiPlane_cls_tweak01.pl[0].cp[0]" "flexiPlane_Surface_BS0Shape1.twl"
		;
connectAttr "flexiPlane_flc_a0Shape1.ot" "flexiPlane_flc_a01.t" -l on;
connectAttr "flexiPlane_flc_a0Shape1.or" "flexiPlane_flc_a01.r" -l on;
connectAttr "flexiPlane_flc_a01_scaleConstraint1.csx" "flexiPlane_flc_a01.sx";
connectAttr "flexiPlane_flc_a01_scaleConstraint1.csy" "flexiPlane_flc_a01.sy";
connectAttr "flexiPlane_flc_a01_scaleConstraint1.csz" "flexiPlane_flc_a01.sz";
connectAttr "flexiPlane_Surface0Shape1.wm" "flexiPlane_flc_a0Shape1.iwm";
connectAttr "flexiPlane_Surface0Shape1.l" "flexiPlane_flc_a0Shape1.is";
connectAttr "flexiPlane_flc_a01.pim" "flexiPlane_flc_a01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_a01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_a01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_a01_scaleConstraint1.w0" "flexiPlane_flc_a01_scaleConstraint1.tg[0].tw"
		;
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_a01.sy";
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_a01.sz";
connectAttr "flexiPlane_flc_b0Shape1.ot" "flexiPlane_flc_b01.t" -l on;
connectAttr "flexiPlane_flc_b0Shape1.or" "flexiPlane_flc_b01.r" -l on;
connectAttr "flexiPlane_flc_b01_scaleConstraint1.csx" "flexiPlane_flc_b01.sx";
connectAttr "flexiPlane_flc_b01_scaleConstraint1.csy" "flexiPlane_flc_b01.sy";
connectAttr "flexiPlane_flc_b01_scaleConstraint1.csz" "flexiPlane_flc_b01.sz";
connectAttr "flexiPlane_Surface0Shape1.wm" "flexiPlane_flc_b0Shape1.iwm";
connectAttr "flexiPlane_Surface0Shape1.l" "flexiPlane_flc_b0Shape1.is";
connectAttr "flexiPlane_flc_b01.pim" "flexiPlane_flc_b01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_b01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_b01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_b01_scaleConstraint1.w0" "flexiPlane_flc_b01_scaleConstraint1.tg[0].tw"
		;
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_b01.sy";
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_b01.sz";
connectAttr "flexiPlane_flc_c0Shape1.ot" "flexiPlane_flc_c01.t" -l on;
connectAttr "flexiPlane_flc_c0Shape1.or" "flexiPlane_flc_c01.r" -l on;
connectAttr "flexiPlane_flc_c01_scaleConstraint1.csx" "flexiPlane_flc_c01.sx";
connectAttr "flexiPlane_flc_c01_scaleConstraint1.csy" "flexiPlane_flc_c01.sy";
connectAttr "flexiPlane_flc_c01_scaleConstraint1.csz" "flexiPlane_flc_c01.sz";
connectAttr "flexiPlane_Surface0Shape1.wm" "flexiPlane_flc_c0Shape1.iwm";
connectAttr "flexiPlane_Surface0Shape1.l" "flexiPlane_flc_c0Shape1.is";
connectAttr "flexiPlane_flc_c01.pim" "flexiPlane_flc_c01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_c01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_c01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_c01_scaleConstraint1.w0" "flexiPlane_flc_c01_scaleConstraint1.tg[0].tw"
		;
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_c01.sy";
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_c01.sz";
connectAttr "flexiPlane_flc_d0Shape1.ot" "flexiPlane_flc_d01.t" -l on;
connectAttr "flexiPlane_flc_d0Shape1.or" "flexiPlane_flc_d01.r" -l on;
connectAttr "flexiPlane_flc_d01_scaleConstraint1.csx" "flexiPlane_flc_d01.sx";
connectAttr "flexiPlane_flc_d01_scaleConstraint1.csy" "flexiPlane_flc_d01.sy";
connectAttr "flexiPlane_flc_d01_scaleConstraint1.csz" "flexiPlane_flc_d01.sz";
connectAttr "flexiPlane_Surface0Shape1.wm" "flexiPlane_flc_d0Shape1.iwm";
connectAttr "flexiPlane_Surface0Shape1.l" "flexiPlane_flc_d0Shape1.is";
connectAttr "flexiPlane_flc_d01.pim" "flexiPlane_flc_d01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_d01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_d01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_d01_scaleConstraint1.w0" "flexiPlane_flc_d01_scaleConstraint1.tg[0].tw"
		;
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_d01.sy";
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_d01.sz";
connectAttr "flexiPlane_flc_e0Shape1.ot" "flexiPlane_flc_e01.t" -l on;
connectAttr "flexiPlane_flc_e0Shape1.or" "flexiPlane_flc_e01.r" -l on;
connectAttr "flexiPlane_flc_e01_scaleConstraint1.csx" "flexiPlane_flc_e01.sx";
connectAttr "flexiPlane_flc_e01_scaleConstraint1.csy" "flexiPlane_flc_e01.sy";
connectAttr "flexiPlane_flc_e01_scaleConstraint1.csz" "flexiPlane_flc_e01.sz";
connectAttr "flexiPlane_Surface0Shape1.wm" "flexiPlane_flc_e0Shape1.iwm";
connectAttr "flexiPlane_Surface0Shape1.l" "flexiPlane_flc_e0Shape1.is";
connectAttr "flexiPlane_flc_e01.pim" "flexiPlane_flc_e01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_e01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_e01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_e01_scaleConstraint1.w0" "flexiPlane_flc_e01_scaleConstraint1.tg[0].tw"
		;
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_e01.sy";
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_e01.sz";
connectAttr "flexiPlane_flc_f0Shape1.ot" "flexiPlane_flc_f01.t" -l on;
connectAttr "flexiPlane_flc_f0Shape1.or" "flexiPlane_flc_f01.r" -l on;
connectAttr "flexiPlane_flc_f01_scaleConstraint1.csx" "flexiPlane_flc_f01.sx";
connectAttr "flexiPlane_flc_f01_scaleConstraint1.csy" "flexiPlane_flc_f01.sy";
connectAttr "flexiPlane_flc_f01_scaleConstraint1.csz" "flexiPlane_flc_f01.sz";
connectAttr "flexiPlane_Surface0Shape1.wm" "flexiPlane_flc_f0Shape1.iwm";
connectAttr "flexiPlane_Surface0Shape1.l" "flexiPlane_flc_f0Shape1.is";
connectAttr "flexiPlane_flc_f01.pim" "flexiPlane_flc_f01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_f01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_f01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_f01_scaleConstraint1.w0" "flexiPlane_flc_f01_scaleConstraint1.tg[0].tw"
		;
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_f01.sy";
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_f01.sz";
connectAttr "flexiPlane_flc_g0Shape1.ot" "flexiPlane_flc_g01.t" -l on;
connectAttr "flexiPlane_flc_g0Shape1.or" "flexiPlane_flc_g01.r" -l on;
connectAttr "flexiPlane_flc_g01_scaleConstraint1.csx" "flexiPlane_flc_g01.sx";
connectAttr "flexiPlane_flc_g01_scaleConstraint1.csy" "flexiPlane_flc_g01.sy";
connectAttr "flexiPlane_flc_g01_scaleConstraint1.csz" "flexiPlane_flc_g01.sz";
connectAttr "flexiPlane_Surface0Shape1.wm" "flexiPlane_flc_g0Shape1.iwm";
connectAttr "flexiPlane_Surface0Shape1.l" "flexiPlane_flc_g0Shape1.is";
connectAttr "flexiPlane_flc_g01.pim" "flexiPlane_flc_g01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_g01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_g01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_g01_scaleConstraint1.w0" "flexiPlane_flc_g01_scaleConstraint1.tg[0].tw"
		;
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_g01.sy";
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_g01.sz";
connectAttr "flexiPlane_flc_h0Shape1.ot" "flexiPlane_flc_h01.t" -l on;
connectAttr "flexiPlane_flc_h0Shape1.or" "flexiPlane_flc_h01.r" -l on;
connectAttr "flexiPlane_flc_h01_scaleConstraint1.csx" "flexiPlane_flc_h01.sx";
connectAttr "flexiPlane_flc_h01_scaleConstraint1.csy" "flexiPlane_flc_h01.sy";
connectAttr "flexiPlane_flc_h01_scaleConstraint1.csz" "flexiPlane_flc_h01.sz";
connectAttr "flexiPlane_Surface0Shape1.wm" "flexiPlane_flc_h0Shape1.iwm";
connectAttr "flexiPlane_Surface0Shape1.l" "flexiPlane_flc_h0Shape1.is";
connectAttr "flexiPlane_flc_h01.pim" "flexiPlane_flc_h01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_h01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_h01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_h01_scaleConstraint1.w0" "flexiPlane_flc_h01_scaleConstraint1.tg[0].tw"
		;
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_h01.sy";
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_h01.sz";
connectAttr "flexiPlane_flc_i0Shape1.ot" "flexiPlane_flc_i01.t" -l on;
connectAttr "flexiPlane_flc_i0Shape1.or" "flexiPlane_flc_i01.r" -l on;
connectAttr "flexiPlane_flc_i01_scaleConstraint1.csx" "flexiPlane_flc_i01.sx";
connectAttr "flexiPlane_flc_i01_scaleConstraint1.csy" "flexiPlane_flc_i01.sy";
connectAttr "flexiPlane_flc_i01_scaleConstraint1.csz" "flexiPlane_flc_i01.sz";
connectAttr "flexiPlane_Surface0Shape1.wm" "flexiPlane_flc_i0Shape1.iwm";
connectAttr "flexiPlane_Surface0Shape1.l" "flexiPlane_flc_i0Shape1.is";
connectAttr "flexiPlane_flc_i01.pim" "flexiPlane_flc_i01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_i01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_i01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_i01_scaleConstraint1.w0" "flexiPlane_flc_i01_scaleConstraint1.tg[0].tw"
		;
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_i01.sy";
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_i01.sz";
connectAttr "flexiPlane_flc_j0Shape1.ot" "flexiPlane_flc_j01.t" -l on;
connectAttr "flexiPlane_flc_j0Shape1.or" "flexiPlane_flc_j01.r" -l on;
connectAttr "flexiPlane_flc_j01_scaleConstraint1.csx" "flexiPlane_flc_j01.sx";
connectAttr "flexiPlane_flc_j01_scaleConstraint1.csy" "flexiPlane_flc_j01.sy";
connectAttr "flexiPlane_flc_j01_scaleConstraint1.csz" "flexiPlane_flc_j01.sz";
connectAttr "flexiPlane_Surface0Shape1.wm" "flexiPlane_flc_j0Shape1.iwm";
connectAttr "flexiPlane_Surface0Shape1.l" "flexiPlane_flc_j0Shape1.is";
connectAttr "flexiPlane_flc_j01.pim" "flexiPlane_flc_j01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_j01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_j01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_j01_scaleConstraint1.w0" "flexiPlane_flc_j01_scaleConstraint1.tg[0].tw"
		;
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_j01.sy";
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_j01.sz";
connectAttr "flexiPlane_flc_k0Shape1.ot" "flexiPlane_flc_k01.t" -l on;
connectAttr "flexiPlane_flc_k0Shape1.or" "flexiPlane_flc_k01.r" -l on;
connectAttr "flexiPlane_flc_k01_scaleConstraint1.csx" "flexiPlane_flc_k01.sx";
connectAttr "flexiPlane_flc_k01_scaleConstraint1.csy" "flexiPlane_flc_k01.sy";
connectAttr "flexiPlane_flc_k01_scaleConstraint1.csz" "flexiPlane_flc_k01.sz";
connectAttr "flexiPlane_Surface0Shape1.wm" "flexiPlane_flc_k0Shape1.iwm";
connectAttr "flexiPlane_Surface0Shape1.l" "flexiPlane_flc_k0Shape1.is";
connectAttr "flexiPlane_flc_k01.pim" "flexiPlane_flc_k01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_k01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_k01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_k01_scaleConstraint1.w0" "flexiPlane_flc_k01_scaleConstraint1.tg[0].tw"
		;
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_k01.sy";
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_k01.sz";
connectAttr "flexiPlane_flc_l0Shape1.ot" "flexiPlane_flc_l01.t" -l on;
connectAttr "flexiPlane_flc_l0Shape1.or" "flexiPlane_flc_l01.r" -l on;
connectAttr "flexiPlane_flc_l01_scaleConstraint1.csx" "flexiPlane_flc_l01.sx";
connectAttr "flexiPlane_flc_l01_scaleConstraint1.csy" "flexiPlane_flc_l01.sy";
connectAttr "flexiPlane_flc_l01_scaleConstraint1.csz" "flexiPlane_flc_l01.sz";
connectAttr "flexiPlane_Surface0Shape1.wm" "flexiPlane_flc_l0Shape1.iwm";
connectAttr "flexiPlane_Surface0Shape1.l" "flexiPlane_flc_l0Shape1.is";
connectAttr "flexiPlane_flc_l01.pim" "flexiPlane_flc_l01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_l01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_l01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_l01_scaleConstraint1.w0" "flexiPlane_flc_l01_scaleConstraint1.tg[0].tw"
		;
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_l01.sy";
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_l01.sz";
connectAttr "flexiPlane_flc_m0Shape1.ot" "flexiPlane_flc_m01.t" -l on;
connectAttr "flexiPlane_flc_m0Shape1.or" "flexiPlane_flc_m01.r" -l on;
connectAttr "flexiPlane_flc_m01_scaleConstraint1.csx" "flexiPlane_flc_m01.sx";
connectAttr "flexiPlane_flc_m01_scaleConstraint1.csy" "flexiPlane_flc_m01.sy";
connectAttr "flexiPlane_flc_m01_scaleConstraint1.csz" "flexiPlane_flc_m01.sz";
connectAttr "flexiPlane_Surface0Shape1.wm" "flexiPlane_flc_m0Shape1.iwm";
connectAttr "flexiPlane_Surface0Shape1.l" "flexiPlane_flc_m0Shape1.is";
connectAttr "flexiPlane_flc_m01.pim" "flexiPlane_flc_m01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_m01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_m01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_m01_scaleConstraint1.w0" "flexiPlane_flc_m01_scaleConstraint1.tg[0].tw"
		;
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_m01.sy";
connectAttr "FlexiPlane_OnOff01.ocr" "flexiPlane_bn_m01.sz";
connectAttr "FlexiPlane_Twist_Attr01.msg" "FlexiPlane_Twist_Handle01.sml";
connectAttr "FlexiPlane_Twist_Attr01.sa" "FlexiPlane_Twist_HandleShape.sa";
connectAttr "FlexiPlane_Twist_Attr01.ea" "FlexiPlane_Twist_HandleShape.ea";
connectAttr "FlexiPlane_Twist_Attr01.lb" "FlexiPlane_Twist_HandleShape.lb";
connectAttr "FlexiPlane_Twist_Attr01.hb" "FlexiPlane_Twist_HandleShape.hb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FlexiPlane01:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FlexiPlane01:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FlexiPlane01:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FlexiPlane01:surfaceShader1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "FlexiPlane01:felciPlane_Surface_Material01.oc" "FlexiPlane01:lambert2SG.ss"
		;
connectAttr "flexiPlane_Surface0Shape1.iog" "FlexiPlane01:lambert2SG.dsm" -na;
connectAttr "flexiPlane_Surface_BS0Shape1.iog" "FlexiPlane01:lambert2SG.dsm" -na
		;
connectAttr "FlexiPlane01:lambert2SG.msg" "FlexiPlane01:materialInfo1.sg";
connectAttr "FlexiPlane01:felciPlane_Surface_Material01.msg" "FlexiPlane01:materialInfo1.m"
		;
connectAttr "FlexiPlane01:hyperView1.msg" "FlexiPlane01:nodeEditorPanel2Info.b[0]"
		;
connectAttr "FlexiPlane01:hyperLayout1.msg" "FlexiPlane01:hyperView1.hl";
connectAttr "FlexiPlane01:flexiPlane_div_squashSretch_length01.msg" "FlexiPlane01:hyperLayout1.hyp[2].dn"
		;
connectAttr "FlexiPlane01:flexiPlane_div_volumne01.msg" "FlexiPlane01:hyperLayout1.hyp[3].dn"
		;
connectAttr "FlexiPlane01:flexiPlane_cond_volumne01.msg" "FlexiPlane01:hyperLayout1.hyp[4].dn"
		;
connectAttr "FlexiPlane01:flexiPlane_ss_midBend01.oc" "FlexiPlane01:surfaceShader1SG.ss"
		;
connectAttr "flexiPlane_midBend0Shape1.iog" "FlexiPlane01:surfaceShader1SG.dsm" 
		-na;
connectAttr "FlexiPlane01:surfaceShader1SG.msg" "FlexiPlane01:materialInfo2.sg";
connectAttr "FlexiPlane01:flexiPlane_ss_midBend01.msg" "FlexiPlane01:materialInfo2.m"
		;
connectAttr "FlexiPlane01:flexiPlane_ss_midBend01.msg" "FlexiPlane01:materialInfo2.t"
		 -na;
connectAttr "FlexiPlane01:flexiPlane_div_squashSretch_length01.ox" "FlexiPlane01:flexiPlane_div_volumne01.i2x"
		;
connectAttr "FlexiPlane01:flexiPlane_div_volumne01.ox" "FlexiPlane01:flexiPlane_cond_volumne01.ctr"
		;
connectAttr "flexiPlane_BS_node01GroupParts.og" "flexiPlane_BS_node01.ip[0].ig";
connectAttr "flexiPlane_BS_node01GroupId.id" "flexiPlane_BS_node01.ip[0].gi";
connectAttr "flexiPlane_Surface_BS0Shape1.ws" "flexiPlane_BS_node01.it[0].itg[0].iti[6000].igt"
		;
connectAttr "groupParts2.og" "flexiPlane_bs_tweak1.ip[0].ig";
connectAttr "groupId2.id" "flexiPlane_bs_tweak1.ip[0].gi";
connectAttr "flexiPlane_BS_node01GroupId.msg" "flexiPlane_BS_node01Set.gn" -na;
connectAttr "flexiPlane_Surface0Shape1.iog.og[0]" "flexiPlane_BS_node01Set.dsm" 
		-na;
connectAttr "flexiPlane_BS_node01.msg" "flexiPlane_BS_node01Set.ub[0]";
connectAttr "flexiPlane_bs_tweak1.og[0]" "flexiPlane_BS_node01GroupParts.ig";
connectAttr "flexiPlane_BS_node01GroupId.id" "flexiPlane_BS_node01GroupParts.gi"
		;
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "flexiPlane_Surface0Shape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "flexiPlane_bs_tweak1.msg" "tweakSet1.ub[0]";
connectAttr "flexiPlane_Surface0Shape1Orig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "cluster1GroupParts.og" "flexiPlane_cl_a01Cluster.ip[0].ig";
connectAttr "cluster1GroupId.id" "flexiPlane_cl_a01Cluster.ip[0].gi";
connectAttr "flexiPlane_cl_a01.wm" "flexiPlane_cl_a01Cluster.ma";
connectAttr "flexiPlane_cl_a01Shape.x" "flexiPlane_cl_a01Cluster.x";
connectAttr "groupParts4.og" "flexiPlane_tweak1.ip[0].ig";
connectAttr "groupId4.id" "flexiPlane_tweak1.ip[0].gi";
connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
connectAttr "flexiPlane_wire_surface01Shape.iog.og[0]" "cluster1Set.dsm" -na;
connectAttr "flexiPlane_cl_a01Cluster.msg" "cluster1Set.ub[0]";
connectAttr "flexiPlane_tweak1.og[0]" "cluster1GroupParts.ig";
connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "flexiPlane_wire_surface01Shape.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "flexiPlane_tweak1.msg" "tweakSet2.ub[0]";
connectAttr "flexiPlane_wire_surface01Shape1Orig.ws" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "cluster2GroupParts.og" "flexiPlane_cl_c01Cluster.ip[0].ig";
connectAttr "cluster2GroupId.id" "flexiPlane_cl_c01Cluster.ip[0].gi";
connectAttr "flexiPlane_cl_c01.wm" "flexiPlane_cl_c01Cluster.ma";
connectAttr "flexiPlane_cl_c01Shape.x" "flexiPlane_cl_c01Cluster.x";
connectAttr "cluster2GroupId.msg" "cluster2Set.gn" -na;
connectAttr "flexiPlane_wire_surface01Shape.iog.og[2]" "cluster2Set.dsm" -na;
connectAttr "flexiPlane_cl_c01Cluster.msg" "cluster2Set.ub[0]";
connectAttr "flexiPlane_cl_a01Cluster.og[0]" "cluster2GroupParts.ig";
connectAttr "cluster2GroupId.id" "cluster2GroupParts.gi";
connectAttr "cluster3GroupParts.og" "flexiPlane_cl_b01Cluster.ip[0].ig";
connectAttr "cluster3GroupId.id" "flexiPlane_cl_b01Cluster.ip[0].gi";
connectAttr "flexiPlane_cl_b01.wm" "flexiPlane_cl_b01Cluster.ma";
connectAttr "flexiPlane_cl_b01Shape.x" "flexiPlane_cl_b01Cluster.x";
connectAttr "cluster3GroupId.msg" "cluster3Set.gn" -na;
connectAttr "flexiPlane_wire_surface01Shape.iog.og[3]" "cluster3Set.dsm" -na;
connectAttr "flexiPlane_cl_b01Cluster.msg" "cluster3Set.ub[0]";
connectAttr "flexiPlane_cl_c01Cluster.og[0]" "cluster3GroupParts.ig";
connectAttr "cluster3GroupId.id" "cluster3GroupParts.gi";
connectAttr "wire1GroupParts.og" "flexiPlane_wrAttr_surface01.ip[0].ig";
connectAttr "wire1GroupId.id" "flexiPlane_wrAttr_surface01.ip[0].gi";
connectAttr "flexiPlane_wire_surface01BaseWire1Shape.ws" "flexiPlane_wrAttr_surface01.bw[0]"
		;
connectAttr "flexiPlane_wire_surface01Shape.ws" "flexiPlane_wrAttr_surface01.dw[0]"
		;
connectAttr "groupParts6.og" "flexiPlane_cls_tweak01.ip[0].ig";
connectAttr "groupId6.id" "flexiPlane_cls_tweak01.ip[0].gi";
connectAttr "wire1GroupId.msg" "wire1Set.gn" -na;
connectAttr "flexiPlane_Surface_BS0Shape1.iog.og[4]" "wire1Set.dsm" -na;
connectAttr "flexiPlane_wrAttr_surface01.msg" "wire1Set.ub[0]";
connectAttr "FlexiPlane_Twist_Attr01.og[0]" "wire1GroupParts.ig";
connectAttr "wire1GroupId.id" "wire1GroupParts.gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "flexiPlane_Surface_BS0Shape1.iog.og[5]" "tweakSet3.dsm" -na;
connectAttr "flexiPlane_cls_tweak01.msg" "tweakSet3.ub[0]";
connectAttr "flexiPlane_Surface_BS0Shape1Orig.ws" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "twist1GroupParts.og" "FlexiPlane_Twist_Attr01.ip[0].ig";
connectAttr "twist1GroupId.id" "FlexiPlane_Twist_Attr01.ip[0].gi";
connectAttr "flexiPlane_cnt_b01.rx" "FlexiPlane_Twist_Attr01.sa";
connectAttr "flexiPlane_cnt_a01.rx" "FlexiPlane_Twist_Attr01.ea";
connectAttr "FlexiPlane_Twist_HandleShape.dd" "FlexiPlane_Twist_Attr01.dd";
connectAttr "FlexiPlane_Twist_Handle01.wm" "FlexiPlane_Twist_Attr01.ma";
connectAttr "twist1GroupId.msg" "twist1Set.gn" -na;
connectAttr "flexiPlane_Surface_BS0Shape1.iog.og[6]" "twist1Set.dsm" -na;
connectAttr "FlexiPlane_Twist_Attr01.msg" "twist1Set.ub[0]";
connectAttr "flexiPlane_cls_tweak01.og[0]" "twist1GroupParts.ig";
connectAttr "twist1GroupId.id" "twist1GroupParts.gi";
connectAttr "flexiPlane_wire_surface01Shape.ws" "flexiPlane_CrvInfo01.ic";
connectAttr "flexiPlane_CrvInfo01.al" "FlexiPlane_SquashStretch_Divide01.i1x";
connectAttr "FlexiPlane_SquashStretch_Divide01.ox" "FlexiPlane_Volumne_Divide01.i2x"
		;
connectAttr "FlexiPlane_Volumne_Divide01.ox" "FlexiPlane_OnOff01.ctr";
connectAttr "flexiPlane_cnt_Global01.volumne" "FlexiPlane_OnOff01.ft";
connectAttr "hyperView1.msg" "nodeView1.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "flexiPlane_cnt_Global01.msg" "hyperLayout1.hyp[0].dn";
connectAttr "flexiPlane_CrvInfo01.msg" "hyperLayout1.hyp[1].dn";
connectAttr "FlexiPlane_SquashStretch_Divide01.msg" "hyperLayout1.hyp[2].dn";
connectAttr "FlexiPlane_Volumne_Divide01.msg" "hyperLayout1.hyp[3].dn";
connectAttr "FlexiPlane_OnOff01.msg" "hyperLayout1.hyp[4].dn";
connectAttr "flexiPlane01.msg" "bindPose1.m[0]";
connectAttr "flexiPlane_extraNodes01.msg" "bindPose1.m[1]";
connectAttr "flexiPlane_Follicle_grp01.msg" "bindPose1.m[2]";
connectAttr "flexiPlane_flc_a01.msg" "bindPose1.m[3]";
connectAttr "flexiPlane_bn_a01.msg" "bindPose1.m[4]";
connectAttr "flexiPlane_flc_b01.msg" "bindPose1.m[5]";
connectAttr "flexiPlane_bn_b01.msg" "bindPose1.m[6]";
connectAttr "flexiPlane_flc_c01.msg" "bindPose1.m[7]";
connectAttr "flexiPlane_bn_c01.msg" "bindPose1.m[8]";
connectAttr "flexiPlane_flc_d01.msg" "bindPose1.m[9]";
connectAttr "flexiPlane_bn_d01.msg" "bindPose1.m[10]";
connectAttr "flexiPlane_flc_e01.msg" "bindPose1.m[11]";
connectAttr "flexiPlane_bn_e01.msg" "bindPose1.m[12]";
connectAttr "flexiPlane_flc_f01.msg" "bindPose1.m[13]";
connectAttr "flexiPlane_bn_f01.msg" "bindPose1.m[14]";
connectAttr "flexiPlane_flc_g01.msg" "bindPose1.m[15]";
connectAttr "flexiPlane_bn_g01.msg" "bindPose1.m[16]";
connectAttr "flexiPlane_flc_h01.msg" "bindPose1.m[17]";
connectAttr "flexiPlane_bn_h01.msg" "bindPose1.m[18]";
connectAttr "flexiPlane_flc_i01.msg" "bindPose1.m[19]";
connectAttr "flexiPlane_bn_i01.msg" "bindPose1.m[20]";
connectAttr "flexiPlane_flc_j01.msg" "bindPose1.m[21]";
connectAttr "flexiPlane_bn_j01.msg" "bindPose1.m[22]";
connectAttr "flexiPlane_flc_k01.msg" "bindPose1.m[23]";
connectAttr "flexiPlane_bn_k01.msg" "bindPose1.m[24]";
connectAttr "flexiPlane_flc_l01.msg" "bindPose1.m[25]";
connectAttr "flexiPlane_bn_l01.msg" "bindPose1.m[26]";
connectAttr "flexiPlane_flc_m01.msg" "bindPose1.m[27]";
connectAttr "flexiPlane_bn_m01.msg" "bindPose1.m[28]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[2]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[2]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[2]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[2]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[2]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[2]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[2]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[2]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[2]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[2]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[2]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[2]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "flexiPlane_bn_a01.bps" "bindPose1.wm[4]";
connectAttr "flexiPlane_bn_b01.bps" "bindPose1.wm[6]";
connectAttr "flexiPlane_bn_c01.bps" "bindPose1.wm[8]";
connectAttr "flexiPlane_bn_d01.bps" "bindPose1.wm[10]";
connectAttr "flexiPlane_bn_e01.bps" "bindPose1.wm[12]";
connectAttr "flexiPlane_bn_f01.bps" "bindPose1.wm[14]";
connectAttr "flexiPlane_bn_g01.bps" "bindPose1.wm[16]";
connectAttr "flexiPlane_bn_h01.bps" "bindPose1.wm[18]";
connectAttr "flexiPlane_bn_i01.bps" "bindPose1.wm[20]";
connectAttr "flexiPlane_bn_j01.bps" "bindPose1.wm[22]";
connectAttr "flexiPlane_bn_k01.bps" "bindPose1.wm[24]";
connectAttr "flexiPlane_bn_l01.bps" "bindPose1.wm[26]";
connectAttr "flexiPlane_bn_m01.bps" "bindPose1.wm[28]";
connectAttr "hyperView2.msg" "nodeEditorPanel3Info.b[0]";
connectAttr "hyperLayout2.msg" "hyperView2.hl";
connectAttr "flexiPlane_cnt_Global01.msg" "hyperLayout2.hyp[0].dn";
connectAttr "flexiPlane_CrvInfo01.msg" "hyperLayout2.hyp[1].dn";
connectAttr "FlexiPlane_SquashStretch_Divide01.msg" "hyperLayout2.hyp[2].dn";
connectAttr "FlexiPlane_Volumne_Divide01.msg" "hyperLayout2.hyp[3].dn";
connectAttr "FlexiPlane_OnOff01.msg" "hyperLayout2.hyp[4].dn";
connectAttr "hyperView3.msg" "nodeEditorPanel2Info.b[0]";
connectAttr "hyperLayout3.msg" "hyperView3.hl";
connectAttr "flexiPlane_cnt_Global01.msg" "hyperLayout3.hyp[0].dn";
connectAttr "flexiPlane_CrvInfo01.msg" "hyperLayout3.hyp[1].dn";
connectAttr "FlexiPlane_SquashStretch_Divide01.msg" "hyperLayout3.hyp[2].dn";
connectAttr "FlexiPlane_Volumne_Divide01.msg" "hyperLayout3.hyp[3].dn";
connectAttr "FlexiPlane_OnOff01.msg" "hyperLayout3.hyp[4].dn";
connectAttr "bindPose1.msg" "hyperLayout3.hyp[5].dn";
connectAttr "FlexiPlane01:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "FlexiPlane01:surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "FlexiPlane01:felciPlane_Surface_Material01.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "FlexiPlane01:flexiPlane_ss_midBend01.msg" ":defaultShaderList1.s" -na
		;
connectAttr "FlexiPlane01:flexiPlane_div_squashSretch_length01.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FlexiPlane01:flexiPlane_div_volumne01.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FlexiPlane01:flexiPlane_cond_volumne01.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FlexiPlane_SquashStretch_Divide01.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FlexiPlane_Volumne_Divide01.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FlexiPlane_OnOff01.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of FlexiPlane_13PArts01.0001.ma
