//Maya ASCII 2014 scene
//Name: SplaySplit.ma
//Last modified: Sat, Apr 18, 2015 09:18:42 PM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.6537931000019679 9.4675158144791762 -31.068138463256766 ;
	setAttr ".r" -type "double3" -6.9383527296080727 170.99999999990132 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 32.067501112051275;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 5.0233856865905668 3.0069169994283866 0 ;
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
	setAttr ".t" -type "double3" -3.7010457154230814 9.7914649931406359 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 17.769870635042587;
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
createNode transform -n "pPlane1";
	setAttr ".t" -type "double3" 0 3 12 ;
	setAttr ".r" -type "double3" -90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 6 6 6 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane2";
	setAttr ".t" -type "double3" 7 3 12 ;
	setAttr ".r" -type "double3" -90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 6 6 6 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape4" -p "pPlane2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0 0.33333334 0
		 0.66666669 0 1 0 0 0.33333334 0.33333334 0.33333334 0.66666669 0.33333334 1 0.33333334
		 0 0.66666669 0.33333334 0.66666669 0.66666669 0.66666669 1 0.66666669 0 1 0.33333334
		 1 0.66666669 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.5 -1.110223e-016 0.5 -0.16666666 -1.110223e-016 0.5
		 0.16666669 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5 -0.5 -3.7007432e-017 0.16666666
		 -0.16666666 -3.7007432e-017 0.16666666 0.16666669 -3.7007432e-017 0.16666666 0.5 -3.7007432e-017 0.16666666
		 -0.5 3.7007439e-017 -0.16666669 -0.16666666 3.7007439e-017 -0.16666669 0.16666669 3.7007439e-017 -0.16666669
		 0.5 3.7007439e-017 -0.16666669 -0.5 1.110223e-016 -0.5 -0.16666666 1.110223e-016 -0.5
		 0.16666669 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 24 ".ed[0:23]"  0 1 0 0 4 0 1 2 0 1 5 1 2 3 0 2 6 1 3 7 0
		 4 5 1 4 8 0 5 6 1 5 9 1 6 7 1 6 10 1 7 11 0 8 9 1 8 12 0 9 10 1 9 13 1 10 11 1 10 14 1
		 11 15 0 12 13 0 13 14 0 14 15 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 3 -8 -2
		mu 0 4 0 1 5 4
		f 4 2 5 -10 -4
		mu 0 4 1 2 6 5
		f 4 4 6 -12 -6
		mu 0 4 2 3 7 6
		f 4 7 10 -15 -9
		mu 0 4 4 5 9 8
		f 4 9 12 -17 -11
		mu 0 4 5 6 10 9
		f 4 11 13 -19 -13
		mu 0 4 6 7 11 10
		f 4 14 17 -22 -16
		mu 0 4 8 9 13 12
		f 4 16 19 -23 -18
		mu 0 4 9 10 14 13
		f 4 18 20 -24 -20
		mu 0 4 10 11 15 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane3";
	setAttr ".t" -type "double3" -7 3 12 ;
	setAttr ".r" -type "double3" -90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 6 6 6 ;
createNode mesh -n "pPlaneShape3" -p "pPlane3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape5" -p "pPlane3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0 0.33333334 0
		 0.66666669 0 1 0 0 0.33333334 0.33333334 0.33333334 0.66666669 0.33333334 1 0.33333334
		 0 0.66666669 0.33333334 0.66666669 0.66666669 0.66666669 1 0.66666669 0 1 0.33333334
		 1 0.66666669 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.5 -1.110223e-016 0.5 -0.16666666 -1.110223e-016 0.5
		 0.16666669 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5 -0.5 -3.7007432e-017 0.16666666
		 -0.16666666 -3.7007432e-017 0.16666666 0.16666669 -3.7007432e-017 0.16666666 0.5 -3.7007432e-017 0.16666666
		 -0.5 3.7007439e-017 -0.16666669 -0.16666666 3.7007439e-017 -0.16666669 0.16666669 3.7007439e-017 -0.16666669
		 0.5 3.7007439e-017 -0.16666669 -0.5 1.110223e-016 -0.5 -0.16666666 1.110223e-016 -0.5
		 0.16666669 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 24 ".ed[0:23]"  0 1 0 0 4 0 1 2 0 1 5 1 2 3 0 2 6 1 3 7 0
		 4 5 1 4 8 0 5 6 1 5 9 1 6 7 1 6 10 1 7 11 0 8 9 1 8 12 0 9 10 1 9 13 1 10 11 1 10 14 1
		 11 15 0 12 13 0 13 14 0 14 15 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 3 -8 -2
		mu 0 4 0 1 5 4
		f 4 2 5 -10 -4
		mu 0 4 1 2 6 5
		f 4 4 6 -12 -6
		mu 0 4 2 3 7 6
		f 4 7 10 -15 -9
		mu 0 4 4 5 9 8
		f 4 9 12 -17 -11
		mu 0 4 5 6 10 9
		f 4 11 13 -19 -13
		mu 0 4 6 7 11 10
		f 4 14 17 -22 -16
		mu 0 4 8 9 13 12
		f 4 16 19 -23 -18
		mu 0 4 9 10 14 13
		f 4 18 20 -24 -20
		mu 0 4 10 11 15 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane4";
	setAttr ".t" -type "double3" 0 10 12 ;
	setAttr ".r" -type "double3" -90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 6 6 6 ;
createNode mesh -n "pPlaneShape4" -p "pPlane4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "pPlane4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0 0.33333334 0
		 0.66666669 0 1 0 0 0.33333334 0.33333334 0.33333334 0.66666669 0.33333334 1 0.33333334
		 0 0.66666669 0.33333334 0.66666669 0.66666669 0.66666669 1 0.66666669 0 1 0.33333334
		 1 0.66666669 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.5 -1.110223e-016 0.5 -0.16666666 -1.110223e-016 0.5
		 0.16666669 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5 -0.5 -3.7007432e-017 0.16666666
		 -0.16666666 -3.7007432e-017 0.16666666 0.16666669 -3.7007432e-017 0.16666666 0.5 -3.7007432e-017 0.16666666
		 -0.5 3.7007439e-017 -0.16666669 -0.16666666 3.7007439e-017 -0.16666669 0.16666669 3.7007439e-017 -0.16666669
		 0.5 3.7007439e-017 -0.16666669 -0.5 1.110223e-016 -0.5 -0.16666666 1.110223e-016 -0.5
		 0.16666669 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 24 ".ed[0:23]"  0 1 0 0 4 0 1 2 0 1 5 1 2 3 0 2 6 1 3 7 0
		 4 5 1 4 8 0 5 6 1 5 9 1 6 7 1 6 10 1 7 11 0 8 9 1 8 12 0 9 10 1 9 13 1 10 11 1 10 14 1
		 11 15 0 12 13 0 13 14 0 14 15 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 3 -8 -2
		mu 0 4 0 1 5 4
		f 4 2 5 -10 -4
		mu 0 4 1 2 6 5
		f 4 4 6 -12 -6
		mu 0 4 2 3 7 6
		f 4 7 10 -15 -9
		mu 0 4 4 5 9 8
		f 4 9 12 -17 -11
		mu 0 4 5 6 10 9
		f 4 11 13 -19 -13
		mu 0 4 6 7 11 10
		f 4 14 17 -22 -16
		mu 0 4 8 9 13 12
		f 4 16 19 -23 -18
		mu 0 4 9 10 14 13
		f 4 18 20 -24 -20
		mu 0 4 10 11 15 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane5";
	setAttr ".t" -type "double3" 7 10 12 ;
	setAttr ".r" -type "double3" -90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 6 6 6 ;
createNode mesh -n "pPlaneShape5" -p "pPlane5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pPlane5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0 0.33333334 0
		 0.66666669 0 1 0 0 0.33333334 0.33333334 0.33333334 0.66666669 0.33333334 1 0.33333334
		 0 0.66666669 0.33333334 0.66666669 0.66666669 0.66666669 1 0.66666669 0 1 0.33333334
		 1 0.66666669 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.5 -1.110223e-016 0.5 -0.16666666 -1.110223e-016 0.5
		 0.16666669 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5 -0.5 -3.7007432e-017 0.16666666
		 -0.16666666 -3.7007432e-017 0.16666666 0.16666669 -3.7007432e-017 0.16666666 0.5 -3.7007432e-017 0.16666666
		 -0.5 3.7007439e-017 -0.16666669 -0.16666666 3.7007439e-017 -0.16666669 0.16666669 3.7007439e-017 -0.16666669
		 0.5 3.7007439e-017 -0.16666669 -0.5 1.110223e-016 -0.5 -0.16666666 1.110223e-016 -0.5
		 0.16666669 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 24 ".ed[0:23]"  0 1 0 0 4 0 1 2 0 1 5 1 2 3 0 2 6 1 3 7 0
		 4 5 1 4 8 0 5 6 1 5 9 1 6 7 1 6 10 1 7 11 0 8 9 1 8 12 0 9 10 1 9 13 1 10 11 1 10 14 1
		 11 15 0 12 13 0 13 14 0 14 15 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 3 -8 -2
		mu 0 4 0 1 5 4
		f 4 2 5 -10 -4
		mu 0 4 1 2 6 5
		f 4 4 6 -12 -6
		mu 0 4 2 3 7 6
		f 4 7 10 -15 -9
		mu 0 4 4 5 9 8
		f 4 9 12 -17 -11
		mu 0 4 5 6 10 9
		f 4 11 13 -19 -13
		mu 0 4 6 7 11 10
		f 4 14 17 -22 -16
		mu 0 4 8 9 13 12
		f 4 16 19 -23 -18
		mu 0 4 9 10 14 13
		f 4 18 20 -24 -20
		mu 0 4 10 11 15 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane6";
	setAttr ".t" -type "double3" -7 10 12 ;
	setAttr ".r" -type "double3" -90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 6 6 6 ;
createNode mesh -n "pPlaneShape6" -p "pPlane6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "pPlane6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0 0.33333334 0
		 0.66666669 0 1 0 0 0.33333334 0.33333334 0.33333334 0.66666669 0.33333334 1 0.33333334
		 0 0.66666669 0.33333334 0.66666669 0.66666669 0.66666669 1 0.66666669 0 1 0.33333334
		 1 0.66666669 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.5 -1.110223e-016 0.5 -0.16666666 -1.110223e-016 0.5
		 0.16666669 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5 -0.5 -3.7007432e-017 0.16666666
		 -0.16666666 -3.7007432e-017 0.16666666 0.16666669 -3.7007432e-017 0.16666666 0.5 -3.7007432e-017 0.16666666
		 -0.5 3.7007439e-017 -0.16666669 -0.16666666 3.7007439e-017 -0.16666669 0.16666669 3.7007439e-017 -0.16666669
		 0.5 3.7007439e-017 -0.16666669 -0.5 1.110223e-016 -0.5 -0.16666666 1.110223e-016 -0.5
		 0.16666669 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 24 ".ed[0:23]"  0 1 0 0 4 0 1 2 0 1 5 1 2 3 0 2 6 1 3 7 0
		 4 5 1 4 8 0 5 6 1 5 9 1 6 7 1 6 10 1 7 11 0 8 9 1 8 12 0 9 10 1 9 13 1 10 11 1 10 14 1
		 11 15 0 12 13 0 13 14 0 14 15 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 3 -8 -2
		mu 0 4 0 1 5 4
		f 4 2 5 -10 -4
		mu 0 4 1 2 6 5
		f 4 4 6 -12 -6
		mu 0 4 2 3 7 6
		f 4 7 10 -15 -9
		mu 0 4 4 5 9 8
		f 4 9 12 -17 -11
		mu 0 4 5 6 10 9
		f 4 11 13 -19 -13
		mu 0 4 6 7 11 10
		f 4 14 17 -22 -16
		mu 0 4 8 9 13 12
		f 4 16 19 -23 -18
		mu 0 4 9 10 14 13
		f 4 18 20 -24 -20
		mu 0 4 10 11 15 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" -7.0055114069928672 9.4485420136201714 0 ;
	setAttr ".s" -type "double3" 4.8191257729057861 4.8191257729057861 0.66880306862091277 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "back1";
	setAttr ".t" -type "double3" -4.382178652902903 7.2742776422729092 -100.1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "backShape2" -p "back1";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 24.465461636928254;
	setAttr ".imn" -type "string" "back1";
	setAttr ".den" -type "string" "back1_depth";
	setAttr ".man" -type "string" "back1_mask";
	setAttr ".hc" -type "string" "viewSet -b %camera";
	setAttr ".o" yes;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" 7 9.4485420136201714 0 ;
	setAttr ".s" -type "double3" 4.8191257729057861 4.8191257729057861 0.66880306862091277 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape6" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0 0.62499994
		 0.23582576 0.38514552 0.74999994 0.40122354 0.5101456 0.59877628 0.5101456 0.37499997
		 0.23582575 0.14771937 0.23094021 0.1499975 -9.3132257e-009 0.375 0.74461293 0.61205202
		 0.25 0.625 0 0.85000247 0 0.85228062 0.23094022 0.40346953 0.5 0.61485434 0.52622372
		 0.625 0.51887667 0.625 0.74759847 0.6148544 0.74999994 0.375 0.25352845 0.38794786
		 0.25 0.39166296 0.47746867 0.375 0.4774687 0.375 0.51864862 0.37820929 0.50320923
		 0.3851456 0.5101456 0.3851456 0.52622354 0.62499994 0.25390705 0.625 0.47746867 0.60833693
		 0.47746867 0.62123346 0.48613837 0.61521125 0.5 0.59927535 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -0.62087512 -0.40276742 0.50000012 0.62087524 -0.40276742 0.50000012
		 -0.51208639 -0.49027777 -0.40001005 -0.4594177 -0.50000012 -0.50000012 0.51208645 -0.49027777 -0.40001005
		 0.45941758 -0.50000012 -0.50000012 -0.62087512 0.66723084 0.50000012 -0.5565629 0.73154306 0.50000012
		 -0.51098466 0.44377923 -0.40912271 -0.44278955 0.52086806 -0.40987477 0.55656326 0.73154306 0.50000012
		 0.62087524 0.66723084 0.50000012 0.44278967 0.52086806 -0.40987477 0.51098478 0.44377923 -0.40912271
		 -0.39510584 0.45941734 -0.50000012 -0.4594177 0.39510512 -0.50000012 0.45941758 0.39510512 -0.50000012
		 0.3951056 0.45941734 -0.50000012;
	setAttr -s 28 ".ed[0:27]"  0 6 0 1 11 0 2 0 0 3 5 0 3 2 0 4 1 0 5 4 0
		 3 15 0 4 13 0 7 10 0 7 6 0 8 2 0 11 10 0 12 9 1 14 17 1 15 14 1 16 5 0 17 16 1 6 8 0
		 8 15 1 9 7 0 10 12 0 12 17 1 13 11 0 14 9 1 16 13 1 9 8 0 13 12 0;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 20 9 21 13
		mu 0 4 20 19 9 28
		f 4 -6 8 23 -2
		mu 0 4 10 11 12 1
		f 4 18 11 2 0
		mu 0 4 5 6 7 0
		f 6 7 15 14 17 16 -4
		mu 0 6 2 25 3 4 14 17
		f 4 19 -8 4 -12
		mu 0 4 22 25 2 8
		f 4 24 -14 22 -15
		mu 0 4 13 20 28 31
		f 4 25 -9 -7 -17
		mu 0 4 14 15 16 17
		f 4 -11 -21 26 -19
		mu 0 4 18 19 20 21
		f 4 -27 -25 -16 -20
		mu 0 4 22 23 24 25
		f 4 -13 -24 27 -22
		mu 0 4 9 26 27 28
		f 4 -28 -26 -18 -23
		mu 0 4 28 29 30 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" 7 7.449 0 ;
	setAttr ".s" -type "double3" 4.8191257729057861 4.8191257729057861 0.66880306862091277 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape6" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0 0.62499994
		 0.23582576 0.38514552 0.74999994 0.40122354 0.5101456 0.59877628 0.5101456 0.37499997
		 0.23582575 0.14771937 0.23094021 0.1499975 -9.3132257e-009 0.375 0.74461293 0.61205202
		 0.25 0.625 0 0.85000247 0 0.85228062 0.23094022 0.40346953 0.5 0.61485434 0.52622372
		 0.625 0.51887667 0.625 0.74759847 0.6148544 0.74999994 0.375 0.25352845 0.38794786
		 0.25 0.39166296 0.47746867 0.375 0.4774687 0.375 0.51864862 0.37820929 0.50320923
		 0.3851456 0.5101456 0.3851456 0.52622354 0.62499994 0.25390705 0.625 0.47746867 0.60833693
		 0.47746867 0.62123346 0.48613837 0.61521125 0.5 0.59927535 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -0.62087512 -0.40276742 0.50000012 0.62087524 -0.40276742 0.50000012
		 -0.51208639 -0.49027777 -0.40001005 -0.4594177 -0.50000012 -0.50000012 0.51208645 -0.49027777 -0.40001005
		 0.45941758 -0.50000012 -0.50000012 -0.62087512 0.66723084 0.50000012 -0.5565629 0.73154306 0.50000012
		 -0.51098466 0.44377923 -0.40912271 -0.44278955 0.52086806 -0.40987477 0.55656326 0.73154306 0.50000012
		 0.62087524 0.66723084 0.50000012 0.44278967 0.52086806 -0.40987477 0.51098478 0.44377923 -0.40912271
		 -0.39510584 0.45941734 -0.50000012 -0.4594177 0.39510512 -0.50000012 0.45941758 0.39510512 -0.50000012
		 0.3951056 0.45941734 -0.50000012;
	setAttr -s 28 ".ed[0:27]"  0 6 0 1 11 0 2 0 0 3 5 0 3 2 0 4 1 0 5 4 0
		 3 15 0 4 13 0 7 10 0 7 6 0 8 2 0 11 10 0 12 9 1 14 17 1 15 14 1 16 5 0 17 16 1 6 8 0
		 8 15 1 9 7 0 10 12 0 12 17 1 13 11 0 14 9 1 16 13 1 9 8 0 13 12 0;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 20 9 21 13
		mu 0 4 20 19 9 28
		f 4 -6 8 23 -2
		mu 0 4 10 11 12 1
		f 4 18 11 2 0
		mu 0 4 5 6 7 0
		f 6 7 15 14 17 16 -4
		mu 0 6 2 25 3 4 14 17
		f 4 19 -8 4 -12
		mu 0 4 22 25 2 8
		f 4 24 -14 22 -15
		mu 0 4 13 20 28 31
		f 4 25 -9 -7 -17
		mu 0 4 14 15 16 17
		f 4 -11 -21 26 -19
		mu 0 4 18 19 20 21
		f 4 -27 -25 -16 -20
		mu 0 4 22 23 24 25
		f 4 -13 -24 27 -22
		mu 0 4 9 26 27 28
		f 4 -28 -26 -18 -23
		mu 0 4 28 29 30 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape9" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.62499994 0.23582576
		 0.40122354 0.5101456 0.59877628 0.5101456 0.37499997 0.23582575 0.14771937 0.23094021
		 0.61205202 0.25 0.85228062 0.23094022 0.40346953 0.5 0.61485434 0.52622372 0.625
		 0.51887667 0.375 0.25352845 0.38794786 0.25 0.39166296 0.47746867 0.375 0.4774687
		 0.375 0.51864862 0.37820929 0.50320923 0.3851456 0.5101456 0.3851456 0.52622354 0.62499994
		 0.25390705 0.625 0.47746867 0.60833693 0.47746867 0.62123346 0.48613837 0.61521125
		 0.5 0.59927535 0.5 0.375 0.15917645 0.62499994 0.15917645 0.3851456 0.54513621 0.85197741
		 0.20020166 0.625 0.54931998 0.14802261 0.20020165 0.37500003 0.54872489 0.61485434
		 0.54513633;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -0.62087506 0.66723084 0.50000018 -0.5565629 0.73154306 0.50000018
		 -0.51098472 0.44377923 -0.40912277 -0.44278955 0.52086806 -0.4098748 0.55656314 0.73154306 0.50000018
		 0.62087536 0.66723084 0.50000018 0.44278979 0.52086806 -0.4098748 0.51098478 0.44377923 -0.40912277
		 -0.39510584 0.45941734 -0.50000018 -0.4594177 0.39510512 -0.50000018 0.45941758 0.39510512 -0.50000018
		 0.3951056 0.45941734 -0.50000018 -0.62087506 0.32193774 0.50000018 0.62087536 0.32193774 0.50000018
		 -0.4594177 0.32193774 -0.50000018 0.51113141 0.32193774 -0.40790984 -0.51113135 0.32193774 -0.40790984
		 0.45941758 0.3219375 -0.50000012;
	setAttr -s 28 ".ed[0:27]"  1 4 0 1 0 0 2 16 0 5 4 0 6 3 1 8 11 1 9 8 1
		 10 17 0 11 10 1 0 2 0 2 9 1 3 1 0 4 6 0 6 11 1 7 5 0 8 3 1 10 7 1 3 2 0 7 6 0 12 0 0
		 13 5 0 14 9 0 15 7 0 15 13 0 16 12 0 14 17 0 14 16 0 15 17 0;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 11 0 12 4
		mu 0 4 12 11 5 20
		f 4 9 2 24 19
		mu 0 4 3 4 29 24
		f 4 10 -22 26 -3
		mu 0 4 14 17 26 30
		f 4 15 -5 13 -6
		mu 0 4 7 12 20 23
		f 4 16 -23 27 -8
		mu 0 4 8 9 28 31
		f 4 -2 -12 17 -10
		mu 0 4 10 11 12 13
		f 4 -18 -16 -7 -11
		mu 0 4 14 15 16 17
		f 4 -4 -15 18 -13
		mu 0 4 5 18 19 20
		f 4 -19 -17 -9 -14
		mu 0 4 20 21 22 23
		f 4 -24 22 14 -21
		mu 0 4 25 27 6 0
		f 6 -26 21 6 5 8 7
		mu 0 6 31 26 17 1 2 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	setAttr ".t" -type "double3" 5 2.449 0 ;
	setAttr ".s" -type "double3" 4.8191257729057861 4.8191257729057861 0.66880306862091277 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape11" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0 0.62499994
		 0.23582576 0.38514552 0.74999994 0.40122354 0.5101456 0.59877628 0.5101456 0.37499997
		 0.23582575 0.14771937 0.23094021 0.1499975 -9.3132257e-009 0.375 0.74461293 0.61205202
		 0.25 0.625 0 0.85000247 0 0.85228062 0.23094022 0.40346953 0.5 0.61485434 0.52622372
		 0.625 0.51887667 0.625 0.74759847 0.6148544 0.74999994 0.375 0.25352845 0.38794786
		 0.25 0.39166296 0.47746867 0.375 0.4774687 0.375 0.51864862 0.37820929 0.50320923
		 0.3851456 0.5101456 0.3851456 0.52622354 0.62499994 0.25390705 0.625 0.47746867 0.60833693
		 0.47746867 0.62123346 0.48613837 0.61521125 0.5 0.59927535 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  0.42071846 0 0 -0.41101331 
		-1.110223e-016 0 0.42071846 0 0 0.42071846 0 0 -0.41101331 -1.110223e-016 0 -0.41101331 
		-1.110223e-016 0 0.42071846 0 0 0.42071846 0 0 0.42071846 0 0 0.42071846 0 0 -0.41101331 
		-1.110223e-016 0 -0.41101331 -1.110223e-016 0 -0.41101331 -1.110223e-016 0 -0.41101331 
		-1.110223e-016 0 0.39525193 0 0 0.42071846 0 0 -0.41101331 -1.110223e-016 0 -0.38554677 
		-1.110223e-016 0;
	setAttr -s 18 ".vt[0:17]"  -0.62087512 -0.40276742 0.50000012 0.62087524 -0.40276742 0.50000012
		 -0.51208639 -0.49027777 -0.40001005 -0.4594177 -0.50000012 -0.50000012 0.51208645 -0.49027777 -0.40001005
		 0.45941758 -0.50000012 -0.50000012 -0.62087512 0.66723084 0.50000012 -0.5565629 0.73154306 0.50000012
		 -0.51098466 0.44377923 -0.40912271 -0.44278955 0.52086806 -0.40987477 0.55656326 0.73154306 0.50000012
		 0.62087524 0.66723084 0.50000012 0.44278967 0.52086806 -0.40987477 0.51098478 0.44377923 -0.40912271
		 -0.39510584 0.45941734 -0.50000012 -0.4594177 0.39510512 -0.50000012 0.45941758 0.39510512 -0.50000012
		 0.3951056 0.45941734 -0.50000012;
	setAttr -s 28 ".ed[0:27]"  0 6 0 1 11 0 2 0 0 3 5 0 3 2 0 4 1 0 5 4 0
		 3 15 0 4 13 0 7 10 0 7 6 0 8 2 0 11 10 0 12 9 1 14 17 1 15 14 1 16 5 0 17 16 1 6 8 0
		 8 15 1 9 7 0 10 12 0 12 17 1 13 11 0 14 9 1 16 13 1 9 8 0 13 12 0;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 20 9 21 13
		mu 0 4 20 19 9 28
		f 4 -6 8 23 -2
		mu 0 4 10 11 12 1
		f 4 18 11 2 0
		mu 0 4 5 6 7 0
		f 6 7 15 14 17 16 -4
		mu 0 6 2 25 3 4 14 17
		f 4 19 -8 4 -12
		mu 0 4 22 25 2 8
		f 4 24 -14 22 -15
		mu 0 4 13 20 28 31
		f 4 25 -9 -7 -17
		mu 0 4 14 15 16 17
		f 4 -11 -21 26 -19
		mu 0 4 18 19 20 21
		f 4 -27 -25 -16 -20
		mu 0 4 22 23 24 25
		f 4 -13 -24 27 -22
		mu 0 4 9 26 27 28
		f 4 -28 -26 -18 -23
		mu 0 4 28 29 30 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5";
	setAttr ".t" -type "double3" 5 5.449 0 ;
	setAttr ".s" -type "double3" 4.8191257729057861 4.8191257729057861 0.66880306862091277 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape7" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0 0.62499994
		 0.23582576 0.38514552 0.74999994 0.40122354 0.5101456 0.59877628 0.5101456 0.37499997
		 0.23582575 0.14771937 0.23094021 0.1499975 -9.3132257e-009 0.375 0.74461293 0.61205202
		 0.25 0.625 0 0.85000247 0 0.85228062 0.23094022 0.40346953 0.5 0.61485434 0.52622372
		 0.625 0.51887667 0.625 0.74759847 0.6148544 0.74999994 0.375 0.25352845 0.38794786
		 0.25 0.39166296 0.47746867 0.375 0.4774687 0.375 0.51864862 0.37820929 0.50320923
		 0.3851456 0.5101456 0.3851456 0.52622354 0.62499994 0.25390705 0.625 0.47746867 0.60833693
		 0.47746867 0.62123346 0.48613837 0.61521125 0.5 0.59927535 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  0.42071846 0 0 -0.41101331 
		-1.110223e-016 0 0.42071846 0 0 0.42071846 0 0 -0.41101331 -1.110223e-016 0 -0.41101331 
		-1.110223e-016 0 0.42071846 0 0 0.42071846 0 0 0.42071846 0 0 0.42071846 0 0 -0.41101331 
		-1.110223e-016 0 -0.41101331 -1.110223e-016 0 -0.41101331 -1.110223e-016 0 -0.41101331 
		-1.110223e-016 0 0.39525193 0 0 0.42071846 0 0 -0.41101331 -1.110223e-016 0 -0.38554677 
		-1.110223e-016 0;
	setAttr -s 18 ".vt[0:17]"  -0.62087512 -0.40276742 0.50000012 0.62087524 -0.40276742 0.50000012
		 -0.51208639 -0.49027777 -0.40001005 -0.4594177 -0.50000012 -0.50000012 0.51208645 -0.49027777 -0.40001005
		 0.45941758 -0.50000012 -0.50000012 -0.62087512 0.66723084 0.50000012 -0.5565629 0.73154306 0.50000012
		 -0.51098466 0.44377923 -0.40912271 -0.44278955 0.52086806 -0.40987477 0.55656326 0.73154306 0.50000012
		 0.62087524 0.66723084 0.50000012 0.44278967 0.52086806 -0.40987477 0.51098478 0.44377923 -0.40912271
		 -0.39510584 0.45941734 -0.50000012 -0.4594177 0.39510512 -0.50000012 0.45941758 0.39510512 -0.50000012
		 0.3951056 0.45941734 -0.50000012;
	setAttr -s 28 ".ed[0:27]"  0 6 0 1 11 0 2 0 0 3 5 0 3 2 0 4 1 0 5 4 0
		 3 15 0 4 13 0 7 10 0 7 6 0 8 2 0 11 10 0 12 9 1 14 17 1 15 14 1 16 5 0 17 16 1 6 8 0
		 8 15 1 9 7 0 10 12 0 12 17 1 13 11 0 14 9 1 16 13 1 9 8 0 13 12 0;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 20 9 21 13
		mu 0 4 20 19 9 28
		f 4 -6 8 23 -2
		mu 0 4 10 11 12 1
		f 4 18 11 2 0
		mu 0 4 5 6 7 0
		f 6 7 15 14 17 16 -4
		mu 0 6 2 25 3 4 14 17
		f 4 19 -8 4 -12
		mu 0 4 22 25 2 8
		f 4 24 -14 22 -15
		mu 0 4 13 20 28 31
		f 4 25 -9 -7 -17
		mu 0 4 14 15 16 17
		f 4 -11 -21 26 -19
		mu 0 4 18 19 20 21
		f 4 -27 -25 -16 -20
		mu 0 4 22 23 24 25
		f 4 -13 -24 27 -22
		mu 0 4 9 26 27 28
		f 4 -28 -26 -18 -23
		mu 0 4 28 29 30 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6";
	setAttr ".t" -type "double3" 0 2.449 0 ;
	setAttr ".s" -type "double3" 4.8191257729057861 4.8191257729057861 0.66880306862091277 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape6" -p "pCube6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0 0.62499994
		 0.23582576 0.38514552 0.74999994 0.40122354 0.5101456 0.59877628 0.5101456 0.37499997
		 0.23582575 0.14771937 0.23094021 0.1499975 -9.3132257e-009 0.375 0.74461293 0.61205202
		 0.25 0.625 0 0.85000247 0 0.85228062 0.23094022 0.40346953 0.5 0.61485434 0.52622372
		 0.625 0.51887667 0.625 0.74759847 0.6148544 0.74999994 0.375 0.25352845 0.38794786
		 0.25 0.39166296 0.47746867 0.375 0.4774687 0.375 0.51864862 0.37820929 0.50320923
		 0.3851456 0.5101456 0.3851456 0.52622354 0.62499994 0.25390705 0.625 0.47746867 0.60833693
		 0.47746867 0.62123346 0.48613837 0.61521125 0.5 0.59927535 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -0.62087512 -0.40276742 0.50000012 0.62087524 -0.40276742 0.50000012
		 -0.51208639 -0.49027777 -0.40001005 -0.4594177 -0.50000012 -0.50000012 0.51208645 -0.49027777 -0.40001005
		 0.45941758 -0.50000012 -0.50000012 -0.62087512 0.66723084 0.50000012 -0.5565629 0.73154306 0.50000012
		 -0.51098466 0.44377923 -0.40912271 -0.44278955 0.52086806 -0.40987477 0.55656326 0.73154306 0.50000012
		 0.62087524 0.66723084 0.50000012 0.44278967 0.52086806 -0.40987477 0.51098478 0.44377923 -0.40912271
		 -0.39510584 0.45941734 -0.50000012 -0.4594177 0.39510512 -0.50000012 0.45941758 0.39510512 -0.50000012
		 0.3951056 0.45941734 -0.50000012;
	setAttr -s 28 ".ed[0:27]"  0 6 0 1 11 0 2 0 0 3 5 0 3 2 0 4 1 0 5 4 0
		 3 15 0 4 13 0 7 10 0 7 6 0 8 2 0 11 10 0 12 9 1 14 17 1 15 14 1 16 5 0 17 16 1 6 8 0
		 8 15 1 9 7 0 10 12 0 12 17 1 13 11 0 14 9 1 16 13 1 9 8 0 13 12 0;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 20 9 21 13
		mu 0 4 20 19 9 28
		f 4 -6 8 23 -2
		mu 0 4 10 11 12 1
		f 4 18 11 2 0
		mu 0 4 5 6 7 0
		f 6 7 15 14 17 16 -4
		mu 0 6 2 25 3 4 14 17
		f 4 19 -8 4 -12
		mu 0 4 22 25 2 8
		f 4 24 -14 22 -15
		mu 0 4 13 20 28 31
		f 4 25 -9 -7 -17
		mu 0 4 14 15 16 17
		f 4 -11 -21 26 -19
		mu 0 4 18 19 20 21
		f 4 -27 -25 -16 -20
		mu 0 4 22 23 24 25
		f 4 -13 -24 27 -22
		mu 0 4 9 26 27 28
		f 4 -28 -26 -18 -23
		mu 0 4 28 29 30 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape12" -p "pCube6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.62499994 0.23582576
		 0.40122354 0.5101456 0.59877628 0.5101456 0.37499997 0.23582575 0.14771937 0.23094021
		 0.61205202 0.25 0.85228062 0.23094022 0.40346953 0.5 0.61485434 0.52622372 0.625
		 0.51887667 0.375 0.25352845 0.38794786 0.25 0.39166296 0.47746867 0.375 0.4774687
		 0.375 0.51864862 0.37820929 0.50320923 0.3851456 0.5101456 0.3851456 0.52622354 0.62499994
		 0.25390705 0.625 0.47746867 0.60833693 0.47746867 0.62123346 0.48613837 0.61521125
		 0.5 0.59927535 0.5 0.375 0.15917645 0.62499994 0.15917645 0.3851456 0.54513621 0.85197741
		 0.20020166 0.625 0.54931998 0.14802261 0.20020165 0.37500003 0.54872489 0.61485434
		 0.54513633;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -0.62087506 0.66723084 0.50000018 -0.5565629 0.73154306 0.50000018
		 -0.51098472 0.44377923 -0.40912277 -0.44278955 0.52086806 -0.4098748 0.55656314 0.73154306 0.50000018
		 0.62087536 0.66723084 0.50000018 0.44278979 0.52086806 -0.4098748 0.51098478 0.44377923 -0.40912277
		 -0.39510584 0.45941734 -0.50000018 -0.4594177 0.39510512 -0.50000018 0.45941758 0.39510512 -0.50000018
		 0.3951056 0.45941734 -0.50000018 -0.62087506 0.32193774 0.50000018 0.62087536 0.32193774 0.50000018
		 -0.4594177 0.32193774 -0.50000018 0.51113141 0.32193774 -0.40790984 -0.51113135 0.32193774 -0.40790984
		 0.45941758 0.3219375 -0.50000012;
	setAttr -s 28 ".ed[0:27]"  1 4 0 1 0 0 2 16 0 5 4 0 6 3 1 8 11 1 9 8 1
		 10 17 0 11 10 1 0 2 0 2 9 1 3 1 0 4 6 0 6 11 1 7 5 0 8 3 1 10 7 1 3 2 0 7 6 0 12 0 0
		 13 5 0 14 9 0 15 7 0 15 13 0 16 12 0 14 17 0 14 16 0 15 17 0;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 11 0 12 4
		mu 0 4 12 11 5 20
		f 4 9 2 24 19
		mu 0 4 3 4 29 24
		f 4 10 -22 26 -3
		mu 0 4 14 17 26 30
		f 4 15 -5 13 -6
		mu 0 4 7 12 20 23
		f 4 16 -23 27 -8
		mu 0 4 8 9 28 31
		f 4 -2 -12 17 -10
		mu 0 4 10 11 12 13
		f 4 -18 -16 -7 -11
		mu 0 4 14 15 16 17
		f 4 -4 -15 18 -13
		mu 0 4 5 18 19 20
		f 4 -19 -17 -9 -14
		mu 0 4 20 21 22 23
		f 4 -24 22 14 -21
		mu 0 4 25 27 6 0
		f 6 -26 21 6 5 8 7
		mu 0 6 31 26 17 1 2 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7";
	setAttr ".t" -type "double3" -1.1094445224535303 7.449 0 ;
	setAttr ".s" -type "double3" 6.2160608348842938 4.8191257729057861 0.66880306862091277 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  -1.4901161e-008 0 0 -1.4901161e-008 
		0 0 -1.4901161e-008 0 0 -1.4901161e-008 0 0;
createNode mesh -n "polySurfaceShape6" -p "pCube7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0 0.62499994
		 0.23582576 0.38514552 0.74999994 0.40122354 0.5101456 0.59877628 0.5101456 0.37499997
		 0.23582575 0.14771937 0.23094021 0.1499975 -9.3132257e-009 0.375 0.74461293 0.61205202
		 0.25 0.625 0 0.85000247 0 0.85228062 0.23094022 0.40346953 0.5 0.61485434 0.52622372
		 0.625 0.51887667 0.625 0.74759847 0.6148544 0.74999994 0.375 0.25352845 0.38794786
		 0.25 0.39166296 0.47746867 0.375 0.4774687 0.375 0.51864862 0.37820929 0.50320923
		 0.3851456 0.5101456 0.3851456 0.52622354 0.62499994 0.25390705 0.625 0.47746867 0.60833693
		 0.47746867 0.62123346 0.48613837 0.61521125 0.5 0.59927535 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -0.62087512 -0.40276742 0.50000012 0.62087524 -0.40276742 0.50000012
		 -0.51208639 -0.49027777 -0.40001005 -0.4594177 -0.50000012 -0.50000012 0.51208645 -0.49027777 -0.40001005
		 0.45941758 -0.50000012 -0.50000012 -0.62087512 0.66723084 0.50000012 -0.5565629 0.73154306 0.50000012
		 -0.51098466 0.44377923 -0.40912271 -0.44278955 0.52086806 -0.40987477 0.55656326 0.73154306 0.50000012
		 0.62087524 0.66723084 0.50000012 0.44278967 0.52086806 -0.40987477 0.51098478 0.44377923 -0.40912271
		 -0.39510584 0.45941734 -0.50000012 -0.4594177 0.39510512 -0.50000012 0.45941758 0.39510512 -0.50000012
		 0.3951056 0.45941734 -0.50000012;
	setAttr -s 28 ".ed[0:27]"  0 6 0 1 11 0 2 0 0 3 5 0 3 2 0 4 1 0 5 4 0
		 3 15 0 4 13 0 7 10 0 7 6 0 8 2 0 11 10 0 12 9 1 14 17 1 15 14 1 16 5 0 17 16 1 6 8 0
		 8 15 1 9 7 0 10 12 0 12 17 1 13 11 0 14 9 1 16 13 1 9 8 0 13 12 0;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 20 9 21 13
		mu 0 4 20 19 9 28
		f 4 -6 8 23 -2
		mu 0 4 10 11 12 1
		f 4 18 11 2 0
		mu 0 4 5 6 7 0
		f 6 7 15 14 17 16 -4
		mu 0 6 2 25 3 4 14 17
		f 4 19 -8 4 -12
		mu 0 4 22 25 2 8
		f 4 24 -14 22 -15
		mu 0 4 13 20 28 31
		f 4 25 -9 -7 -17
		mu 0 4 14 15 16 17
		f 4 -11 -21 26 -19
		mu 0 4 18 19 20 21
		f 4 -27 -25 -16 -20
		mu 0 4 22 23 24 25
		f 4 -13 -24 27 -22
		mu 0 4 9 26 27 28
		f 4 -28 -26 -18 -23
		mu 0 4 28 29 30 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.62499994 0.23582576
		 0.40122354 0.5101456 0.59877628 0.5101456 0.37499997 0.23582575 0.14771937 0.23094021
		 0.61205202 0.25 0.85228062 0.23094022 0.40346953 0.5 0.61485434 0.52622372 0.625
		 0.51887667 0.375 0.25352845 0.38794786 0.25 0.39166296 0.47746867 0.375 0.4774687
		 0.375 0.51864862 0.37820929 0.50320923 0.3851456 0.5101456 0.3851456 0.52622354 0.62499994
		 0.25390705 0.625 0.47746867 0.60833693 0.47746867 0.62123346 0.48613837 0.61521125
		 0.5 0.59927535 0.5 0.375 0.15917645 0.62499994 0.15917645 0.3851456 0.54513621 0.85197741
		 0.20020166 0.625 0.54931998 0.14802261 0.20020165 0.37500003 0.54872489 0.61485434
		 0.54513633;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -0.62087506 0.66723084 0.50000018 -0.5565629 0.73154306 0.50000018
		 -0.51098472 0.44377923 -0.40912277 -0.44278955 0.52086806 -0.4098748 0.55656314 0.73154306 0.50000018
		 0.62087536 0.66723084 0.50000018 0.44278979 0.52086806 -0.4098748 0.51098478 0.44377923 -0.40912277
		 -0.39510584 0.45941734 -0.50000018 -0.4594177 0.39510512 -0.50000018 0.45941758 0.39510512 -0.50000018
		 0.3951056 0.45941734 -0.50000018 -0.62087506 0.32193774 0.50000018 0.62087536 0.32193774 0.50000018
		 -0.4594177 0.32193774 -0.50000018 0.51113141 0.32193774 -0.40790984 -0.51113135 0.32193774 -0.40790984
		 0.45941758 0.3219375 -0.50000012;
	setAttr -s 28 ".ed[0:27]"  1 4 0 1 0 0 2 16 0 5 4 0 6 3 1 8 11 1 9 8 1
		 10 17 0 11 10 1 0 2 0 2 9 1 3 1 0 4 6 0 6 11 1 7 5 0 8 3 1 10 7 1 3 2 0 7 6 0 12 0 0
		 13 5 0 14 9 0 15 7 0 15 13 0 16 12 0 14 17 0 14 16 0 15 17 0;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 11 0 12 4
		mu 0 4 12 11 5 20
		f 4 9 2 24 19
		mu 0 4 3 4 29 24
		f 4 10 -22 26 -3
		mu 0 4 14 17 26 30
		f 4 15 -5 13 -6
		mu 0 4 7 12 20 23
		f 4 16 -23 27 -8
		mu 0 4 8 9 28 31
		f 4 -2 -12 17 -10
		mu 0 4 10 11 12 13
		f 4 -18 -16 -7 -11
		mu 0 4 14 15 16 17
		f 4 -4 -15 18 -13
		mu 0 4 5 18 19 20
		f 4 -19 -17 -9 -14
		mu 0 4 20 21 22 23
		f 4 -24 22 14 -21
		mu 0 4 25 27 6 0
		f 6 -26 21 6 5 8 7
		mu 0 6 31 26 17 1 2 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8";
	setAttr ".t" -type "double3" -1.1094445224535303 9.449 0 ;
	setAttr ".s" -type "double3" 6.2160608348842938 4.8191257729057861 0.66880306862091277 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape6" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0 0.62499994
		 0.23582576 0.38514552 0.74999994 0.40122354 0.5101456 0.59877628 0.5101456 0.37499997
		 0.23582575 0.14771937 0.23094021 0.1499975 -9.3132257e-009 0.375 0.74461293 0.61205202
		 0.25 0.625 0 0.85000247 0 0.85228062 0.23094022 0.40346953 0.5 0.61485434 0.52622372
		 0.625 0.51887667 0.625 0.74759847 0.6148544 0.74999994 0.375 0.25352845 0.38794786
		 0.25 0.39166296 0.47746867 0.375 0.4774687 0.375 0.51864862 0.37820929 0.50320923
		 0.3851456 0.5101456 0.3851456 0.52622354 0.62499994 0.25390705 0.625 0.47746867 0.60833693
		 0.47746867 0.62123346 0.48613837 0.61521125 0.5 0.59927535 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -0.62087512 -0.40276742 0.50000012 0.62087524 -0.40276742 0.50000012
		 -0.51208639 -0.49027777 -0.40001005 -0.4594177 -0.50000012 -0.50000012 0.51208645 -0.49027777 -0.40001005
		 0.45941758 -0.50000012 -0.50000012 -0.62087512 0.66723084 0.50000012 -0.5565629 0.73154306 0.50000012
		 -0.51098466 0.44377923 -0.40912271 -0.44278955 0.52086806 -0.40987477 0.55656326 0.73154306 0.50000012
		 0.62087524 0.66723084 0.50000012 0.44278967 0.52086806 -0.40987477 0.51098478 0.44377923 -0.40912271
		 -0.39510584 0.45941734 -0.50000012 -0.4594177 0.39510512 -0.50000012 0.45941758 0.39510512 -0.50000012
		 0.3951056 0.45941734 -0.50000012;
	setAttr -s 28 ".ed[0:27]"  0 6 0 1 11 0 2 0 0 3 5 0 3 2 0 4 1 0 5 4 0
		 3 15 0 4 13 0 7 10 0 7 6 0 8 2 0 11 10 0 12 9 1 14 17 1 15 14 1 16 5 0 17 16 1 6 8 0
		 8 15 1 9 7 0 10 12 0 12 17 1 13 11 0 14 9 1 16 13 1 9 8 0 13 12 0;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 20 9 21 13
		mu 0 4 20 19 9 28
		f 4 -6 8 23 -2
		mu 0 4 10 11 12 1
		f 4 18 11 2 0
		mu 0 4 5 6 7 0
		f 6 7 15 14 17 16 -4
		mu 0 6 2 25 3 4 14 17
		f 4 19 -8 4 -12
		mu 0 4 22 25 2 8
		f 4 24 -14 22 -15
		mu 0 4 13 20 28 31
		f 4 25 -9 -7 -17
		mu 0 4 14 15 16 17
		f 4 -11 -21 26 -19
		mu 0 4 18 19 20 21
		f 4 -27 -25 -16 -20
		mu 0 4 22 23 24 25
		f 4 -13 -24 27 -22
		mu 0 4 9 26 27 28
		f 4 -28 -26 -18 -23
		mu 0 4 28 29 30 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.62499994 0.23582576
		 0.40122354 0.5101456 0.59877628 0.5101456 0.37499997 0.23582575 0.14771937 0.23094021
		 0.61205202 0.25 0.85228062 0.23094022 0.40346953 0.5 0.61485434 0.52622372 0.625
		 0.51887667 0.375 0.25352845 0.38794786 0.25 0.39166296 0.47746867 0.375 0.4774687
		 0.375 0.51864862 0.37820929 0.50320923 0.3851456 0.5101456 0.3851456 0.52622354 0.62499994
		 0.25390705 0.625 0.47746867 0.60833693 0.47746867 0.62123346 0.48613837 0.61521125
		 0.5 0.59927535 0.5 0.375 0.15917645 0.62499994 0.15917645 0.3851456 0.54513621 0.85197741
		 0.20020166 0.625 0.54931998 0.14802261 0.20020165 0.37500003 0.54872489 0.61485434
		 0.54513633;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -0.62087506 0.66723084 0.50000018 -0.5565629 0.73154306 0.50000018
		 -0.51098472 0.44377923 -0.40912277 -0.44278955 0.52086806 -0.4098748 0.55656314 0.73154306 0.50000018
		 0.62087536 0.66723084 0.50000018 0.44278979 0.52086806 -0.4098748 0.51098478 0.44377923 -0.40912277
		 -0.39510584 0.45941734 -0.50000018 -0.4594177 0.39510512 -0.50000018 0.45941758 0.39510512 -0.50000018
		 0.3951056 0.45941734 -0.50000018 -0.62087506 0.32193774 0.50000018 0.62087536 0.32193774 0.50000018
		 -0.4594177 0.32193774 -0.50000018 0.51113141 0.32193774 -0.40790984 -0.51113135 0.32193774 -0.40790984
		 0.45941758 0.3219375 -0.50000012;
	setAttr -s 28 ".ed[0:27]"  1 4 0 1 0 0 2 16 0 5 4 0 6 3 1 8 11 1 9 8 1
		 10 17 0 11 10 1 0 2 0 2 9 1 3 1 0 4 6 0 6 11 1 7 5 0 8 3 1 10 7 1 3 2 0 7 6 0 12 0 0
		 13 5 0 14 9 0 15 7 0 15 13 0 16 12 0 14 17 0 14 16 0 15 17 0;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 11 0 12 4
		mu 0 4 12 11 5 20
		f 4 9 2 24 19
		mu 0 4 3 4 29 24
		f 4 10 -22 26 -3
		mu 0 4 14 17 26 30
		f 4 15 -5 13 -6
		mu 0 4 7 12 20 23
		f 4 16 -23 27 -8
		mu 0 4 8 9 28 31
		f 4 -2 -12 17 -10
		mu 0 4 10 11 12 13
		f 4 -18 -16 -7 -11
		mu 0 4 14 15 16 17
		f 4 -4 -15 18 -13
		mu 0 4 5 18 19 20
		f 4 -19 -17 -9 -14
		mu 0 4 20 21 22 23
		f 4 -24 22 14 -21
		mu 0 4 25 27 6 0
		f 6 -26 21 6 5 8 7
		mu 0 6 31 26 17 1 2 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape10" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0.56682396 0.25 0.58120936
		 0.4774687 0.58297873 0.5101456 0.58361745 0.5 0.58297879 0.54513633 0.50214422 0.25
		 0.5026626 0.5101456 0.50401157 0.5 0.50266266 0.54513627 0.5026058 0.47746867 0.43951774
		 0.25 0.42489618 0.5101456 0.42693287 0.5 0.42489624 0.54513621 0.42649761 0.47746867;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.0074415803 0 0 -2.8014183e-006 
		0 0 -2.8014183e-006 0 0 -2.8014183e-006 0 0;
	setAttr -s 12 ".vt[0:11]"  0.33191511 0.73154306 0.50000024 0.33935389 0.5208683 -0.40987495
		 0.33935389 0.45941734 -0.50000024 0.33935389 0.32193744 -0.50000024 0.017606735 0.73154306 0.50000024
		 0.017606735 0.45941734 -0.50000024 0.017606735 0.32193768 -0.50000024 0.01760672 0.5208683 -0.40987495
		 -0.30414045 0.73154306 0.50000024 -0.30414045 0.45941734 -0.50000024 -0.30414045 0.32193768 -0.50000024
		 -0.30414045 0.52086806 -0.40987495;
	setAttr -s 17 ".ed[0:16]"  1 7 1 0 1 1 1 2 1 3 2 1 4 0 0 5 2 1 6 3 0
		 7 11 1 4 7 1 7 5 1 6 5 1 8 4 0 9 5 1 10 6 0 8 11 1 11 9 1 10 9 1;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -4 -7 10 5
		mu 0 4 2 4 8 6
		f 4 -9 4 1 0
		mu 0 4 9 5 0 1
		f 4 -10 -1 2 -6
		mu 0 4 7 9 1 3
		f 4 -11 -14 16 12
		mu 0 4 6 8 13 11
		f 4 -15 11 8 7
		mu 0 4 14 10 5 9
		f 4 -16 -8 9 -13
		mu 0 4 12 14 9 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9";
	setAttr ".t" -type "double3" -7 5 0 ;
	setAttr ".s" -type "double3" 1.9670402193005689 1 1 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode blinn -n "blinn1";
	setAttr ".dc" 0;
	setAttr ".ambc" -type "float3" 1 1 1 ;
	setAttr ".ec" 0;
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode blinn -n "blinn2";
	setAttr ".dc" 0;
	setAttr ".ambc" -type "float3" 1 1 1 ;
	setAttr ".ec" 0;
createNode blinn -n "blinn3";
	setAttr ".dc" 0;
	setAttr ".ambc" -type "float3" 1 1 1 ;
	setAttr ".ec" 0;
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/Ashes/Documents/GJ-04-15/Assets/_Project/Textures/grasstops.png";
createNode place2dTexture -n "place2dTexture1";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "C:/Users/Ashes/Documents/GJ-04-15/Assets/_Project/Textures/grasstransition.png";
createNode place2dTexture -n "place2dTexture2";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "C:/Users/Ashes/Documents/GJ-04-15/Assets/_Project/Textures/tilescopy.png";
createNode place2dTexture -n "place2dTexture3";
createNode blinn -n "blinn4";
	setAttr ".dc" 0;
	setAttr ".ambc" -type "float3" 1 1 1 ;
	setAttr ".ec" 0;
createNode blinn -n "blinn5";
	setAttr ".dc" 0;
	setAttr ".ambc" -type "float3" 1 1 1 ;
	setAttr ".ec" 0;
createNode file -n "file4";
	setAttr ".ftn" -type "string" "C:/Users/Ashes/Documents/GJ-04-15/Assets/_Project/Textures/singlecolumn.png";
createNode place2dTexture -n "place2dTexture4";
createNode file -n "file5";
	setAttr ".ftn" -type "string" "C:/Users/Ashes/Documents/GJ-04-15/Assets/_Project/Textures/singlerow.png";
createNode place2dTexture -n "place2dTexture5";
createNode file -n "file6";
createNode place2dTexture -n "place2dTexture6";
createNode shadingEngine -n "blinn2SG";
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode shadingEngine -n "blinn3SG";
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode shadingEngine -n "blinn4SG";
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode shadingEngine -n "blinn5SG";
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode polyPlane -n "polyPlane1";
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".cuv" 2;
createNode blinn -n "blinn6";
	setAttr ".dc" 0;
	setAttr ".ambc" -type "float3" 1 1 1 ;
	setAttr ".ec" 0;
createNode file -n "file7";
	setAttr ".ftn" -type "string" "C:/Users/Ashes/Documents/GJ-04-15/Assets/_Project/Textures/platform.png";
createNode place2dTexture -n "place2dTexture7";
createNode shadingEngine -n "blinn6SG";
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 7 10 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7 10 12 ;
	setAttr ".ps" -type "double2" 6 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 0 10 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 10 12 ;
	setAttr ".ps" -type "double2" 6 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 -7 10 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7 10 12 ;
	setAttr ".ps" -type "double2" 6 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 7 3 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7 3 12 ;
	setAttr ".ps" -type "double2" 6 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 0 3 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 3 12 ;
	setAttr ".ps" -type "double2" 6 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 -7 3 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7 3 12 ;
	setAttr ".ps" -type "double2" 6 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
createNode polyBevel -n "polyBevel1";
	setAttr ".ics" -type "componentList" 2 "e[2]" "e[8:9]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 1.8074076839304458 0
		 -7.0055114069928672 9.4485420136201714 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 0.099999999999999978;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[0:5]" -type "float3"  -0.12087522 0.097232662 0
		 0.12087521 0.097232662 0 -0.12087522 0.23154296 0 0.12087521 0.23154296 0 0 0 0 0
		 0 0;
createNode polyBevel -n "polyBevel2";
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[17:18]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 1.8074076839304458 0
		 -7.0055114069928672 9.4485420136201714 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 0.14;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 2 "f[0]" "f[4]";
createNode polyCut -n "polyCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 7 9.4485420136201714 0 1;
	setAttr ".pc" -type "double3" 4.0681726058337233 10.98803325026951 0 ;
	setAttr ".ro" -type "double3" 90 0 180 ;
	setAttr ".ps" -type "double2" 5.9841508865356445 5.9349613189697266 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[18:23]" -type "float3"  0 0.0024830699 0 0 0.0024830699
		 0 0 0.0024830699 0 0 0.0024830699 0 0 0.0024830699 0 0 0.0024830699 0;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 4 "f[1]" "f[3]" "f[12]" "f[14:15]";
createNode polyCut -n "polyCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 5 5.4489999999999998 0 1;
	setAttr ".pc" -type "double3" 4.9794590474569667 6.830880371371677 0 ;
	setAttr ".ro" -type "double3" 90 0 180 ;
	setAttr ".ps" -type "double2" 1.9759311676025391 5.9349610805511475 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[18:23]" -type "float3"  0 0.035093337 0 0 0.035093337
		 0 0 0.035093337 0 0 0.035093337 0 0 0.035093337 0 0 0.035093337 0;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 4 "f[1]" "f[3]" "f[12]" "f[14:15]";
createNode polyCut -n "polyCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 6.2160608348842938 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 -1.1094445224535303 7.4489999999999998 0 1;
	setAttr ".pc" -type "double3" 0.95376035169701379 8.9863725864242507 0 ;
	setAttr ".ro" -type "double3" 90 0 90 ;
	setAttr ".ps" -type "double2" 7.7187957763671875 1.9739408493041992 ;
createNode polyCut -n "polyCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:13]";
	setAttr ".ix" -type "matrix" 6.2160608348842938 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 -1.1094445224535303 7.4489999999999998 0 1;
	setAttr ".pc" -type "double3" -1.0432397887193405 9.1131662461332255 0 ;
	setAttr ".ro" -type "double3" 90 0 90 ;
	setAttr ".ps" -type "double2" 7.7187957763671875 1.9739408493041992 ;
createNode polyCut -n "polyCut5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:16]";
	setAttr ".ix" -type "matrix" 6.2160608348842938 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 -1.1094445224535303 7.4489999999999998 0 1;
	setAttr ".pc" -type "double3" -2.9768430992812074 8.9546741714970075 0 ;
	setAttr ".ro" -type "double3" 90 0 90 ;
	setAttr ".ps" -type "double2" 7.7187957763671875 1.9739408493041992 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk[19:29]" -type "float3"  0.0074387789 0 0 0.0074387789
		 0 0 0.0074387789 0 0 0.0069561601 0 0 0.0069561601 0 0 0.0069561601 0 0 0.0069561601
		 0 0 -0.0037252903 0 0 -0.0037252903 0 0 -0.0037252903 0 0 -0.0037252903 0 0;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 3 "f[0:3]" "f[5:6]" "f[19]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 2 "f[0:2]" "f[5]";
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "f[0:2]";
createNode polyCube -n "polyCube2";
	setAttr ".cuv" 4;
createNode polyPlanarProj -n "polyPlanarProj7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 7 10 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7.0000004768371582 10 5.8327986896038055 ;
	setAttr ".ps" -type "double2" 5.9999990463256836 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 7 9.4485420136201714 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7.0000007152557373 10 5.8327982127666473 ;
	setAttr ".ps" -type "double2" 5.9999985694885254 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 7 7.4489999999999998 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7.0000007152557373 10 5.8327982127666473 ;
	setAttr ".ps" -type "double2" 5.9999985694885254 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 5 5.4489999999999998 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7.0000007152557373 10 5.8327982127666473 ;
	setAttr ".ps" -type "double2" 5.9999985694885254 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 0 10 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 9.9999985694885254 5.8327981978654861 ;
	setAttr ".ps" -type "double2" 6 5.9999990463256836 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 6.2160608348842938 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 -1.1094445224535303 7.4489999999999998 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 9.999997615814209 5.8327977210283279 ;
	setAttr ".ps" -type "double2" 6 5.9999990463256836 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[0:3]" -type "float3"  0.0074415803 0 0 -2.8014183e-006
		 0 0 -2.8014183e-006 0 0 -2.8014183e-006 0 0;
createNode polyPlanarProj -n "polyPlanarProj13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 6.2160608348842938 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 -1.1094445224535303 9.4489999999999998 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 9.999997615814209 5.8327977210283279 ;
	setAttr ".ps" -type "double2" 6 5.9999990463256836 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0:4]" "f[6:7]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 -7 10 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7.0000004768371582 10 5.8327987045049667 ;
	setAttr ".ps" -type "double2" 5.9999990463256836 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 -7.0055114069928672 9.4485420136201714 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7.0000007152557373 10 5.8327982276678085 ;
	setAttr ".ps" -type "double2" 5.9999985694885254 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 -7 10 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7.0000007152557373 10 5.8327982276678085 ;
	setAttr ".ps" -type "double2" 5.9999985694885254 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 -7.0055114069928672 9.4485420136201714 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7.0000009536743164 10 5.8327982276678085 ;
	setAttr ".ps" -type "double2" 5.9999980926513672 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 7 3 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7.0000004768371582 2.9999997615814209 5.8327987045049667 ;
	setAttr ".ps" -type "double2" 5.9999990463256836 6.0000004768371582 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 5 2.4489999999999998 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7.0000007152557373 2.9999992847442627 5.8327982276678085 ;
	setAttr ".ps" -type "double2" 5.9999985694885254 6.0000004768371582 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 0 2.4489999999999998 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 3 5.8327991664409637 ;
	setAttr ".ps" -type "double2" 6 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 0 3 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 3 5.8327991664409637 ;
	setAttr ".ps" -type "double2" 6 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 -7 3 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7.0000004768371582 2.9999997615814209 5.7499995231628418 ;
	setAttr ".ps" -type "double2" 5.9999990463256836 6.0000004768371582 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1.9670402193005689 0 0 0 0 1 0 0 0 0 1 0 -7 5 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7.0000007152557373 2.9999992847442627 5.7499990463256836 ;
	setAttr ".ps" -type "double2" 5.9999985694885254 6.0000004768371582 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[4:7]" -type "float3"  0 -0.73366141 0 0 -0.73366141
		 0 0 -0.15259218 0 0 -0.15259218 0;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"back1\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"back1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
		+ "            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n"
		+ "\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 50 -ps 2 50 50 -ps 3 50 50 -ps 4 50 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"back1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"back1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyCut -n "polyCut6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 7 9.4485420136201714 0 1;
	setAttr ".pc" -type "double3" 7.9320980543246122 12.00725756464966 -1.8189894035458565e-012 ;
	setAttr ".ro" -type "double3" 90.000000000000014 0 -90 ;
	setAttr ".ps" -type "double2" 5.9841518402099609 1.9739398956298828 ;
createNode polyCut -n "polyCut7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:13]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 7 9.4485420136201714 0 1;
	setAttr ".pc" -type "double3" 6.063258445718823 12.045790340084832 -9.0949470177292824e-013 ;
	setAttr ".ro" -type "double3" 90.000000000000014 0 -90 ;
	setAttr ".ps" -type "double2" 5.9841518402099609 1.9739398956298828 ;
createNode polyCut -n "polyCut8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 7 7.4489999999999998 0 1;
	setAttr ".pc" -type "double3" 8.0091636051949546 9.0209674684239101 -2.7284841053187847e-012 ;
	setAttr ".ro" -type "double3" 90 0 90 ;
	setAttr ".ps" -type "double2" 5.9841518402099609 1.9739408493041992 ;
createNode polyCut -n "polyCut9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:13]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 7 7.4489999999999998 0 1;
	setAttr ".pc" -type "double3" 6.043992058001237 9.0595002438590821 -1.8189894035458565e-012 ;
	setAttr ".ro" -type "double3" 90 0 90 ;
	setAttr ".ps" -type "double2" 5.9841527938842773 1.9739408493041992 ;
createNode polyCut -n "polyCut10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 5 2.4489999999999998 0 1;
	setAttr ".pc" -type "double3" 5.5815987527791862 3.9924402741341054 0 ;
	setAttr ".ro" -type "double3" 90 0 180 ;
	setAttr ".ps" -type "double2" 1.9759316444396973 5.9349606037139893 ;
createNode polyCut -n "polyCut11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:15]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 5 2.4489999999999998 0 1;
	setAttr ".pc" -type "double3" 5.196270998427476 1.9502031760700449 0 ;
	setAttr ".ro" -type "double3" 90 0 180 ;
	setAttr ".ps" -type "double2" 1.9759321212768555 5.9349606037139893 ;
createNode polyCut -n "polyCut12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 0 2.4489999999999998 0 1;
	setAttr ".pc" -type "double3" 0.99619847599384315 3.973173886416518 0 ;
	setAttr ".ro" -type "double3" 90 8.1961249419000543e-011 90 ;
	setAttr ".ps" -type "double2" 5.9841513633728027 1.973940372467041 ;
createNode polyCut -n "polyCut13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:13]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 0 2.4489999999999998 0 1;
	setAttr ".pc" -type "double3" -1.0267722343526313 4.0117066618516892 0 ;
	setAttr ".ro" -type "double3" 90 6.5968810507976025e-011 90 ;
	setAttr ".ps" -type "double2" 5.9841513633728027 1.9739398956298828 ;
createNode polyCut -n "polyCut14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 -7.0055114069928672 9.4485420136201714 0 1;
	setAttr ".pc" -type "double3" -4.7451850638466277 11.005405403335214 0 ;
	setAttr ".ro" -type "double3" 90 9.6597186815250534e-011 180 ;
	setAttr ".ps" -type "double2" 5.9841508865356445 5.9349613189697266 ;
createNode polyCut -n "polyCut15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:15]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 -7.0055114069928672 9.4485420136201714 0 1;
	setAttr ".pc" -type "double3" -4.8029842269993841 8.9439019175535677 -9.0949470177292824e-013 ;
	setAttr ".ro" -type "double3" 90 0 180 ;
	setAttr ".ps" -type "double2" 5.9841513633728027 5.9349613189697266 ;
createNode polyCut -n "polyCut16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:20]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 -7.0055114069928672 9.4485420136201714 0 1;
	setAttr ".pc" -type "double3" -5.958967490054512 7.113595084382947 -9.0949470177292824e-013 ;
	setAttr ".ro" -type "double3" 90 0 90 ;
	setAttr ".ps" -type "double2" 5.9841508865356445 5.9349613189697266 ;
createNode polyCut -n "polyCut17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 -7.0055114069928672 9.4485420136201714 0 1;
	setAttr ".pc" -type "double3" -8.0782701389889127 8.9053691421183956 -4.5474735088646412e-012 ;
	setAttr ".ro" -type "double3" 90 0 90 ;
	setAttr ".ps" -type "double2" 5.9841508865356445 5.9349613189697266 ;
createNode polyPlanarProj -n "polyPlanarProj24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 -0 0 -0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 7 10 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7.0000007152557373 9.9999997615814209 5.8327981978654861 ;
	setAttr ".ps" -type "double2" 5.9999985694885254 6.0000004768371582 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:16]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 7 9.4485420136201714 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7.0000009536743164 9.9999997615814209 5.8327981978654861 ;
	setAttr ".ps" -type "double2" 5.9999980926513672 6.0000004768371582 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[18:25]" -type "float3"  0.014090151 0 0 0.014090151
		 0 0 0.014090151 0 0 0.014090151 0 0 -0.013126597 0 0 -0.013126597 0 0 -0.013126597
		 0 0 -0.013126597 0 0;
createNode polyPlanarProj -n "polyPlanarProj26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:16]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 7 7.4489999999999998 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7.0000009536743164 9.9999997615814209 5.8327981978654861 ;
	setAttr ".ps" -type "double2" 5.9999980926513672 6.0000004768371582 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[18:25]" -type "float3"  -0.0019015372 0 0 -0.0019015372
		 0 0 -0.0019015372 0 0 -0.0019015372 0 0 -0.0091286749 0 0 -0.0091286749 0 0 -0.0091286749
		 0 0 -0.0091286749 0 0;
createNode polyPlanarProj -n "polyPlanarProj27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 5 5.4489999999999998 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7.0000009536743164 9.9999997615814209 5.8327981978654861 ;
	setAttr ".ps" -type "double2" 5.9999980926513672 6.0000004768371582 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 -0 0 -0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 7 3 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7.0000007152557373 2.9999992847442627 5.8327981978654861 ;
	setAttr ".ps" -type "double2" 5.9999985694885254 6.0000004768371582 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:20]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 5 2.4489999999999998 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7.0000009536743164 2.9999988079071045 5.8327981978654861 ;
	setAttr ".ps" -type "double2" 5.9999980926513672 6.0000004768371582 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[18:29]" -type "float3"  0 0.0015686899 0 0 0.0015686899
		 0 0 0.0015686899 0 0 0.0015686899 0 0 0.0015686899 0 0 0.0015686899 0 0 0.010333166
		 0 0 0.010333166 0 0 0.010333166 0 0 0.010333166 0 0 0.010333166 0 0 0.010333166 0;
createNode polyPlanarProj -n "polyPlanarProj30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 -0 0 -0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 0 3 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 3 5.8327991515398026 ;
	setAttr ".ps" -type "double2" 6 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:16]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 0 2.4489999999999998 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 3 5.8327991515398026 ;
	setAttr ".ps" -type "double2" 6 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[18:25]" -type "float3"  0.00078883767 0 0 0.00078883767
		 0 0 0.00078883767 0 0 0.00078883767 0 0 0.0055554211 0 0 0.0055554211 0 0 0.0055554211
		 0 0 0.0055554211 0 0;
createNode polyPlanarProj -n "polyPlanarProj32";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 -0 0 -0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 0 10 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 9.999997615814209 5.8327977210283279 ;
	setAttr ".ps" -type "double2" 6 5.9999990463256836 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj33";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 6.2160608348842938 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 -1.1094445224535303 7.4489999999999998 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 9.9999966621398926 5.8327972441911697 ;
	setAttr ".ps" -type "double2" 6 5.9999990463256836 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 6.2160608348842938 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 -1.1094445224535303 9.4489999999999998 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 9.9999966621398926 5.8327972441911697 ;
	setAttr ".ps" -type "double2" 6 5.9999990463256836 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 -0 0 -0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 -7 10 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7.0000009536743164 10 5.8327981978654861 ;
	setAttr ".ps" -type "double2" 5.9999980926513672 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj36";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:30]";
	setAttr ".ix" -type "matrix" 4.8191257729057861 0 0 0 0 4.8191257729057861 0 0 0 0 0.66880306862091277 0
		 -7.0055114069928672 9.4485420136201714 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7.0000009536743164 10 5.8327981978654861 ;
	setAttr ".ps" -type "double2" 5.9999980926513672 6 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk";
	setAttr ".tk[24]" -type "float3" 0 0.011640549 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.011640549 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.011640549 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.011640549 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.011640549 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.011640549 0 ;
	setAttr ".tk[30]" -type "float3" -0.0085142404 0 0 ;
	setAttr ".tk[31]" -type "float3" -0.0085142404 0 0 ;
	setAttr ".tk[32]" -type "float3" -0.0085142404 0 0 ;
	setAttr ".tk[33]" -type "float3" -0.0085142404 0 0 ;
	setAttr ".tk[34]" -type "float3" -0.0085142404 0 0 ;
	setAttr ".tk[35]" -type "float3" -0.0085142404 0.011640549 0 ;
	setAttr ".tk[36]" -type "float3" 0.01624164 0 0 ;
	setAttr ".tk[37]" -type "float3" 0.01624164 0 0 ;
	setAttr ".tk[38]" -type "float3" 0.01624164 0 0 ;
	setAttr ".tk[39]" -type "float3" 0.01624164 0 0 ;
	setAttr ".tk[40]" -type "float3" 0.01624164 0.011640549 0 ;
	setAttr ".tk[41]" -type "float3" 0.01624164 0 0 ;
createNode polyPlanarProj -n "polyPlanarProj37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 6 0 -0 0 -0 -2.6645352591003757e-015 -6 0 0 6 -2.6645352591003757e-015 0
		 -7 3 12 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7.0000007152557373 2.9999992847442627 5.7499990463256836 ;
	setAttr ".ps" -type "double2" 5.9999985694885254 6.0000004768371582 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj38";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1.9670402193005689 0 0 0 0 1 0 0 0 0 1 0 -7 5 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7.0000009536743164 2.9999988079071045 5.7499990463256836 ;
	setAttr ".ps" -type "double2" 5.9999980926513672 6.0000004768371582 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 8 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :defaultTextureList1;
	setAttr -s 7 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 7 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polyPlanarProj30.out" "pPlaneShape1.i";
connectAttr "polyPlanarProj28.out" "pPlaneShape2.i";
connectAttr "polyPlanarProj37.out" "pPlaneShape3.i";
connectAttr "polyPlanarProj32.out" "pPlaneShape4.i";
connectAttr "polyPlanarProj24.out" "pPlaneShape5.i";
connectAttr "polyPlanarProj35.out" "pPlaneShape6.i";
connectAttr "polyPlanarProj36.out" "pCubeShape1.i";
connectAttr "polyPlanarProj25.out" "pCubeShape2.i";
connectAttr "polyPlanarProj26.out" "pCubeShape3.i";
connectAttr "polyPlanarProj29.out" "pCubeShape4.i";
connectAttr "polyPlanarProj27.out" "pCubeShape5.i";
connectAttr "polyPlanarProj31.out" "pCubeShape6.i";
connectAttr "polyPlanarProj33.out" "pCubeShape7.i";
connectAttr "polyPlanarProj34.out" "pCubeShape8.i";
connectAttr "polyPlanarProj38.out" "pCubeShape9.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn6SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "blinn1.c";
connectAttr "file1.ot" "blinn1.it";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "pPlaneShape5.iog" "blinn1SG.dsm" -na;
connectAttr "pCubeShape5.iog" "blinn1SG.dsm" -na;
connectAttr "pCubeShape3.iog" "blinn1SG.dsm" -na;
connectAttr "pCubeShape2.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blinn1.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "file2.oc" "blinn2.c";
connectAttr "file2.ot" "blinn2.it";
connectAttr "file3.oc" "blinn3.c";
connectAttr "file3.ot" "blinn3.it";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "file4.oc" "blinn4.c";
connectAttr "file4.ot" "blinn4.it";
connectAttr "file5.oc" "blinn5.c";
connectAttr "file5.ot" "blinn5.it";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr "place2dTexture5.c" "file5.c";
connectAttr "place2dTexture5.tf" "file5.tf";
connectAttr "place2dTexture5.rf" "file5.rf";
connectAttr "place2dTexture5.mu" "file5.mu";
connectAttr "place2dTexture5.mv" "file5.mv";
connectAttr "place2dTexture5.s" "file5.s";
connectAttr "place2dTexture5.wu" "file5.wu";
connectAttr "place2dTexture5.wv" "file5.wv";
connectAttr "place2dTexture5.re" "file5.re";
connectAttr "place2dTexture5.of" "file5.of";
connectAttr "place2dTexture5.r" "file5.ro";
connectAttr "place2dTexture5.n" "file5.n";
connectAttr "place2dTexture5.vt1" "file5.vt1";
connectAttr "place2dTexture5.vt2" "file5.vt2";
connectAttr "place2dTexture5.vt3" "file5.vt3";
connectAttr "place2dTexture5.vc1" "file5.vc1";
connectAttr "place2dTexture5.o" "file5.uv";
connectAttr "place2dTexture5.ofs" "file5.fs";
connectAttr "place2dTexture6.c" "file6.c";
connectAttr "place2dTexture6.tf" "file6.tf";
connectAttr "place2dTexture6.rf" "file6.rf";
connectAttr "place2dTexture6.mu" "file6.mu";
connectAttr "place2dTexture6.mv" "file6.mv";
connectAttr "place2dTexture6.s" "file6.s";
connectAttr "place2dTexture6.wu" "file6.wu";
connectAttr "place2dTexture6.wv" "file6.wv";
connectAttr "place2dTexture6.re" "file6.re";
connectAttr "place2dTexture6.of" "file6.of";
connectAttr "place2dTexture6.r" "file6.ro";
connectAttr "place2dTexture6.n" "file6.n";
connectAttr "place2dTexture6.vt1" "file6.vt1";
connectAttr "place2dTexture6.vt2" "file6.vt2";
connectAttr "place2dTexture6.vt3" "file6.vt3";
connectAttr "place2dTexture6.vc1" "file6.vc1";
connectAttr "place2dTexture6.o" "file6.uv";
connectAttr "place2dTexture6.ofs" "file6.fs";
connectAttr "blinn2.oc" "blinn2SG.ss";
connectAttr "pPlaneShape4.iog" "blinn2SG.dsm" -na;
connectAttr "pCubeShape8.iog" "blinn2SG.dsm" -na;
connectAttr "pCubeShape7.iog" "blinn2SG.dsm" -na;
connectAttr "blinn2SG.msg" "materialInfo2.sg";
connectAttr "blinn2.msg" "materialInfo2.m";
connectAttr "file2.msg" "materialInfo2.t" -na;
connectAttr "blinn3.oc" "blinn3SG.ss";
connectAttr "pPlaneShape6.iog" "blinn3SG.dsm" -na;
connectAttr "pCubeShape1.iog" "blinn3SG.dsm" -na;
connectAttr "blinn3SG.msg" "materialInfo3.sg";
connectAttr "blinn3.msg" "materialInfo3.m";
connectAttr "file3.msg" "materialInfo3.t" -na;
connectAttr "blinn4.oc" "blinn4SG.ss";
connectAttr "pPlaneShape2.iog" "blinn4SG.dsm" -na;
connectAttr "pCubeShape4.iog" "blinn4SG.dsm" -na;
connectAttr "blinn4SG.msg" "materialInfo4.sg";
connectAttr "blinn4.msg" "materialInfo4.m";
connectAttr "file4.msg" "materialInfo4.t" -na;
connectAttr "blinn5.oc" "blinn5SG.ss";
connectAttr "pPlaneShape1.iog" "blinn5SG.dsm" -na;
connectAttr "pCubeShape6.iog" "blinn5SG.dsm" -na;
connectAttr "blinn5SG.msg" "materialInfo5.sg";
connectAttr "blinn5.msg" "materialInfo5.m";
connectAttr "file5.msg" "materialInfo5.t" -na;
connectAttr "file7.oc" "blinn6.c";
connectAttr "file7.ot" "blinn6.it";
connectAttr "place2dTexture7.c" "file7.c";
connectAttr "place2dTexture7.tf" "file7.tf";
connectAttr "place2dTexture7.rf" "file7.rf";
connectAttr "place2dTexture7.mu" "file7.mu";
connectAttr "place2dTexture7.mv" "file7.mv";
connectAttr "place2dTexture7.s" "file7.s";
connectAttr "place2dTexture7.wu" "file7.wu";
connectAttr "place2dTexture7.wv" "file7.wv";
connectAttr "place2dTexture7.re" "file7.re";
connectAttr "place2dTexture7.of" "file7.of";
connectAttr "place2dTexture7.r" "file7.ro";
connectAttr "place2dTexture7.n" "file7.n";
connectAttr "place2dTexture7.vt1" "file7.vt1";
connectAttr "place2dTexture7.vt2" "file7.vt2";
connectAttr "place2dTexture7.vt3" "file7.vt3";
connectAttr "place2dTexture7.vc1" "file7.vc1";
connectAttr "place2dTexture7.o" "file7.uv";
connectAttr "place2dTexture7.ofs" "file7.fs";
connectAttr "blinn6.oc" "blinn6SG.ss";
connectAttr "pPlaneShape3.iog" "blinn6SG.dsm" -na;
connectAttr "pCubeShape9.iog" "blinn6SG.dsm" -na;
connectAttr "blinn6SG.msg" "materialInfo6.sg";
connectAttr "blinn6.msg" "materialInfo6.m";
connectAttr "file7.msg" "materialInfo6.t" -na;
connectAttr "polySurfaceShape1.o" "polyPlanarProj1.ip";
connectAttr "pPlaneShape5.wm" "polyPlanarProj1.mp";
connectAttr "polySurfaceShape2.o" "polyPlanarProj2.ip";
connectAttr "pPlaneShape4.wm" "polyPlanarProj2.mp";
connectAttr "polySurfaceShape3.o" "polyPlanarProj3.ip";
connectAttr "pPlaneShape6.wm" "polyPlanarProj3.mp";
connectAttr "polySurfaceShape4.o" "polyPlanarProj4.ip";
connectAttr "pPlaneShape2.wm" "polyPlanarProj4.mp";
connectAttr "polyPlane1.out" "polyPlanarProj5.ip";
connectAttr "pPlaneShape1.wm" "polyPlanarProj5.mp";
connectAttr "polySurfaceShape5.o" "polyPlanarProj6.ip";
connectAttr "pPlaneShape3.wm" "polyPlanarProj6.mp";
connectAttr "polyTweak1.out" "polyBevel1.ip";
connectAttr "pCubeShape1.wm" "polyBevel1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyBevel1.out" "polyBevel2.ip";
connectAttr "pCubeShape1.wm" "polyBevel2.mp";
connectAttr "polyBevel2.out" "deleteComponent1.ig";
connectAttr "|pCube2|polySurfaceShape6.o" "polyCut1.ip";
connectAttr "pCubeShape2.wm" "polyCut1.mp";
connectAttr "polyCut1.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "deleteComponent2.ig";
connectAttr "polySurfaceShape7.o" "polyCut2.ip";
connectAttr "pCubeShape5.wm" "polyCut2.mp";
connectAttr "polyCut2.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent3.ig";
connectAttr "|pCube7|polySurfaceShape8.o" "polyCut3.ip";
connectAttr "pCubeShape7.wm" "polyCut3.mp";
connectAttr "polyCut3.out" "polyCut4.ip";
connectAttr "pCubeShape7.wm" "polyCut4.mp";
connectAttr "polyCut4.out" "polyCut5.ip";
connectAttr "pCubeShape7.wm" "polyCut5.mp";
connectAttr "polyCut5.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "polyPlanarProj1.out" "polyPlanarProj7.ip";
connectAttr "pPlaneShape5.wm" "polyPlanarProj7.mp";
connectAttr "deleteComponent2.og" "polyPlanarProj8.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj8.mp";
connectAttr "polySurfaceShape9.o" "polyPlanarProj9.ip";
connectAttr "pCubeShape3.wm" "polyPlanarProj9.mp";
connectAttr "deleteComponent3.og" "polyPlanarProj10.ip";
connectAttr "pCubeShape5.wm" "polyPlanarProj10.mp";
connectAttr "polyPlanarProj2.out" "polyPlanarProj11.ip";
connectAttr "pPlaneShape4.wm" "polyPlanarProj11.mp";
connectAttr "polyTweak5.out" "polyPlanarProj12.ip";
connectAttr "pCubeShape7.wm" "polyPlanarProj12.mp";
connectAttr "deleteComponent6.og" "polyTweak5.ip";
connectAttr "polySurfaceShape10.o" "polyPlanarProj13.ip";
connectAttr "pCubeShape8.wm" "polyPlanarProj13.mp";
connectAttr "polyPlanarProj3.out" "polyPlanarProj14.ip";
connectAttr "pPlaneShape6.wm" "polyPlanarProj14.mp";
connectAttr "deleteComponent1.og" "polyPlanarProj15.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj15.mp";
connectAttr "polyPlanarProj14.out" "polyPlanarProj16.ip";
connectAttr "pPlaneShape6.wm" "polyPlanarProj16.mp";
connectAttr "polyPlanarProj15.out" "polyPlanarProj17.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj17.mp";
connectAttr "polyPlanarProj4.out" "polyPlanarProj18.ip";
connectAttr "pPlaneShape2.wm" "polyPlanarProj18.mp";
connectAttr "polySurfaceShape11.o" "polyPlanarProj19.ip";
connectAttr "pCubeShape4.wm" "polyPlanarProj19.mp";
connectAttr "polySurfaceShape12.o" "polyPlanarProj20.ip";
connectAttr "pCubeShape6.wm" "polyPlanarProj20.mp";
connectAttr "polyPlanarProj5.out" "polyPlanarProj21.ip";
connectAttr "pPlaneShape1.wm" "polyPlanarProj21.mp";
connectAttr "polyPlanarProj6.out" "polyPlanarProj22.ip";
connectAttr "pPlaneShape3.wm" "polyPlanarProj22.mp";
connectAttr "polyTweak6.out" "polyPlanarProj23.ip";
connectAttr "pCubeShape9.wm" "polyPlanarProj23.mp";
connectAttr "polyCube2.out" "polyTweak6.ip";
connectAttr "polyPlanarProj8.out" "polyCut6.ip";
connectAttr "pCubeShape2.wm" "polyCut6.mp";
connectAttr "polyCut6.out" "polyCut7.ip";
connectAttr "pCubeShape2.wm" "polyCut7.mp";
connectAttr "polyPlanarProj9.out" "polyCut8.ip";
connectAttr "pCubeShape3.wm" "polyCut8.mp";
connectAttr "polyCut8.out" "polyCut9.ip";
connectAttr "pCubeShape3.wm" "polyCut9.mp";
connectAttr "polyPlanarProj19.out" "polyCut10.ip";
connectAttr "pCubeShape4.wm" "polyCut10.mp";
connectAttr "polyCut10.out" "polyCut11.ip";
connectAttr "pCubeShape4.wm" "polyCut11.mp";
connectAttr "polyPlanarProj20.out" "polyCut12.ip";
connectAttr "pCubeShape6.wm" "polyCut12.mp";
connectAttr "polyCut12.out" "polyCut13.ip";
connectAttr "pCubeShape6.wm" "polyCut13.mp";
connectAttr "polyPlanarProj17.out" "polyCut14.ip";
connectAttr "pCubeShape1.wm" "polyCut14.mp";
connectAttr "polyCut14.out" "polyCut15.ip";
connectAttr "pCubeShape1.wm" "polyCut15.mp";
connectAttr "polyCut15.out" "polyCut16.ip";
connectAttr "pCubeShape1.wm" "polyCut16.mp";
connectAttr "polyCut16.out" "polyCut17.ip";
connectAttr "pCubeShape1.wm" "polyCut17.mp";
connectAttr "polyPlanarProj7.out" "polyPlanarProj24.ip";
connectAttr "pPlaneShape5.wm" "polyPlanarProj24.mp";
connectAttr "polyTweak7.out" "polyPlanarProj25.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj25.mp";
connectAttr "polyCut7.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyPlanarProj26.ip";
connectAttr "pCubeShape3.wm" "polyPlanarProj26.mp";
connectAttr "polyCut9.out" "polyTweak8.ip";
connectAttr "polyPlanarProj10.out" "polyPlanarProj27.ip";
connectAttr "pCubeShape5.wm" "polyPlanarProj27.mp";
connectAttr "polyPlanarProj18.out" "polyPlanarProj28.ip";
connectAttr "pPlaneShape2.wm" "polyPlanarProj28.mp";
connectAttr "polyTweak9.out" "polyPlanarProj29.ip";
connectAttr "pCubeShape4.wm" "polyPlanarProj29.mp";
connectAttr "polyCut11.out" "polyTweak9.ip";
connectAttr "polyPlanarProj21.out" "polyPlanarProj30.ip";
connectAttr "pPlaneShape1.wm" "polyPlanarProj30.mp";
connectAttr "polyTweak10.out" "polyPlanarProj31.ip";
connectAttr "pCubeShape6.wm" "polyPlanarProj31.mp";
connectAttr "polyCut13.out" "polyTweak10.ip";
connectAttr "polyPlanarProj11.out" "polyPlanarProj32.ip";
connectAttr "pPlaneShape4.wm" "polyPlanarProj32.mp";
connectAttr "polyPlanarProj12.out" "polyPlanarProj33.ip";
connectAttr "pCubeShape7.wm" "polyPlanarProj33.mp";
connectAttr "polyPlanarProj13.out" "polyPlanarProj34.ip";
connectAttr "pCubeShape8.wm" "polyPlanarProj34.mp";
connectAttr "polyPlanarProj16.out" "polyPlanarProj35.ip";
connectAttr "pPlaneShape6.wm" "polyPlanarProj35.mp";
connectAttr "polyTweak11.out" "polyPlanarProj36.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj36.mp";
connectAttr "polyCut17.out" "polyTweak11.ip";
connectAttr "polyPlanarProj22.out" "polyPlanarProj37.ip";
connectAttr "pPlaneShape3.wm" "polyPlanarProj37.mp";
connectAttr "polyPlanarProj23.out" "polyPlanarProj38.ip";
connectAttr "pCubeShape9.wm" "polyPlanarProj38.mp";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn4SG.pa" ":renderPartition.st" -na;
connectAttr "blinn5SG.pa" ":renderPartition.st" -na;
connectAttr "blinn6SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn3.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn4.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn5.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn6.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of SplaySplit.ma
