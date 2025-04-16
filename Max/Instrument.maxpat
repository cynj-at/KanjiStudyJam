{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 719.0, 211.0, 917.0, 710.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 381.0, 931.0, 75.0, 22.0 ],
					"text" : "Volume 0.75"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 283.0, 968.0, 65.0, 22.0 ],
					"text" : "Tuning 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 402.0, 82.0, 54.0, 22.0 ],
					"text" : "delay 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 831.0, 847.0, 39.0, 22.0 ],
					"text" : "0 400"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-9",
					"index" : 7,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1155.0, 40.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 896.0, 992.0, 67.0, 22.0 ],
					"text" : "delay 4500"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-2",
					"index" : 6,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1065.0, 40.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 1203.0, 61.0, 22.0 ],
					"text" : "144 59 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 1149.0, 42.0, 22.0 ],
					"text" : "thresh"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-96",
					"items" : [ "1n", ",", "2n", ",", "4n" ],
					"maxclass" : "chooser",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 908.0, 400.0, 77.0, 67.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 830.0, 433.0, 54.0, 22.0 ],
					"text" : "delay 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 446.0, 301.0, 129.0, 20.0 ],
					"text" : "4, 8, 12, 16 keine Note"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 870.0, 506.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 870.0, 607.0, 50.0, 22.0 ],
					"text" : "1n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 844.0, 363.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 426.0, 1323.0, 125.0, 22.0 ],
					"text" : "0.498333 0.499167"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 264.0, 1295.0, 69.0, 22.0 ],
					"text" : "1 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 532.0, 1239.0, 61.0, 22.0 ],
					"text" : "zl.group 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 671.0, 1112.0, 58.0, 22.0 ],
					"text" : "0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 680.0, 973.0, 40.0, 22.0 ],
					"text" : "line"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 403.0, 1064.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 134.0, 1444.0, 40.0, 22.0 ],
					"text" : "*~ 0.3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 403.0, 1029.0, 81.0, 22.0 ],
					"text" : "set Tuning $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-75",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 532.0, 1024.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 575.0, 1187.0, 58.0, 22.0 ],
					"text" : "0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 717.0, 1046.0, 150.0, 20.0 ],
					"text" : "-1200 1200 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 532.0, 1078.0, 134.0, 22.0 ],
					"text" : "scale -1200. 1200. 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.0, 1096.0, 101.0, 22.0 ],
					"text" : "Tuning 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 503.0, 1136.0, 159.0, 22.0 ],
					"text" : "midievent 144 59 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 326.0, 1007.0, 32.0, 22.0 ],
					"text" : "2 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 318.0, 100.0, 35.0, 22.0 ],
					"text" : "set 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 712.0, 587.0, 150.0, 47.0 ],
					"text" : "96, 92, 88. 78, 35, 34, 32, 17, 4, 103?, 106, 107, 123???, "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 455.0, 928.0, 101.0, 20.0 ],
					"text" : "program change"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 134.0, 1034.0, 108.0, 23.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 311.0, 884.0, 32.5, 23.0 ],
					"text" : "join"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 167.0, 764.0, 109.0, 23.0 ],
					"text" : "makenote 100 2n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 167.0, 674.0, 336.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 134.0, 1132.0, 300.0, 100.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, "C74_AU:/DLSMusicDevice", ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_modmode" : 0,
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "DLSMusicDevice.auinfo",
							"plugindisplayname" : "DLSMusicDevice",
							"pluginsavedname" : "C74_AU:/DLSMusicDevice",
							"pluginsaveduniqueid" : 1684631097,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"sliderorder" : [  ],
							"slidervisibility" : [ 1, 1, 1 ],
							"blob" : "916.hAGaoMGcv.S2AHv.DTfAGfPBJr.CM3vCPDADRLAEUXQFZrAViAWcsv1agQFUtEVakckckI2bo8laeAwD0MWYsjlazUlbtEFasHWY1Ulbh4EYoM2ZsLGcxUVXsklam4kbk4FYkIWKwUWXrkFc4QEc4AWYTQVXzEFWsEla0YVXiQWcxUlbeAwClkFak0hbkYVYxUlaiU1bWMWchQWdvUFUBElaqwUYrUVak4Fcs3VXsU1H...........VU4FcoQGakQFD..Q.P7mDgUWa08DDj...............C...............A.........f.BCO..HQXvAGaQeAFaMmXsXVZrUVKxUlYeAAUuLUdyQWYs8BSoIlbgIWduLzasA2atUlazM2KC8lbkETcjk1atL1asA2atUlaz8xPu4Fck4Fcy8hTkM2a0I2XkM2KmM2Wo41bzIWcsUlazMmKjw1bRPFayAxSQD.p.....D.p.H...vPSgMVZtQ2aygFHHQD...................f3ZUCoBQD.A7++++uDmM2Wo41bzIWcsUlazMmKjw1b............................................................+++++KtV0PJ..........7++++O..n.HiUG.................IHUYy8VcxMVYyA..B.PUunyT4MGck0lNLklXxElb4oyPu0Fbu4VYtQ2b5LzaxUVP0QVZu4xXu0Fbu4VYtQmNC8lazUlazMmNRU1buUmbiU1b5b1beklayQmb00VYtQ2btPFayA..N.fI.HA.mAvb.7E.oAfa.LG.zAfb.TG.sAPY.3F.zAvb.3B.jA.a.LG.O.fF.v..MAPX.LF.oAfa.PG.uAvb.fF.f..R.PD.R.vTSk2bzUVauvTZhIWXxk2KC8Vav8lak4Fcy8xPuIWYAUGYo8lKi8Vav8lak4FcuLzatQWYtQ2buHUYy8VcxMVYy8xYy8UZtMGcxUWak4Fcy4BYrMG..LA.A7B.++O..DMGcDkLR6wGfDRTvDULZMGckIWYuARaogmU04VcyUFY.f..i..K.DC.4.vS.3E.sAfb.bG.DBfk.3I.iB.r.jK.BC.w.XL.HCPy.PO.4C.+AfP.eE.YC.w.SLPECnw.bLfGCjB.......f.A.........fH..................v.v."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "DLSMusicDevice",
									"origin" : "DLSMusicDevice.auinfo",
									"type" : "AudioUnit",
									"subtype" : "Instrument",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "DLSMusicDevice.auinfo",
										"plugindisplayname" : "DLSMusicDevice",
										"pluginsavedname" : "C74_AU:/DLSMusicDevice",
										"pluginsaveduniqueid" : 1684631097,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"sliderorder" : [  ],
										"slidervisibility" : [ 1, 1, 1 ],
										"blob" : "916.hAGaoMGcv.S2AHv.DTfAGfPBJr.CM3vCPDADRLAEUXQFZrAViAWcsv1agQFUtEVakckckI2bo8laeAwD0MWYsjlazUlbtEFasHWY1Ulbh4EYoM2ZsLGcxUVXsklam4kbk4FYkIWKwUWXrkFc4QEc4AWYTQVXzEFWsEla0YVXiQWcxUlbeAwClkFak0hbkYVYxUlaiU1bWMWchQWdvUFUBElaqwUYrUVak4Fcs3VXsU1H...........VU4FcoQGakQFD..Q.P7mDgUWa08DDj...............C...............A.........f.BCO..HQXvAGaQeAFaMmXsXVZrUVKxUlYeAAUuLUdyQWYs8BSoIlbgIWduLzasA2atUlazM2KC8lbkETcjk1atL1asA2atUlaz8xPu4Fck4Fcy8hTkM2a0I2XkM2KmM2Wo41bzIWcsUlazMmKjw1bRPFayAxSQD.p.....D.p.H...vPSgMVZtQ2aygFHHQD...................f3ZUCoBQD.A7++++uDmM2Wo41bzIWcsUlazMmKjw1b............................................................+++++KtV0PJ..........7++++O..n.HiUG.................IHUYy8VcxMVYyA..B.PUunyT4MGck0lNLklXxElb4oyPu0Fbu4VYtQ2b5LzaxUVP0QVZu4xXu0Fbu4VYtQmNC8lazUlazMmNRU1buUmbiU1b5b1beklayQmb00VYtQ2btPFayA..N.fI.HA.mAvb.7E.oAfa.LG.zAfb.TG.sAPY.3F.zAvb.3B.jA.a.LG.O.fF.v..MAPX.LF.oAfa.PG.uAvb.fF.f..R.PD.R.vTSk2bzUVauvTZhIWXxk2KC8Vav8lak4Fcy8xPuIWYAUGYo8lKi8Vav8lak4FcuLzatQWYtQ2buHUYy8VcxMVYy8xYy8UZtMGcxUWak4Fcy4BYrMG..LA.A7B.++O..DMGcDkLR6wGfDRTvDULZMGckIWYuARaogmU04VcyUFY.f..i..K.DC.4.vS.3E.sAfb.bG.DBfk.3I.iB.r.jK.BC.w.XL.HCPy.PO.4C.+AfP.eE.YC.w.SLPECnw.bLfGCjB.......f.A.........fH..................v.v."
									}
,
									"fileref" : 									{
										"name" : "DLSMusicDevice",
										"filename" : "DLSMusicDevice.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "07adde3b2ca596fa24a80d3db25b5fd3"
									}

								}
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "DLSMusicDevice[1]",
									"origin" : "DLSMusicDevice.auinfo",
									"type" : "AudioUnit",
									"subtype" : "Instrument",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "DLSMusicDevice.auinfo",
										"plugindisplayname" : "DLSMusicDevice",
										"pluginsavedname" : "C74_AU:/DLSMusicDevice",
										"pluginsaveduniqueid" : 1684631097,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"sliderorder" : [  ],
										"slidervisibility" : [ 1, 1, 1 ],
										"blob" : "916.hAGaoMGcv.S2AHv.DTfAGfPBJr.CM3vCPDADRLAEUXQFZrAViAWcsv1agQFUtEVakckckI2bo8laeAwD0MWYsjlazUlbtEFasHWY1Ulbh4EYoM2ZsLGcxUVXsklam4kbk4FYkIWKwUWXrkFc4QEc4AWYTQVXzEFWsEla0YVXiQWcxUlbeAwClkFak0hbkYVYxUlaiU1bWMWchQWdvUFUBElaqwUYrUVak4Fcs3VXsU1H...........VU4FcoQGakQFD..Q.P7mDgUWa08DDj...............C......P3BKd....Aryyv.....f.BCO..HQXvAGaQeAFaMmXsXVZrUVKxUlYeAAUuLUdyQWYs8BSoIlbgIWduLzasA2atUlazM2KC8lbkETcjk1atL1asA2atUlaz8xPu4Fck4Fcy8hTkM2a0I2XkM2KmM2Wo41bzIWcsUlazMmKjw1bRPFayAxSQD.p.....D.p.H...vPSgMVZtQ2aygFHHQD...................f3ZUCoBQD.A7++++uDmM2Wo41bzIWcsUlazMmKjw1b............................................................+++++KtV0PJ..........7++++O..n.HiUG.................IHUYy8VcxMVYyA..B.PUunyT4MGck0lNLklXxElb4oyPu0Fbu4VYtQ2b5LzaxUVP0QVZu4xXu0Fbu4VYtQmNC8lazUlazMmNRU1buUmbiU1b5b1beklayQmb00VYtQ2btPFayA..N.fI.HA.mAvb.7E.oAfa.LG.zAfb.TG.sAPY.3F.zAvb.3B.jA.a.LG.O.fF.v..MAPX.LF.oAfa.PG.uAvb.fF.f..R.PD.R.vTSk2bzUVauvTZhIWXxk2KC8Vav8lak4Fcy8xPuIWYAUGYo8lKi8Vav8lak4FcuLzatQWYtQ2buHUYy8VcxMVYy8xYy8UZtMGcxUWak4Fcy4BYrMG..LA.A7B.++O..DMGcDkLR6wGfDRTvDULZMGckIWYuARaogmU04VcyUFY.f..i..K.DC.4.vS.3E.sAfb.bG.DBfk.3I.iB.r.jK.BC.w.XL.HCPy.PO.4C.+AfP.eE.YC.w.SLPECnw.bLfGCjB.......f.A.........fH..................v.v."
									}
,
									"fileref" : 									{
										"name" : "DLSMusicDevice[1]",
										"filename" : "DLSMusicDevice[1].maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "ad9640fe64909d7d769b688395f7d0f2"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ C74_AU:/DLSMusicDevice",
					"varname" : "vst~",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 627.0, 884.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 562.0, 889.0, 53.0, 22.0 ],
					"text" : "unpack i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 533.0, 843.0, 71.0, 22.0 ],
					"text" : "fromsymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 692.0, 884.0, 50.0, 22.0 ],
					"text" : "\"33\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "number",
					"maximum" : 7,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 627.0, 300.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"items" : [ 5, ",", 17, ",", 33, ",", 34, ",", 46, ",", 54, ",", 88, ",", 96 ],
					"maxclass" : "chooser",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 627.0, 332.0, 59.0, 170.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 376.0, 599.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 376.0, 512.0, 127.0, 22.0 ],
					"text" : "if $f1 > 0 then 1 else 0"
				}

			}
, 			{
				"box" : 				{
					"disabled" : [ 0, 0 ],
					"id" : "obj-43",
					"itemtype" : 0,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 376.0, 549.0, 18.0, 34.0 ],
					"size" : 2,
					"value" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 167.0, 599.0, 42.0, 22.0 ],
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 381.0, 125.0, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 484.0, 157.0, 171.0, 22.0 ],
					"text" : "1 48 2 55 4 52 7 66 9 59 11 69"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 446.0, 273.0, 338.0, 20.0 ],
					"text" : "note definitions: 1 48, 2 52, 3 55, 4 59, 5 62, 6 66, 7 69, 8 71"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 356.0, 244.0, 243.0, 22.0 ],
					"text" : "1 48 4 55 6 71 8 52 10 55 12 69 14 66 16 -1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 209.0, 486.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 209.0, 232.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 209.0, 165.0, 75.0, 22.0 ],
					"text" : "counter 0 15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 334.0, 767.0, 150.0, 20.0 ],
					"text" : "sequencer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 562.0, 927.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"ignoreclick" : 1,
					"maxclass" : "itable",
					"name" : "",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 209.0, 273.0, 227.0, 202.0 ],
					"range" : 75,
					"size" : 16,
					"table_data" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
					"varname" : "itable"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-275",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 209.0, 40.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-276",
					"index" : 2,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 244.0, 40.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-277",
					"index" : 3,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 343.5, 40.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-278",
					"index" : 4,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 627.0, 40.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-279",
					"index" : 5,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 844.0, 40.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-280",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 134.0, 1533.0, 30.0, 30.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"midpoints" : [ 266.5, 818.500000046874902, 334.0, 818.500000046874902 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 176.5, 863.500000046874902, 320.5, 863.500000046874902 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 2 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"midpoints" : [ 493.5, 738.000000046874902, 221.5, 738.000000046874902 ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"order" : 1,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"order" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-275", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-276", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 0,
					"source" : [ "obj-277", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"order" : 1,
					"source" : [ "obj-277", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"order" : 2,
					"source" : [ "obj-277", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"order" : 3,
					"source" : [ "obj-277", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-278", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-279", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"order" : 1,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 1 ],
					"source" : [ "obj-4", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 3 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 6 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 1 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 1 ],
					"order" : 1,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"order" : 3,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 1 ],
					"order" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"order" : 2,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 1 ],
					"source" : [ "obj-61", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 1 ],
					"order" : 0,
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"order" : 1,
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"order" : 0,
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-280", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 320.5, 928.500000046874902, 143.5, 928.500000046874902 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 1 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"order" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 1 ],
					"source" : [ "obj-96", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 1,
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"order" : 0,
					"source" : [ "obj-98", 0 ]
				}

			}
 ]
	}

}
