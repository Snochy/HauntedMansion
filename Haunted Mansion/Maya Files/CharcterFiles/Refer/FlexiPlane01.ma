//Maya ASCII 2015 scene
//Name: FlexiPlane01.ma
//Last modified: Tue, Oct 14, 2014 03:03:54 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201408201531-928694";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -12.698182092625069 15.245669313673684 9.3338629746267401 ;
	setAttr ".r" -type "double3" -44.738352729810174 -52.200000000000408 5.1892936498400179e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 23.6267518921874;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
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
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "flexiPlane_cnt_global01" -p "flexiPlane01";
	addAttr -ci true -sn "_" -ln "_" -min 0 -max 0 -en "volumne" -at "enum";
	addAttr -ci true -sn "enable" -ln "enable" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -cb on "._";
	setAttr -k on ".enable" yes;
createNode nurbsCurve -n "flexiPlane_cnt_global0Shape1" -p "flexiPlane_cnt_global01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.23508348746736751 1.4394712022965405e-017 -2.2350834874673673
		-3.7929511823487977e-017 2.0357196969332741e-017 -2.3324582562663165
		-0.23508348746736726 1.4394712022965411e-017 -2.2350834874673673
		-0.33245825626631637 5.8990063848563576e-033 -2
		-0.23508348746736735 -1.4394712022965408e-017 -1.7649165125326327
		-1.0017616090771558e-016 -2.0357196969332744e-017 -1.6675417437336835
		0.23508348746736712 -1.4394712022965414e-017 -1.7649165125326327
		0.33245825626631637 -1.0933890203714376e-032 -1.9999999999999998
		0.23508348746736751 1.4394712022965405e-017 -2.2350834874673673
		-3.7929511823487977e-017 2.0357196969332741e-017 -2.3324582562663165
		-0.23508348746736726 1.4394712022965411e-017 -2.2350834874673673
		;
createNode nurbsCurve -n "flexiPlane_cnt_global0Shape2" -p "flexiPlane_cnt_global01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.23508348746736751 1.4394712022965405e-017 1.7649165125326327
		-3.7929511823487977e-017 2.0357196969332741e-017 1.6675417437336835
		-0.23508348746736726 1.4394712022965411e-017 1.7649165125326327
		-0.33245825626631637 5.8990063848563576e-033 2
		-0.23508348746736735 -1.4394712022965408e-017 2.2350834874673673
		-1.0017616090771558e-016 -2.0357196969332744e-017 2.3324582562663165
		0.23508348746736712 -1.4394712022965414e-017 2.2350834874673673
		0.33245825626631637 -1.0933890203714376e-032 2
		0.23508348746736751 1.4394712022965405e-017 1.7649165125326327
		-3.7929511823487977e-017 2.0357196969332741e-017 1.6675417437336835
		-0.23508348746736726 1.4394712022965411e-017 1.7649165125326327
		;
createNode transform -n "flexiPlane_globalMove01" -p "flexiPlane_cnt_global01";
createNode transform -n "flexiPlane_cnts01" -p "flexiPlane_globalMove01";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "flexiPlane_CNT_a01" -p "flexiPlane_cnts01";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".ro" 3;
	setAttr ".rp" -type "double3" -5 0 0 ;
	setAttr ".sp" -type "double3" -5 0 0 ;
createNode nurbsCurve -n "flexiPlane_CNT_a0Shape1" -p "flexiPlane_CNT_a01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-5.6000000000000005 0 0.59999999999999998
		-4.4000000000000004 0 0.59999999999999998
		-4.4000000000000004 0 -0.59999999999999998
		-5.6000000000000005 0 -0.59999999999999998
		-5.6000000000000005 0 0.59999999999999998
		;
createNode transform -n "flexiPlane_CNT_b01" -p "flexiPlane_cnts01";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".ro" 3;
	setAttr ".rp" -type "double3" 5 0 0 ;
	setAttr ".sp" -type "double3" 5 0 0 ;
createNode nurbsCurve -n "flexiPlane_CNT_b0Shape1" -p "flexiPlane_CNT_b01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		4.3999999999999995 0 0.59999999999999998
		5.5999999999999996 0 0.59999999999999998
		5.5999999999999996 0 -0.59999999999999998
		4.3999999999999995 0 -0.59999999999999998
		4.3999999999999995 0 0.59999999999999998
		;
createNode transform -n "flexiPlane_grp_midBend01" -p "flexiPlane_cnts01";
createNode transform -n "fleciPlane_midBend01" -p "flexiPlane_grp_midBend01";
createNode mesh -n "fleciPlane_midBend0Shape1" -p "fleciPlane_midBend01";
	setAttr -k off ".v";
	setAttr ".mb" no;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".smo" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  0.081179418 -0.27716386 -0.081179418 0 -0.27716386 -0.11480502
		 -0.081179418 -0.27716386 -0.081179418 -0.11480502 -0.27716386 0 -0.081179418 -0.27716386 0.081179418
		 0 -0.27716386 0.11480504 0.081179418 -0.27716386 0.081179418 0.11480504 -0.27716386 0
		 0.14999999 -0.21213204 -0.14999999 0 -0.21213204 -0.21213202 -0.14999999 -0.21213204 -0.14999999
		 -0.21213202 -0.21213204 0 -0.14999999 -0.21213204 0.14999999 0 -0.21213204 0.21213202
		 0.14999999 -0.21213204 0.14999999 0.21213204 -0.21213204 0 0.19598442 -0.11480504 -0.19598442
		 0 -0.11480504 -0.27716383 -0.19598442 -0.11480504 -0.19598442 -0.27716383 -0.11480504 0
		 -0.19598442 -0.11480504 0.19598442 0 -0.11480504 0.27716383 0.19598444 -0.11480504 0.19598444
		 0.27716386 -0.11480504 0 0.21213202 0 -0.21213202 0 0 -0.29999998 -0.21213202 0 -0.21213202
		 -0.29999998 0 0 -0.21213202 0 0.21213202 0 0 0.29999998 0.21213204 0 0.21213204 0.30000001 0 0
		 0.19598442 0.11480504 -0.19598442 0 0.11480504 -0.27716383 -0.19598442 0.11480504 -0.19598442
		 -0.27716383 0.11480504 0 -0.19598442 0.11480504 0.19598442 0 0.11480504 0.27716383
		 0.19598444 0.11480504 0.19598444 0.27716386 0.11480504 0 0.14999999 0.21213204 -0.14999999
		 0 0.21213204 -0.21213202 -0.14999999 0.21213204 -0.14999999 -0.21213202 0.21213204 0
		 -0.14999999 0.21213204 0.14999999 0 0.21213204 0.21213202 0.14999999 0.21213204 0.14999999
		 0.21213204 0.21213204 0 0.081179418 0.27716386 -0.081179418 0 0.27716386 -0.11480502
		 -0.081179418 0.27716386 -0.081179418 -0.11480502 0.27716386 0 -0.081179418 0.27716386 0.081179418
		 0 0.27716386 0.11480504 0.081179418 0.27716386 0.081179418 0.11480504 0.27716386 0
		 0 -0.30000001 0 0 0.30000001 0;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode pointConstraint -n "flexiPlane_grp_midBend01_pointConstraint1" -p "flexiPlane_grp_midBend01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "flexiPlane_CNT_b01W0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "flexiPlane_CNT_a01W1" -dv 1 -min 0 
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
createNode transform -n "flexiPlane_surface01" -p "flexiPlane_globalMove01";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsSurface -n "flexiPlane_surface0Shape1" -p "flexiPlane_surface01";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".mb" no;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".tw" yes;
	setAttr ".smo" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "flexiPlane_surface0Shape1Orig" -p "flexiPlane_surface01";
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
		10 0 0 0 0.20000000000000001 0.40000000000000002 0.60000000000000009 0.80000000000000004
		 1 1 1
		6 0 0 0 1 1 1
		
		32
		-5 -6.123233995736766e-017 1
		-5 -2.0410779985789222e-017 0.33333333333333337
		-5 2.0410779985789216e-017 -0.33333333333333326
		-5 6.123233995736766e-017 -1
		-4.333333333333333 -6.123233995736766e-017 1
		-4.333333333333333 -2.0410779985789222e-017 0.33333333333333337
		-4.333333333333333 2.0410779985789216e-017 -0.33333333333333326
		-4.333333333333333 6.123233995736766e-017 -1
		-2.9999999999999996 -6.123233995736766e-017 1
		-2.9999999999999996 -2.0410779985789222e-017 0.33333333333333337
		-2.9999999999999996 2.0410779985789216e-017 -0.33333333333333326
		-2.9999999999999996 6.123233995736766e-017 -1
		-0.99999999999999922 -6.123233995736766e-017 1
		-0.99999999999999922 -2.0410779985789222e-017 0.33333333333333337
		-0.99999999999999922 2.0410779985789216e-017 -0.33333333333333326
		-0.99999999999999922 6.123233995736766e-017 -1
		1.0000000000000009 -6.123233995736766e-017 1
		1.0000000000000009 -2.0410779985789222e-017 0.33333333333333337
		1.0000000000000009 2.0410779985789216e-017 -0.33333333333333326
		1.0000000000000009 6.123233995736766e-017 -1
		3.0000000000000009 -6.123233995736766e-017 1
		3.0000000000000009 -2.0410779985789222e-017 0.33333333333333337
		3.0000000000000009 2.0410779985789216e-017 -0.33333333333333326
		3.0000000000000009 6.123233995736766e-017 -1
		4.3333333333333339 -6.123233995736766e-017 1
		4.3333333333333339 -2.0410779985789222e-017 0.33333333333333337
		4.3333333333333339 2.0410779985789216e-017 -0.33333333333333326
		4.3333333333333339 6.123233995736766e-017 -1
		5 -6.123233995736766e-017 1
		5 -2.0410779985789222e-017 0.33333333333333337
		5 2.0410779985789216e-017 -0.33333333333333326
		5 6.123233995736766e-017 -1
		
		;
createNode transform -n "flexiPlane_extraNodes01" -p "flexiPlane01";
createNode transform -n "flexiPlane_flcs01" -p "flexiPlane_extraNodes01";
createNode transform -n "flexiPlane_flc_a01" -p "flexiPlane_flcs01";
createNode follicle -n "flexiPlane_flc_a0Shape1" -p "flexiPlane_flc_a01";
	setAttr -k off ".v" no;
	setAttr ".pu" 0.1;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode transform -n "curve1" -p "flexiPlane_flc_a01";
createNode nurbsCurve -n "curveShape1" -p "curve1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 0
		0 0 0.55555555560000003
		0 0 1.111111111
		0 0 1.6666666670000001
		0 0 2.2222222220000001
		0 0 2.7777777779999999
		0 0 3.3333333330000001
		0 0 3.888888889
		0 0 4.4444444440000002
		0 0 5
		;
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
createNode joint -n "bn_flexiPlane_a01" -p "flexiPlane_flc_a01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 5.5511151231257827e-017 -9.2444637330587321e-033 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 -4 0 0 1;
createNode transform -n "flexiPlane_flc_b01" -p "flexiPlane_flcs01";
createNode follicle -n "flexiPlane_flc_b0Shape1" -p "flexiPlane_flc_b01";
	setAttr -k off ".v" no;
	setAttr ".pu" 0.3;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode transform -n "curve2" -p "flexiPlane_flc_b01";
createNode nurbsCurve -n "curveShape2" -p "curve2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 0
		0 0 0.55555555560000003
		0 0 1.111111111
		0 0 1.6666666670000001
		0 0 2.2222222220000001
		0 0 2.7777777779999999
		0 0 3.3333333330000001
		0 0 3.888888889
		0 0 4.4444444440000002
		0 0 5
		;
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
createNode joint -n "bn_flexiPlane_b01" -p "flexiPlane_flc_b01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.4408920985006262e-016 5.5511151231257827e-017 -9.2444637330587321e-033 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 -2 0 0 1;
createNode transform -n "flexiPlane_flc_c01" -p "flexiPlane_flcs01";
createNode follicle -n "flexiPlane_flc_c0Shape1" -p "flexiPlane_flc_c01";
	setAttr -k off ".v" no;
	setAttr ".pu" 0.5;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode transform -n "curve3" -p "flexiPlane_flc_c01";
createNode nurbsCurve -n "curveShape3" -p "curve3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 0
		0 0 0.55555555560000003
		0 0 1.111111111
		0 0 1.6666666670000001
		0 0 2.2222222220000001
		0 0 2.7777777779999999
		0 0 3.3333333330000001
		0 0 3.888888889
		0 0 4.4444444440000002
		0 0 5
		;
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
createNode joint -n "bn_flexiPlane_c01" -p "flexiPlane_flc_c01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.0531133177191805e-016 5.5511151231257827e-017 -1.2325951644078309e-032 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 0 0 0 1;
createNode transform -n "flexiPlane_flc_d01" -p "flexiPlane_flcs01";
createNode follicle -n "flexiPlane_flc_d0Shape1" -p "flexiPlane_flc_d01";
	setAttr -k off ".v" no;
	setAttr ".pu" 0.7;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode transform -n "curve4" -p "flexiPlane_flc_d01";
createNode nurbsCurve -n "curveShape4" -p "curve4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 0
		0 0 0.55555555560000003
		0 0 1.111111111
		0 0 1.6666666670000001
		0 0 2.2222222220000001
		0 0 2.7777777779999999
		0 0 3.3333333330000001
		0 0 3.888888889
		0 0 4.4444444440000002
		0 0 5
		;
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
createNode joint -n "bn_flexiPlane_d01" -p "flexiPlane_flc_d01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.4408920985006262e-016 5.5511151231257827e-017 -9.2444637330587321e-033 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 2 0 0 1;
createNode transform -n "flexiPlane_flc_e01" -p "flexiPlane_flcs01";
createNode follicle -n "flexiPlane_flc_e0Shape1" -p "flexiPlane_flc_e01";
	setAttr -k off ".v" no;
	setAttr ".pu" 0.9;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode transform -n "curve5" -p "flexiPlane_flc_e01";
createNode nurbsCurve -n "curveShape5" -p "curve5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 0
		0 0 0.55555555560000003
		0 0 1.111111111
		0 0 1.6666666670000001
		0 0 2.2222222220000001
		0 0 2.7777777779999999
		0 0 3.3333333330000001
		0 0 3.888888889
		0 0 4.4444444440000002
		0 0 5
		;
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
createNode joint -n "bn_flexiPlane_e01" -p "flexiPlane_flc_e01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 5.5511151231257827e-017 -9.2444637330587321e-033 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 4.9303806576313238e-032 0
		 0 -4.9303806576313238e-032 1.0000000000000002 0 4 0 0 1;
createNode transform -n "flexiPlane_Bshp_surface01" -p "flexiPlane_extraNodes01";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 -5 ;
createNode nurbsSurface -n "flexiPlane_Bshp_surface0Shape1" -p "flexiPlane_Bshp_surface01";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".mb" no;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".tw" yes;
	setAttr ".smo" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "flexiPlane_Bshp_surface0Shape1Orig" -p "flexiPlane_Bshp_surface01";
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
		10 0 0 0 0.20000000000000001 0.40000000000000002 0.60000000000000009 0.80000000000000004
		 1 1 1
		6 0 0 0 1 1 1
		
		32
		-5 -6.123233995736766e-017 1
		-5 -2.0410779985789222e-017 0.33333333333333337
		-5 2.0410779985789216e-017 -0.33333333333333326
		-5 6.123233995736766e-017 -1
		-4.333333333333333 -6.123233995736766e-017 1
		-4.333333333333333 -2.0410779985789222e-017 0.33333333333333337
		-4.333333333333333 2.0410779985789216e-017 -0.33333333333333326
		-4.333333333333333 6.123233995736766e-017 -1
		-2.9999999999999996 -6.123233995736766e-017 1
		-2.9999999999999996 -2.0410779985789222e-017 0.33333333333333337
		-2.9999999999999996 2.0410779985789216e-017 -0.33333333333333326
		-2.9999999999999996 6.123233995736766e-017 -1
		-0.99999999999999922 -6.123233995736766e-017 1
		-0.99999999999999922 -2.0410779985789222e-017 0.33333333333333337
		-0.99999999999999922 2.0410779985789216e-017 -0.33333333333333326
		-0.99999999999999922 6.123233995736766e-017 -1
		1.0000000000000009 -6.123233995736766e-017 1
		1.0000000000000009 -2.0410779985789222e-017 0.33333333333333337
		1.0000000000000009 2.0410779985789216e-017 -0.33333333333333326
		1.0000000000000009 6.123233995736766e-017 -1
		3.0000000000000009 -6.123233995736766e-017 1
		3.0000000000000009 -2.0410779985789222e-017 0.33333333333333337
		3.0000000000000009 2.0410779985789216e-017 -0.33333333333333326
		3.0000000000000009 6.123233995736766e-017 -1
		4.3333333333333339 -6.123233995736766e-017 1
		4.3333333333333339 -2.0410779985789222e-017 0.33333333333333337
		4.3333333333333339 2.0410779985789216e-017 -0.33333333333333326
		4.3333333333333339 6.123233995736766e-017 -1
		5 -6.123233995736766e-017 1
		5 -2.0410779985789222e-017 0.33333333333333337
		5 2.0410779985789216e-017 -0.33333333333333326
		5 6.123233995736766e-017 -1
		
		;
createNode transform -n "flexiPlane_wire_surface01" -p "flexiPlane_extraNodes01";
	setAttr ".v" no;
createNode nurbsCurve -n "flexiPlane_wire_surfaceShape01" -p "flexiPlane_wire_surface01";
	setAttr -k off ".v";
	setAttr -s 10 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "flexiPlane_wire_surfaceShape01Orig" -p "flexiPlane_wire_surface01";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		2 1 0 no 3
		4 0 0 1 1
		3
		-5 0 -5
		0 0 -5
		5 0 -5
		;
createNode transform -n "flexiPlane_wire_surface01BaseWire" -p "flexiPlane_extraNodes01";
	setAttr ".v" no;
createNode nurbsCurve -n "flexiPlane_wire_surfaceShape01" -p "flexiPlane_wire_surface01BaseWire";
	setAttr -k off ".v";
	setAttr -s 9 ".iog[0].og";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "cv[0:1]";
	setAttr ".iog[0].og[7].gcl" -type "componentList" 1 "cv[1:2]";
	setAttr ".iog[0].og[8].gcl" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		2 1 0 no 3
		4 0 0 1 1
		3
		-5 0 -5
		0 0 -5
		5 0 -5
		;
createNode nurbsCurve -n "flexiPlane_wire_surfaceShape01Orig" -p "flexiPlane_wire_surface01BaseWire";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		2 1 0 no 3
		4 0 0 1 1
		3
		-5 0 -5
		0 0 -5
		5 0 -5
		;
createNode transform -n "flexiPlane_cls01" -p "flexiPlane_extraNodes01";
	setAttr ".v" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "flexiPlane_cl_a01" -p "flexiPlane_cls01";
	setAttr ".rp" -type "double3" -5 0 -5 ;
	setAttr ".sp" -type "double3" -5 0 -5 ;
createNode clusterHandle -n "flexiPlane_cl_a01Shape" -p "flexiPlane_cl_a01";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -6 0 -5 ;
createNode transform -n "flexiPlane_cl_b01" -p "flexiPlane_cls01";
	setAttr ".rp" -type "double3" 5 0 -5 ;
	setAttr ".sp" -type "double3" 5 0 -5 ;
createNode clusterHandle -n "flexiPlane_cl_b01Shape" -p "flexiPlane_cl_b01";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 6 0 -5 ;
createNode transform -n "flexiPlan_cl_mid01" -p "flexiPlane_cls01";
	setAttr ".rp" -type "double3" 0 0 -5 ;
	setAttr ".sp" -type "double3" 0 0 -5 ;
createNode clusterHandle -n "flexiPlan_cl_mid01Shape" -p "flexiPlan_cl_mid01";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 0 -5 ;
createNode transform -n "flexiPlane_twist_surface01" -p "flexiPlane_extraNodes01";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 -5 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".smd" 7;
createNode deformTwist -n "flexiPlane_twist_surface01Shape" -p "flexiPlane_twist_surface01";
	setAttr -k off ".v";
	setAttr ".dd" -type "doubleArray" 4 -1 1 0 0 ;
	setAttr ".hw" 1.1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode lambert -n "felciPlane_Surface_Material01";
	setAttr ".c" -type "float3" 0.058439061 0.69880581 0.74509805 ;
	setAttr ".it" -type "float3" 0.72179753 0.72179753 0.72179753 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode blendShape -n "flexiPlane_bShp_node_surface01";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".w[0]"  1;
	setAttr ".it[0].itg[0].iti[6000].ipt" -type "pointArray" 0 ;
	setAttr ".it[0].itg[0].iti[6000].ict" -type "componentList" ;
	setAttr ".aal" -type "attributeAlias" {"flexiPlane_Bshp_surface01","weight[0]"} ;
createNode tweak -n "flexiPlane_bShp_surface_tweak01";
createNode objectSet -n "bs_L_Feather_CoverSet";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bs_L_Feather_CoverGroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bs_L_Feather_CoverGroupParts";
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
createNode hyperGraphInfo -n "nodeEditorPanel2Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -1182.3290725876227 -118.38955018019534 ;
	setAttr ".vh" -type "double2" 760.52807026951825 483.99140220075657 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 6 ".hyp";
	setAttr ".hyp[0].x" -777.14288330078125;
	setAttr ".hyp[0].y" 304.28570556640625;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" -374.28570556640625;
	setAttr ".hyp[1].y" 131.42857360839844;
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
	setAttr ".hyp[5].x" -600.42431640625;
	setAttr ".hyp[5].y" 483.99139404296875;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".anf" yes;
createNode cluster -n "flexiPlane_cl_a01Cluster";
	setAttr ".wl[0].w[1]"  0.5;
	setAttr ".rel" yes;
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "flexiPlane_cl_Tweak_Cluster";
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
createNode blendShape -n "blendShape1";
createNode objectSet -n "blendShape1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "blendShape1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "blendShape1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1:2]";
createNode cluster -n "flexiPlane_cl_b01Cluster";
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
createNode cluster -n "flexiPlan_cl_mid01Cluster";
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
createNode wire -n "flexiPlane_wreAttrs_surface01";
	setAttr ".dds[0]"  20;
	setAttr ".sc[0]"  1;
createNode tweak -n "flexiPlane_wre_surface_tweak01";
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
createNode surfaceShader -n "flexiPlane_ss_midBend01";
	setAttr ".oc" -type "float3" 0.97321701 1 0 ;
createNode shadingEngine -n "surfaceShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n"
		+ "                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n"
		+ "                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 1\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel2Info`) nodeEditor -e -restoreInfo nodeEditorPanel2Info $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 1\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel2Info`) nodeEditor -e -restoreInfo nodeEditorPanel2Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nonLinear -n "flexiPlane_twistAttrs_surface01";
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
createNode curveInfo -n "flexiPlane_curveInfo01";
createNode multiplyDivide -n "flexiPlane_div_squashSretch_length01";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 10 1 1 ;
createNode multiplyDivide -n "flexiPlane_div_volumne01";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode condition -n "flexiPlane_cond_volumne01";
	setAttr ".st" 1;
createNode dagPose -n "bindPose1";
	setAttr -s 13 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 -4 -3.0814879110195774e-033 5.5511151231257827e-017 1;
	setAttr ".wm[5]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 -1.9999999999999996 -3.0814879110195774e-033 5.5511151231257827e-017 1;
	setAttr ".wm[7]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 3.0531133177191805e-016 0 5.5511151231257827e-017 1;
	setAttr ".wm[9]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 1.9999999999999996 -3.0814879110195774e-033 5.5511151231257827e-017 1;
	setAttr ".wm[11]" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 4.0000000000000009 -3.0814879110195774e-033 5.5511151231257827e-017 1;
	setAttr -s 13 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 0 0 0 -4 -3.0814879110195774e-033
		 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 5.5511151231257827e-017
		 -9.2444637330587321e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0 0 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 0 0 0 -1.9999999999999996
		 -3.0814879110195774e-033 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.4408920985006262e-016
		 5.5511151231257827e-017 -9.2444637330587321e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.70710678118654746 0 0 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 1.6653345369377336e-016
		 0 0 3.0531133177191805e-016 0 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.0531133177191805e-016
		 5.5511151231257827e-017 -1.2325951644078309e-032 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.70710678118654746 0 0 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 -8.3266726846886593e-017
		 -4.6222318665293578e-033 0 1.9999999999999996 -3.0814879110195774e-033 5.5511151231257827e-017 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.4408920985006262e-016
		 5.5511151231257827e-017 -9.2444637330587321e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.70710678118654746 0 0 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 0 0 0 4.0000000000000009
		 -3.0814879110195774e-033 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.8817841970012523e-016
		 5.5511151231257827e-017 -9.2444637330587321e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.70710678118654746 0 0 0.70710678118654768 1 1 1 yes;
	setAttr -s 13 ".m";
	setAttr -s 13 ".p";
	setAttr -s 13 ".g[0:12]" yes yes yes yes no yes no yes no yes no yes 
		no;
	setAttr ".bp" yes;
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
	setAttr -s 3 ".u";
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
select -ne :characterPartition;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "flexiPlane_grp_midBend01_pointConstraint1.ctx" "flexiPlane_grp_midBend01.tx"
		;
connectAttr "flexiPlane_grp_midBend01_pointConstraint1.cty" "flexiPlane_grp_midBend01.ty"
		;
connectAttr "flexiPlane_grp_midBend01_pointConstraint1.ctz" "flexiPlane_grp_midBend01.tz"
		;
connectAttr "flexiPlane_grp_midBend01.pim" "flexiPlane_grp_midBend01_pointConstraint1.cpim"
		;
connectAttr "flexiPlane_grp_midBend01.rp" "flexiPlane_grp_midBend01_pointConstraint1.crp"
		;
connectAttr "flexiPlane_grp_midBend01.rpt" "flexiPlane_grp_midBend01_pointConstraint1.crt"
		;
connectAttr "flexiPlane_CNT_b01.t" "flexiPlane_grp_midBend01_pointConstraint1.tg[0].tt"
		;
connectAttr "flexiPlane_CNT_b01.rp" "flexiPlane_grp_midBend01_pointConstraint1.tg[0].trp"
		;
connectAttr "flexiPlane_CNT_b01.rpt" "flexiPlane_grp_midBend01_pointConstraint1.tg[0].trt"
		;
connectAttr "flexiPlane_CNT_b01.pm" "flexiPlane_grp_midBend01_pointConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_grp_midBend01_pointConstraint1.w0" "flexiPlane_grp_midBend01_pointConstraint1.tg[0].tw"
		;
connectAttr "flexiPlane_CNT_a01.t" "flexiPlane_grp_midBend01_pointConstraint1.tg[1].tt"
		;
connectAttr "flexiPlane_CNT_a01.rp" "flexiPlane_grp_midBend01_pointConstraint1.tg[1].trp"
		;
connectAttr "flexiPlane_CNT_a01.rpt" "flexiPlane_grp_midBend01_pointConstraint1.tg[1].trt"
		;
connectAttr "flexiPlane_CNT_a01.pm" "flexiPlane_grp_midBend01_pointConstraint1.tg[1].tpm"
		;
connectAttr "flexiPlane_grp_midBend01_pointConstraint1.w1" "flexiPlane_grp_midBend01_pointConstraint1.tg[1].tw"
		;
connectAttr "bs_L_Feather_CoverGroupId.id" "flexiPlane_surface0Shape1.iog.og[0].gid"
		;
connectAttr "bs_L_Feather_CoverSet.mwc" "flexiPlane_surface0Shape1.iog.og[0].gco"
		;
connectAttr "groupId2.id" "flexiPlane_surface0Shape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "flexiPlane_surface0Shape1.iog.og[1].gco";
connectAttr "flexiPlane_bShp_node_surface01.og[0]" "flexiPlane_surface0Shape1.cr"
		;
connectAttr "flexiPlane_bShp_surface_tweak01.pl[0].cp[0]" "flexiPlane_surface0Shape1.twl"
		;
connectAttr "flexiPlane_flc_a0Shape1.ot" "flexiPlane_flc_a01.t" -l on;
connectAttr "flexiPlane_flc_a0Shape1.or" "flexiPlane_flc_a01.r" -l on;
connectAttr "flexiPlane_flc_a01_scaleConstraint1.csx" "flexiPlane_flc_a01.sx";
connectAttr "flexiPlane_flc_a01_scaleConstraint1.csy" "flexiPlane_flc_a01.sy";
connectAttr "flexiPlane_flc_a01_scaleConstraint1.csz" "flexiPlane_flc_a01.sz";
connectAttr "flexiPlane_surface0Shape1.wm" "flexiPlane_flc_a0Shape1.iwm";
connectAttr "flexiPlane_surface0Shape1.l" "flexiPlane_flc_a0Shape1.is";
connectAttr "curveShape1.l" "flexiPlane_flc_a0Shape1.sp";
connectAttr "curve1.wm" "flexiPlane_flc_a0Shape1.spm";
connectAttr "flexiPlane_flc_a01.pim" "flexiPlane_flc_a01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_a01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_a01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_a01_scaleConstraint1.w0" "flexiPlane_flc_a01_scaleConstraint1.tg[0].tw"
		;
connectAttr "flexiPlane_cond_volumne01.ocr" "bn_flexiPlane_a01.sy";
connectAttr "flexiPlane_cond_volumne01.ocr" "bn_flexiPlane_a01.sz";
connectAttr "flexiPlane_flc_b0Shape1.ot" "flexiPlane_flc_b01.t" -l on;
connectAttr "flexiPlane_flc_b0Shape1.or" "flexiPlane_flc_b01.r" -l on;
connectAttr "flexiPlane_flc_b01_scaleConstraint1.csx" "flexiPlane_flc_b01.sx";
connectAttr "flexiPlane_flc_b01_scaleConstraint1.csy" "flexiPlane_flc_b01.sy";
connectAttr "flexiPlane_flc_b01_scaleConstraint1.csz" "flexiPlane_flc_b01.sz";
connectAttr "flexiPlane_surface0Shape1.wm" "flexiPlane_flc_b0Shape1.iwm";
connectAttr "flexiPlane_surface0Shape1.l" "flexiPlane_flc_b0Shape1.is";
connectAttr "curveShape2.l" "flexiPlane_flc_b0Shape1.sp";
connectAttr "curve2.wm" "flexiPlane_flc_b0Shape1.spm";
connectAttr "flexiPlane_flc_b01.pim" "flexiPlane_flc_b01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_b01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_b01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_b01_scaleConstraint1.w0" "flexiPlane_flc_b01_scaleConstraint1.tg[0].tw"
		;
connectAttr "flexiPlane_cond_volumne01.ocr" "bn_flexiPlane_b01.sy";
connectAttr "flexiPlane_cond_volumne01.ocr" "bn_flexiPlane_b01.sz";
connectAttr "flexiPlane_flc_c0Shape1.ot" "flexiPlane_flc_c01.t" -l on;
connectAttr "flexiPlane_flc_c0Shape1.or" "flexiPlane_flc_c01.r" -l on;
connectAttr "flexiPlane_flc_c01_scaleConstraint1.csx" "flexiPlane_flc_c01.sx";
connectAttr "flexiPlane_flc_c01_scaleConstraint1.csy" "flexiPlane_flc_c01.sy";
connectAttr "flexiPlane_flc_c01_scaleConstraint1.csz" "flexiPlane_flc_c01.sz";
connectAttr "flexiPlane_surface0Shape1.wm" "flexiPlane_flc_c0Shape1.iwm";
connectAttr "flexiPlane_surface0Shape1.l" "flexiPlane_flc_c0Shape1.is";
connectAttr "curveShape3.l" "flexiPlane_flc_c0Shape1.sp";
connectAttr "curve3.wm" "flexiPlane_flc_c0Shape1.spm";
connectAttr "flexiPlane_flc_c01.pim" "flexiPlane_flc_c01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_c01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_c01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_c01_scaleConstraint1.w0" "flexiPlane_flc_c01_scaleConstraint1.tg[0].tw"
		;
connectAttr "flexiPlane_cond_volumne01.ocr" "bn_flexiPlane_c01.sy";
connectAttr "flexiPlane_cond_volumne01.ocr" "bn_flexiPlane_c01.sz";
connectAttr "flexiPlane_flc_d0Shape1.ot" "flexiPlane_flc_d01.t" -l on;
connectAttr "flexiPlane_flc_d0Shape1.or" "flexiPlane_flc_d01.r" -l on;
connectAttr "flexiPlane_flc_d01_scaleConstraint1.csx" "flexiPlane_flc_d01.sx";
connectAttr "flexiPlane_flc_d01_scaleConstraint1.csy" "flexiPlane_flc_d01.sy";
connectAttr "flexiPlane_flc_d01_scaleConstraint1.csz" "flexiPlane_flc_d01.sz";
connectAttr "flexiPlane_surface0Shape1.wm" "flexiPlane_flc_d0Shape1.iwm";
connectAttr "flexiPlane_surface0Shape1.l" "flexiPlane_flc_d0Shape1.is";
connectAttr "curveShape4.l" "flexiPlane_flc_d0Shape1.sp";
connectAttr "curve4.wm" "flexiPlane_flc_d0Shape1.spm";
connectAttr "flexiPlane_flc_d01.pim" "flexiPlane_flc_d01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_d01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_d01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_d01_scaleConstraint1.w0" "flexiPlane_flc_d01_scaleConstraint1.tg[0].tw"
		;
connectAttr "flexiPlane_cond_volumne01.ocr" "bn_flexiPlane_d01.sy";
connectAttr "flexiPlane_cond_volumne01.ocr" "bn_flexiPlane_d01.sz";
connectAttr "flexiPlane_flc_e0Shape1.ot" "flexiPlane_flc_e01.t" -l on;
connectAttr "flexiPlane_flc_e0Shape1.or" "flexiPlane_flc_e01.r" -l on;
connectAttr "flexiPlane_flc_e01_scaleConstraint1.csx" "flexiPlane_flc_e01.sx";
connectAttr "flexiPlane_flc_e01_scaleConstraint1.csy" "flexiPlane_flc_e01.sy";
connectAttr "flexiPlane_flc_e01_scaleConstraint1.csz" "flexiPlane_flc_e01.sz";
connectAttr "flexiPlane_surface0Shape1.wm" "flexiPlane_flc_e0Shape1.iwm";
connectAttr "flexiPlane_surface0Shape1.l" "flexiPlane_flc_e0Shape1.is";
connectAttr "curveShape5.l" "flexiPlane_flc_e0Shape1.sp";
connectAttr "curve5.wm" "flexiPlane_flc_e0Shape1.spm";
connectAttr "flexiPlane_flc_e01.pim" "flexiPlane_flc_e01_scaleConstraint1.cpim";
connectAttr "flexiPlane_globalMove01.s" "flexiPlane_flc_e01_scaleConstraint1.tg[0].ts"
		;
connectAttr "flexiPlane_globalMove01.pm" "flexiPlane_flc_e01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "flexiPlane_flc_e01_scaleConstraint1.w0" "flexiPlane_flc_e01_scaleConstraint1.tg[0].tw"
		;
connectAttr "flexiPlane_cond_volumne01.ocr" "bn_flexiPlane_e01.sy";
connectAttr "flexiPlane_cond_volumne01.ocr" "bn_flexiPlane_e01.sz";
connectAttr "wire1GroupId.id" "flexiPlane_Bshp_surface0Shape1.iog.og[0].gid";
connectAttr "wire1Set.mwc" "flexiPlane_Bshp_surface0Shape1.iog.og[0].gco";
connectAttr "groupId6.id" "flexiPlane_Bshp_surface0Shape1.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "flexiPlane_Bshp_surface0Shape1.iog.og[1].gco";
connectAttr "twist1GroupId.id" "flexiPlane_Bshp_surface0Shape1.iog.og[2].gid";
connectAttr "twist1Set.mwc" "flexiPlane_Bshp_surface0Shape1.iog.og[2].gco";
connectAttr "flexiPlane_wreAttrs_surface01.og[0]" "flexiPlane_Bshp_surface0Shape1.cr"
		;
connectAttr "flexiPlane_wre_surface_tweak01.pl[0].cp[0]" "flexiPlane_Bshp_surface0Shape1.twl"
		;
connectAttr "flexiPlan_cl_mid01Cluster.og[0]" "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.cr"
		;
connectAttr "flexiPlane_cl_Tweak_Cluster.pl[0].cp[0]" "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.twl"
		;
connectAttr "cluster1GroupId.id" "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.iog.og[4].gid"
		;
connectAttr "cluster1Set.mwc" "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.iog.og[4].gco"
		;
connectAttr "groupId4.id" "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.iog.og[5].gid"
		;
connectAttr "tweakSet2.mwc" "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.iog.og[5].gco"
		;
connectAttr "blendShape1GroupId.id" "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.iog.og[6].gid"
		;
connectAttr "blendShape1Set.mwc" "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.iog.og[6].gco"
		;
connectAttr "cluster2GroupId.id" "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.iog.og[7].gid"
		;
connectAttr "cluster2Set.mwc" "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.iog.og[7].gco"
		;
connectAttr "cluster3GroupId.id" "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.iog.og[8].gid"
		;
connectAttr "cluster3Set.mwc" "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.iog.og[8].gco"
		;
connectAttr "flexiPlane_CNT_a01.t" "flexiPlane_cl_a01.t";
connectAttr "flexiPlane_CNT_b01.t" "flexiPlane_cl_b01.t";
connectAttr "fleciPlane_midBend01.t" "flexiPlan_cl_mid01.t";
connectAttr "flexiPlane_twistAttrs_surface01.msg" "flexiPlane_twist_surface01.sml"
		;
connectAttr "flexiPlane_twistAttrs_surface01.sa" "flexiPlane_twist_surface01Shape.sa"
		;
connectAttr "flexiPlane_twistAttrs_surface01.ea" "flexiPlane_twist_surface01Shape.ea"
		;
connectAttr "flexiPlane_twistAttrs_surface01.lb" "flexiPlane_twist_surface01Shape.lb"
		;
connectAttr "flexiPlane_twistAttrs_surface01.hb" "flexiPlane_twist_surface01Shape.hb"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "felciPlane_Surface_Material01.oc" "lambert2SG.ss";
connectAttr "flexiPlane_surface0Shape1.iog" "lambert2SG.dsm" -na;
connectAttr "flexiPlane_Bshp_surface0Shape1.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "felciPlane_Surface_Material01.msg" "materialInfo1.m";
connectAttr "bs_L_Feather_CoverGroupParts.og" "flexiPlane_bShp_node_surface01.ip[0].ig"
		;
connectAttr "bs_L_Feather_CoverGroupId.id" "flexiPlane_bShp_node_surface01.ip[0].gi"
		;
connectAttr "flexiPlane_Bshp_surface0Shape1.ws" "flexiPlane_bShp_node_surface01.it[0].itg[0].iti[6000].igt"
		;
connectAttr "groupParts2.og" "flexiPlane_bShp_surface_tweak01.ip[0].ig";
connectAttr "groupId2.id" "flexiPlane_bShp_surface_tweak01.ip[0].gi";
connectAttr "bs_L_Feather_CoverGroupId.msg" "bs_L_Feather_CoverSet.gn" -na;
connectAttr "flexiPlane_surface0Shape1.iog.og[0]" "bs_L_Feather_CoverSet.dsm" -na
		;
connectAttr "flexiPlane_bShp_node_surface01.msg" "bs_L_Feather_CoverSet.ub[0]";
connectAttr "flexiPlane_bShp_surface_tweak01.og[0]" "bs_L_Feather_CoverGroupParts.ig"
		;
connectAttr "bs_L_Feather_CoverGroupId.id" "bs_L_Feather_CoverGroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "flexiPlane_surface0Shape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "flexiPlane_bShp_surface_tweak01.msg" "tweakSet1.ub[0]";
connectAttr "flexiPlane_surface0Shape1Orig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "hyperView1.msg" "nodeEditorPanel2Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "flexiPlane_cnt_global01.msg" "hyperLayout1.hyp[0].dn";
connectAttr "flexiPlane_curveInfo01.msg" "hyperLayout1.hyp[1].dn";
connectAttr "flexiPlane_div_squashSretch_length01.msg" "hyperLayout1.hyp[2].dn";
connectAttr "flexiPlane_div_volumne01.msg" "hyperLayout1.hyp[3].dn";
connectAttr "flexiPlane_cond_volumne01.msg" "hyperLayout1.hyp[4].dn";
connectAttr "bindPose1.msg" "hyperLayout1.hyp[5].dn";
connectAttr "cluster1GroupParts.og" "flexiPlane_cl_a01Cluster.ip[0].ig";
connectAttr "cluster1GroupId.id" "flexiPlane_cl_a01Cluster.ip[0].gi";
connectAttr "flexiPlane_cl_a01.wm" "flexiPlane_cl_a01Cluster.ma";
connectAttr "flexiPlane_cl_a01Shape.x" "flexiPlane_cl_a01Cluster.x";
connectAttr "groupParts4.og" "flexiPlane_cl_Tweak_Cluster.ip[0].ig";
connectAttr "groupId4.id" "flexiPlane_cl_Tweak_Cluster.ip[0].gi";
connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
connectAttr "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.iog.og[4]" "cluster1Set.dsm"
		 -na;
connectAttr "flexiPlane_cl_a01Cluster.msg" "cluster1Set.ub[0]";
connectAttr "flexiPlane_cl_Tweak_Cluster.og[0]" "cluster1GroupParts.ig";
connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.iog.og[5]" "tweakSet2.dsm"
		 -na;
connectAttr "flexiPlane_cl_Tweak_Cluster.msg" "tweakSet2.ub[0]";
connectAttr "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01Orig.ws" "groupParts4.ig"
		;
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "blendShape1GroupParts.og" "blendShape1.ip[0].ig";
connectAttr "blendShape1GroupId.id" "blendShape1.ip[0].gi";
connectAttr "blendShape1GroupId.msg" "blendShape1Set.gn" -na;
connectAttr "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.iog.og[6]" "blendShape1Set.dsm"
		 -na;
connectAttr "blendShape1.msg" "blendShape1Set.ub[0]";
connectAttr "flexiPlane_cl_a01Cluster.og[0]" "blendShape1GroupParts.ig";
connectAttr "blendShape1GroupId.id" "blendShape1GroupParts.gi";
connectAttr "cluster2GroupParts.og" "flexiPlane_cl_b01Cluster.ip[0].ig";
connectAttr "cluster2GroupId.id" "flexiPlane_cl_b01Cluster.ip[0].gi";
connectAttr "flexiPlane_cl_b01.wm" "flexiPlane_cl_b01Cluster.ma";
connectAttr "flexiPlane_cl_b01Shape.x" "flexiPlane_cl_b01Cluster.x";
connectAttr "cluster2GroupId.msg" "cluster2Set.gn" -na;
connectAttr "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.iog.og[7]" "cluster2Set.dsm"
		 -na;
connectAttr "flexiPlane_cl_b01Cluster.msg" "cluster2Set.ub[0]";
connectAttr "blendShape1.og[0]" "cluster2GroupParts.ig";
connectAttr "cluster2GroupId.id" "cluster2GroupParts.gi";
connectAttr "cluster3GroupParts.og" "flexiPlan_cl_mid01Cluster.ip[0].ig";
connectAttr "cluster3GroupId.id" "flexiPlan_cl_mid01Cluster.ip[0].gi";
connectAttr "flexiPlan_cl_mid01.wm" "flexiPlan_cl_mid01Cluster.ma";
connectAttr "flexiPlan_cl_mid01Shape.x" "flexiPlan_cl_mid01Cluster.x";
connectAttr "cluster3GroupId.msg" "cluster3Set.gn" -na;
connectAttr "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.iog.og[8]" "cluster3Set.dsm"
		 -na;
connectAttr "flexiPlan_cl_mid01Cluster.msg" "cluster3Set.ub[0]";
connectAttr "flexiPlane_cl_b01Cluster.og[0]" "cluster3GroupParts.ig";
connectAttr "cluster3GroupId.id" "cluster3GroupParts.gi";
connectAttr "wire1GroupParts.og" "flexiPlane_wreAttrs_surface01.ip[0].ig";
connectAttr "wire1GroupId.id" "flexiPlane_wreAttrs_surface01.ip[0].gi";
connectAttr "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01BaseWire|flexiPlane_wire_surfaceShape01.ws" "flexiPlane_wreAttrs_surface01.bw[0]"
		;
connectAttr "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.ws" "flexiPlane_wreAttrs_surface01.dw[0]"
		;
connectAttr "groupParts6.og" "flexiPlane_wre_surface_tweak01.ip[0].ig";
connectAttr "groupId6.id" "flexiPlane_wre_surface_tweak01.ip[0].gi";
connectAttr "wire1GroupId.msg" "wire1Set.gn" -na;
connectAttr "flexiPlane_Bshp_surface0Shape1.iog.og[0]" "wire1Set.dsm" -na;
connectAttr "flexiPlane_wreAttrs_surface01.msg" "wire1Set.ub[0]";
connectAttr "flexiPlane_twistAttrs_surface01.og[0]" "wire1GroupParts.ig";
connectAttr "wire1GroupId.id" "wire1GroupParts.gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "flexiPlane_Bshp_surface0Shape1.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "flexiPlane_wre_surface_tweak01.msg" "tweakSet3.ub[0]";
connectAttr "flexiPlane_Bshp_surface0Shape1Orig.ws" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "flexiPlane_ss_midBend01.oc" "surfaceShader1SG.ss";
connectAttr "fleciPlane_midBend0Shape1.iog" "surfaceShader1SG.dsm" -na;
connectAttr "surfaceShader1SG.msg" "materialInfo2.sg";
connectAttr "flexiPlane_ss_midBend01.msg" "materialInfo2.m";
connectAttr "flexiPlane_ss_midBend01.msg" "materialInfo2.t" -na;
connectAttr "twist1GroupParts.og" "flexiPlane_twistAttrs_surface01.ip[0].ig";
connectAttr "twist1GroupId.id" "flexiPlane_twistAttrs_surface01.ip[0].gi";
connectAttr "flexiPlane_CNT_b01.rx" "flexiPlane_twistAttrs_surface01.sa";
connectAttr "flexiPlane_CNT_a01.rx" "flexiPlane_twistAttrs_surface01.ea";
connectAttr "flexiPlane_twist_surface01Shape.dd" "flexiPlane_twistAttrs_surface01.dd"
		;
connectAttr "flexiPlane_twist_surface01.wm" "flexiPlane_twistAttrs_surface01.ma"
		;
connectAttr "twist1GroupId.msg" "twist1Set.gn" -na;
connectAttr "flexiPlane_Bshp_surface0Shape1.iog.og[2]" "twist1Set.dsm" -na;
connectAttr "flexiPlane_twistAttrs_surface01.msg" "twist1Set.ub[0]";
connectAttr "flexiPlane_wre_surface_tweak01.og[0]" "twist1GroupParts.ig";
connectAttr "twist1GroupId.id" "twist1GroupParts.gi";
connectAttr "|flexiPlane01|flexiPlane_extraNodes01|flexiPlane_wire_surface01|flexiPlane_wire_surfaceShape01.ws" "flexiPlane_curveInfo01.ic"
		;
connectAttr "flexiPlane_curveInfo01.al" "flexiPlane_div_squashSretch_length01.i1x"
		;
connectAttr "flexiPlane_div_squashSretch_length01.ox" "flexiPlane_div_volumne01.i2x"
		;
connectAttr "flexiPlane_cnt_global01.enable" "flexiPlane_cond_volumne01.ft";
connectAttr "flexiPlane_div_volumne01.ox" "flexiPlane_cond_volumne01.ctr";
connectAttr "flexiPlane01.msg" "bindPose1.m[0]";
connectAttr "flexiPlane_extraNodes01.msg" "bindPose1.m[1]";
connectAttr "flexiPlane_flcs01.msg" "bindPose1.m[2]";
connectAttr "flexiPlane_flc_a01.msg" "bindPose1.m[3]";
connectAttr "bn_flexiPlane_a01.msg" "bindPose1.m[4]";
connectAttr "flexiPlane_flc_b01.msg" "bindPose1.m[5]";
connectAttr "bn_flexiPlane_b01.msg" "bindPose1.m[6]";
connectAttr "flexiPlane_flc_c01.msg" "bindPose1.m[7]";
connectAttr "bn_flexiPlane_c01.msg" "bindPose1.m[8]";
connectAttr "flexiPlane_flc_d01.msg" "bindPose1.m[9]";
connectAttr "bn_flexiPlane_d01.msg" "bindPose1.m[10]";
connectAttr "flexiPlane_flc_e01.msg" "bindPose1.m[11]";
connectAttr "bn_flexiPlane_e01.msg" "bindPose1.m[12]";
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
connectAttr "bn_flexiPlane_a01.bps" "bindPose1.wm[4]";
connectAttr "bn_flexiPlane_b01.bps" "bindPose1.wm[6]";
connectAttr "bn_flexiPlane_c01.bps" "bindPose1.wm[8]";
connectAttr "bn_flexiPlane_d01.bps" "bindPose1.wm[10]";
connectAttr "bn_flexiPlane_e01.bps" "bindPose1.wm[12]";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "felciPlane_Surface_Material01.msg" ":defaultShaderList1.s" -na;
connectAttr "flexiPlane_ss_midBend01.msg" ":defaultShaderList1.s" -na;
connectAttr "flexiPlane_div_squashSretch_length01.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "flexiPlane_div_volumne01.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "flexiPlane_cond_volumne01.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "twist1Set.pa" ":characterPartition.st" -na;
// End of FlexiPlane01.ma
