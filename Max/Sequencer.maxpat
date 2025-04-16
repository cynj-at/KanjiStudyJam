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
		"rect" : [ 240.0, 364.0, 843.0, 710.0 ],
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
					"id" : "obj-28",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 768.0, 91.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 701.0, 103.0, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 588.0, 262.0, 50.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 619.0, 181.0, 33.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 619.0, 216.0, 42.0, 22.0 ],
					"text" : "gate 0"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-26",
					"index" : 4,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 803.0, 26.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-23",
					"index" : 3,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 712.5, 30.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 526.0, 200.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 397.0, 211.0, 63.0, 22.0 ],
					"text" : "metro 200"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-9",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 404.75, 1025.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 589.0, 16.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 318.0, 149.0, 35.0, 22.0 ],
					"text" : "set 0"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-12",
					"index" : 2,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 270.0, 43.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-1",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 81.0, 16.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 62.5, 553.0, 300.0, 100.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, "C74_AU:/AULowpass", ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[1]",
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
							"pluginname" : "AULowpass.auinfo",
							"plugindisplayname" : "AULowpass",
							"pluginsavedname" : "C74_AU:/AULowpass",
							"pluginsaveduniqueid" : 1819304307,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"sliderorder" : [  ],
							"slidervisibility" : [ 1, 1 ],
							"blob" : "167.hAGaoMGcv.i0AHv.DTfAGfPBJr.CT4VXsUFWsEla0YVXiQWcxUlbTQVXzEFUzkGbkc0b0IFc4AWYWYWYxMWZu4FVU4FcoQGakQlDgAGbr8DDb...............B.....fQmZcv....AHDAZ6nDgUmY3IAavE1bP..BUnwIrDSNAozStMGd........AD..........M....................nG"
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "AULowpass",
									"origin" : "AULowpass.auinfo",
									"type" : "AudioUnit",
									"subtype" : "AudioEffect",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "AULowpass.auinfo",
										"plugindisplayname" : "AULowpass",
										"pluginsavedname" : "C74_AU:/AULowpass",
										"pluginsaveduniqueid" : 1819304307,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"sliderorder" : [  ],
										"slidervisibility" : [ 1, 1 ],
										"blob" : "167.hAGaoMGcv.i0AHv.DTfAGfPBJr.CT4VXsUFWsEla0YVXiQWcxUlbTQVXzEFUzkGbkc0b0IFc4AWYWYWYxMWZu4FVU4FcoQGakQlDgAGbr8DDb...............B.....fQmZcv....AHDAZ6nDgUmY3IAavE1bP..BUnwIrDSNAozStMGd........AD..........M....................nG"
									}
,
									"fileref" : 									{
										"name" : "AULowpass",
										"filename" : "AULowpass.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "72261120ca3549d9bde942e62cae95f3"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ C74_AU:/AULowpass",
					"varname" : "vst~",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 559.0, 518.0, 47.0, 22.0 ],
					"text" : "*~ 0.05"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 391.0, 498.0, 47.0, 22.0 ],
					"text" : "*~ 0.05"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 193.0, 498.0, 72.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 305.0, 498.0, 47.0, 22.0 ],
					"text" : "*~ 0.05"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 449.0, 519.0, 47.0, 22.0 ],
					"text" : "*~ 0.05"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 513.0, 30.0, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 419.5, 20.0, 45.0, 22.0 ],
					"text" : "store 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 419.5, 71.0, 172.5, 92.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "<invalid>", "toggle", "int", 1, 5, "obj-77", "number", "int", 9, 5, "obj-22", "live.gain~", "float", 0.0, 5, "obj-25", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 0, 5, "obj-58", "toggle", "int", 1, 256, "obj-65", "matrixctrl", "list", 0, 0, 1.0, 0, 1, 0.0, 0, 2, 0.0, 0, 3, 0.0, 0, 4, 0.0, 0, 5, 0.0, 1, 0, 0.0, 1, 1, 0.0, 1, 2, 0.0, 1, 3, 0.0, 1, 4, 0.0, 1, 5, 0.0, 2, 0, 0.0, 2, 1, 0.0, 2, 2, 1.0, 2, 3, 0.0, 2, 4, 0.0, 2, 5, 0.0, 3, 0, 0.0, 3, 1, 0.0, 3, 2, 0.0, 3, 3, 0.0, 3, 4, 0.0, 3, 5, 0.0, 4, 0, 0.0, 4, 1, 1.0, 4, 2, 1.0, 4, 3, 0.0, 4, 4, 0.0, 4, 5, 0.0, 5, 0, 0.0, 5, 1, 0.0, 5, 2, 0.0, 5, 3, 0.0, 5, 4, 0.0, 5, 5, 0.0, 6, 0, 0.0, 6, 1, 0.0, 6, 2, 1.0, 6, 3, 0.0, 6, 4, 0.0, 6, 5, 0.0, 7, 0, 0.0, 7, 1, 0.0, 7, 2, 0.0, 7, 3, 0.0, 7, 4, 0.0, 7, 5, 0.0, 8, 0, 0.0, 8, 1, 1.0, 8, 2, 0.0, 8, 3, 0.0, 8, 4, 0.0, 8, 5, 0.0, 9, 0, 0.0, 9, 1, 0.0, 9, 2, 0.0, 9, 3, 0.0, 9, 4, 0.0, 9, 5, 0.0, 10, 0, 1.0, 10, 1, 0.0, 10, 2, 1.0, 10, 3, 0.0, 10, 4, 0.0, 10, 5, 0.0, 11, 0, 0.0, 11, 1, 0.0, 11, 2, 0.0, 11, 3, 0.0, 11, 4, 0.0, 11, 5, 0.0, 12, 0, 0.0, 12, 1, 1.0, 12, 2, 1.0, 12, 3, 0.0, 12, 4, 0.0, 12, 5, 0.0, 13, 0, 0.0, 13, 1, 0.0, 13, 2, 0.0, 13, 3, 0.0, 13, 4, 0.0, 13, 5, 0.0, 40, "obj-65", "matrixctrl", "list", 14, 0, 0.0, 14, 1, 0.0, 14, 2, 0.0, 14, 3, 1.0, 14, 4, 0.0, 14, 5, 0.0, 15, 0, 0.0, 15, 1, 0.0, 15, 2, 0.0, 15, 3, 1.0, 15, 4, 0.0, 15, 5, 0.0, 5, "obj-82", "toggle", "int", 0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "<invalid>", "toggle", "int", 1, 5, "obj-77", "number", "int", 9, 5, "obj-22", "live.gain~", "float", 0.0, 5, "obj-25", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 0, 5, "obj-58", "toggle", "int", 1, 256, "obj-65", "matrixctrl", "list", 0, 0, 1.0, 0, 1, 0.0, 0, 2, 0.0, 0, 3, 0.0, 0, 4, 0.0, 0, 5, 0.0, 1, 0, 0.0, 1, 1, 0.0, 1, 2, 0.0, 1, 3, 1.0, 1, 4, 0.0, 1, 5, 0.0, 2, 0, 0.0, 2, 1, 0.0, 2, 2, 1.0, 2, 3, 1.0, 2, 4, 0.0, 2, 5, 0.0, 3, 0, 0.0, 3, 1, 0.0, 3, 2, 0.0, 3, 3, 0.0, 3, 4, 0.0, 3, 5, 0.0, 4, 0, 0.0, 4, 1, 1.0, 4, 2, 1.0, 4, 3, 0.0, 4, 4, 0.0, 4, 5, 0.0, 5, 0, 0.0, 5, 1, 0.0, 5, 2, 0.0, 5, 3, 0.0, 5, 4, 0.0, 5, 5, 0.0, 6, 0, 0.0, 6, 1, 0.0, 6, 2, 1.0, 6, 3, 0.0, 6, 4, 0.0, 6, 5, 0.0, 7, 0, 0.0, 7, 1, 0.0, 7, 2, 0.0, 7, 3, 0.0, 7, 4, 0.0, 7, 5, 0.0, 8, 0, 0.0, 8, 1, 1.0, 8, 2, 0.0, 8, 3, 1.0, 8, 4, 0.0, 8, 5, 0.0, 9, 0, 0.0, 9, 1, 0.0, 9, 2, 0.0, 9, 3, 0.0, 9, 4, 0.0, 9, 5, 0.0, 10, 0, 1.0, 10, 1, 0.0, 10, 2, 0.0, 10, 3, 0.0, 10, 4, 0.0, 10, 5, 0.0, 11, 0, 0.0, 11, 1, 0.0, 11, 2, 0.0, 11, 3, 0.0, 11, 4, 0.0, 11, 5, 0.0, 12, 0, 0.0, 12, 1, 1.0, 12, 2, 1.0, 12, 3, 0.0, 12, 4, 0.0, 12, 5, 0.0, 13, 0, 0.0, 13, 1, 0.0, 13, 2, 0.0, 13, 3, 0.0, 13, 4, 0.0, 13, 5, 0.0, 40, "obj-65", "matrixctrl", "list", 14, 0, 0.0, 14, 1, 0.0, 14, 2, 0.0, 14, 3, 1.0, 14, 4, 0.0, 14, 5, 0.0, 15, 0, 0.0, 15, 1, 0.0, 15, 2, 0.0, 15, 3, 1.0, 15, 4, 0.0, 15, 5, 0.0, 5, "obj-82", "toggle", "int", 0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-77", "number", "int", 12, 5, "obj-22", "live.gain~", "float", 0.0, 5, "obj-25", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 0, 5, "obj-58", "toggle", "int", 1, 256, "obj-65", "matrixctrl", "list", 0, 0, 1.0, 0, 1, 0.0, 0, 2, 0.0, 0, 3, 0.0, 0, 4, 0.0, 0, 5, 0.0, 1, 0, 0.0, 1, 1, 0.0, 1, 2, 0.0, 1, 3, 0.0, 1, 4, 0.0, 1, 5, 0.0, 2, 0, 0.0, 2, 1, 0.0, 2, 2, 1.0, 2, 3, 0.0, 2, 4, 0.0, 2, 5, 0.0, 3, 0, 0.0, 3, 1, 0.0, 3, 2, 0.0, 3, 3, 0.0, 3, 4, 0.0, 3, 5, 0.0, 4, 0, 0.0, 4, 1, 0.0, 4, 2, 0.0, 4, 3, 0.0, 4, 4, 0.0, 4, 5, 0.0, 5, 0, 0.0, 5, 1, 0.0, 5, 2, 0.0, 5, 3, 0.0, 5, 4, 0.0, 5, 5, 0.0, 6, 0, 0.0, 6, 1, 0.0, 6, 2, 1.0, 6, 3, 0.0, 6, 4, 0.0, 6, 5, 0.0, 7, 0, 0.0, 7, 1, 0.0, 7, 2, 0.0, 7, 3, 0.0, 7, 4, 0.0, 7, 5, 0.0, 8, 0, 1.0, 8, 1, 1.0, 8, 2, 1.0, 8, 3, 0.0, 8, 4, 0.0, 8, 5, 0.0, 9, 0, 0.0, 9, 1, 0.0, 9, 2, 0.0, 9, 3, 0.0, 9, 4, 0.0, 9, 5, 0.0, 10, 0, 0.0, 10, 1, 0.0, 10, 2, 1.0, 10, 3, 0.0, 10, 4, 0.0, 10, 5, 0.0, 11, 0, 0.0, 11, 1, 0.0, 11, 2, 0.0, 11, 3, 0.0, 11, 4, 0.0, 11, 5, 0.0, 12, 0, 0.0, 12, 1, 1.0, 12, 2, 0.0, 12, 3, 0.0, 12, 4, 0.0, 12, 5, 0.0, 13, 0, 0.0, 13, 1, 0.0, 13, 2, 0.0, 13, 3, 0.0, 13, 4, 0.0, 13, 5, 0.0, 40, "obj-65", "matrixctrl", "list", 14, 0, 0.0, 14, 1, 0.0, 14, 2, 0.0, 14, 3, 1.0, 14, 4, 0.0, 14, 5, 0.0, 15, 0, 0.0, 15, 1, 0.0, 15, 2, 0.0, 15, 3, 1.0, 15, 4, 0.0, 15, 5, 0.0, 5, "obj-82", "toggle", "int", 0 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-77", "number", "int", 14, 5, "obj-22", "live.gain~", "float", 0.0, 5, "obj-25", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 0, 5, "obj-58", "toggle", "int", 1, 256, "obj-65", "matrixctrl", "list", 0, 0, 1.0, 0, 1, 0.0, 0, 2, 0.0, 0, 3, 0.0, 0, 4, 0.0, 0, 5, 0.0, 1, 0, 0.0, 1, 1, 0.0, 1, 2, 0.0, 1, 3, 0.0, 1, 4, 0.0, 1, 5, 0.0, 2, 0, 0.0, 2, 1, 0.0, 2, 2, 0.0, 2, 3, 0.0, 2, 4, 0.0, 2, 5, 0.0, 3, 0, 0.0, 3, 1, 0.0, 3, 2, 0.0, 3, 3, 0.0, 3, 4, 0.0, 3, 5, 0.0, 4, 0, 0.0, 4, 1, 1.0, 4, 2, 0.0, 4, 3, 0.0, 4, 4, 0.0, 4, 5, 0.0, 5, 0, 0.0, 5, 1, 0.0, 5, 2, 0.0, 5, 3, 0.0, 5, 4, 0.0, 5, 5, 0.0, 6, 0, 0.0, 6, 1, 0.0, 6, 2, 1.0, 6, 3, 0.0, 6, 4, 0.0, 6, 5, 0.0, 7, 0, 0.0, 7, 1, 0.0, 7, 2, 0.0, 7, 3, 0.0, 7, 4, 0.0, 7, 5, 0.0, 8, 0, 0.0, 8, 1, 1.0, 8, 2, 1.0, 8, 3, 0.0, 8, 4, 0.0, 8, 5, 0.0, 9, 0, 0.0, 9, 1, 0.0, 9, 2, 0.0, 9, 3, 0.0, 9, 4, 0.0, 9, 5, 0.0, 10, 0, 0.0, 10, 1, 0.0, 10, 2, 1.0, 10, 3, 0.0, 10, 4, 0.0, 10, 5, 0.0, 11, 0, 0.0, 11, 1, 0.0, 11, 2, 0.0, 11, 3, 0.0, 11, 4, 0.0, 11, 5, 0.0, 12, 0, 1.0, 12, 1, 0.0, 12, 2, 0.0, 12, 3, 0.0, 12, 4, 0.0, 12, 5, 0.0, 13, 0, 0.0, 13, 1, 1.0, 13, 2, 0.0, 13, 3, 0.0, 13, 4, 0.0, 13, 5, 0.0, 40, "obj-65", "matrixctrl", "list", 14, 0, 0.0, 14, 1, 0.0, 14, 2, 0.0, 14, 3, 1.0, 14, 4, 0.0, 14, 5, 0.0, 15, 0, 0.0, 15, 1, 0.0, 15, 2, 0.0, 15, 3, 0.0, 15, 4, 0.0, 15, 5, 0.0, 5, "obj-82", "toggle", "int", 0, 5, "obj-24", "toggle", "int", 0 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-77", "number", "int", 1, 5, "obj-22", "live.gain~", "float", 0.0, 5, "obj-25", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-58", "toggle", "int", 0, 256, "obj-65", "matrixctrl", "list", 0, 0, 1.0, 0, 1, 0.0, 0, 2, 0.0, 0, 3, 0.0, 0, 4, 0.0, 0, 5, 0.0, 1, 0, 0.0, 1, 1, 1.0, 1, 2, 0.0, 1, 3, 0.0, 1, 4, 0.0, 1, 5, 0.0, 2, 0, 0.0, 2, 1, 0.0, 2, 2, 1.0, 2, 3, 0.0, 2, 4, 0.0, 2, 5, 0.0, 3, 0, 0.0, 3, 1, 0.0, 3, 2, 0.0, 3, 3, 0.0, 3, 4, 0.0, 3, 5, 0.0, 4, 0, 0.0, 4, 1, 1.0, 4, 2, 0.0, 4, 3, 0.0, 4, 4, 0.0, 4, 5, 0.0, 5, 0, 0.0, 5, 1, 0.0, 5, 2, 0.0, 5, 3, 0.0, 5, 4, 0.0, 5, 5, 0.0, 6, 0, 0.0, 6, 1, 0.0, 6, 2, 1.0, 6, 3, 0.0, 6, 4, 0.0, 6, 5, 0.0, 7, 0, 0.0, 7, 1, 0.0, 7, 2, 0.0, 7, 3, 0.0, 7, 4, 0.0, 7, 5, 0.0, 8, 0, 1.0, 8, 1, 0.0, 8, 2, 0.0, 8, 3, 0.0, 8, 4, 0.0, 8, 5, 0.0, 9, 0, 0.0, 9, 1, 0.0, 9, 2, 0.0, 9, 3, 0.0, 9, 4, 0.0, 9, 5, 0.0, 10, 0, 0.0, 10, 1, 0.0, 10, 2, 1.0, 10, 3, 0.0, 10, 4, 0.0, 10, 5, 0.0, 11, 0, 0.0, 11, 1, 0.0, 11, 2, 0.0, 11, 3, 0.0, 11, 4, 0.0, 11, 5, 0.0, 12, 0, 1.0, 12, 1, 0.0, 12, 2, 0.0, 12, 3, 0.0, 12, 4, 0.0, 12, 5, 0.0, 13, 0, 0.0, 13, 1, 1.0, 13, 2, 0.0, 13, 3, 0.0, 13, 4, 0.0, 13, 5, 0.0, 40, "obj-65", "matrixctrl", "list", 14, 0, 0.0, 14, 1, 0.0, 14, 2, 0.0, 14, 3, 1.0, 14, 4, 0.0, 14, 5, 0.0, 15, 0, 0.0, 15, 1, 0.0, 15, 2, 0.0, 15, 3, 0.0, 15, 4, 0.0, 15, 5, 0.0, 5, "obj-82", "toggle", "int", 0, 5, "obj-24", "toggle", "int", 0 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-77", "number", "int", 11, 5, "obj-22", "live.gain~", "float", 0.0, 5, "obj-25", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 0, 5, "obj-58", "toggle", "int", 1, 256, "obj-65", "matrixctrl", "list", 0, 0, 1.0, 0, 1, 0.0, 0, 2, 0.0, 0, 3, 0.0, 0, 4, 0.0, 0, 5, 0.0, 1, 0, 0.0, 1, 1, 0.0, 1, 2, 0.0, 1, 3, 0.0, 1, 4, 0.0, 1, 5, 0.0, 2, 0, 0.0, 2, 1, 0.0, 2, 2, 1.0, 2, 3, 0.0, 2, 4, 0.0, 2, 5, 0.0, 3, 0, 0.0, 3, 1, 0.0, 3, 2, 0.0, 3, 3, 0.0, 3, 4, 0.0, 3, 5, 0.0, 4, 0, 0.0, 4, 1, 1.0, 4, 2, 1.0, 4, 3, 0.0, 4, 4, 0.0, 4, 5, 0.0, 5, 0, 0.0, 5, 1, 0.0, 5, 2, 0.0, 5, 3, 0.0, 5, 4, 0.0, 5, 5, 0.0, 6, 0, 0.0, 6, 1, 0.0, 6, 2, 1.0, 6, 3, 0.0, 6, 4, 0.0, 6, 5, 0.0, 7, 0, 0.0, 7, 1, 1.0, 7, 2, 0.0, 7, 3, 0.0, 7, 4, 0.0, 7, 5, 0.0, 8, 0, 0.0, 8, 1, 1.0, 8, 2, 0.0, 8, 3, 0.0, 8, 4, 0.0, 8, 5, 0.0, 9, 0, 0.0, 9, 1, 0.0, 9, 2, 0.0, 9, 3, 0.0, 9, 4, 0.0, 9, 5, 0.0, 10, 0, 0.0, 10, 1, 0.0, 10, 2, 1.0, 10, 3, 0.0, 10, 4, 0.0, 10, 5, 0.0, 11, 0, 0.0, 11, 1, 0.0, 11, 2, 0.0, 11, 3, 0.0, 11, 4, 0.0, 11, 5, 0.0, 12, 0, 0.0, 12, 1, 1.0, 12, 2, 1.0, 12, 3, 0.0, 12, 4, 0.0, 12, 5, 0.0, 13, 0, 0.0, 13, 1, 0.0, 13, 2, 0.0, 13, 3, 0.0, 13, 4, 0.0, 13, 5, 0.0, 40, "obj-65", "matrixctrl", "list", 14, 0, 1.0, 14, 1, 0.0, 14, 2, 0.0, 14, 3, 0.0, 14, 4, 0.0, 14, 5, 0.0, 15, 0, 0.0, 15, 1, 1.0, 15, 2, 0.0, 15, 3, 1.0, 15, 4, 0.0, 15, 5, 0.0, 5, "obj-82", "toggle", "int", 0, 5, "obj-24", "toggle", "int", 0 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-77", "number", "int", 12, 5, "obj-22", "live.gain~", "float", 0.0, 5, "obj-25", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-58", "toggle", "int", 1, 256, "obj-65", "matrixctrl", "list", 0, 0, 1.0, 0, 1, 0.0, 0, 2, 0.0, 0, 3, 0.0, 0, 4, 0.0, 0, 5, 0.0, 1, 0, 0.0, 1, 1, 0.0, 1, 2, 0.0, 1, 3, 0.0, 1, 4, 0.0, 1, 5, 0.0, 2, 0, 0.0, 2, 1, 0.0, 2, 2, 1.0, 2, 3, 0.0, 2, 4, 0.0, 2, 5, 0.0, 3, 0, 0.0, 3, 1, 0.0, 3, 2, 0.0, 3, 3, 0.0, 3, 4, 0.0, 3, 5, 0.0, 4, 0, 0.0, 4, 1, 1.0, 4, 2, 1.0, 4, 3, 0.0, 4, 4, 0.0, 4, 5, 0.0, 5, 0, 0.0, 5, 1, 0.0, 5, 2, 0.0, 5, 3, 0.0, 5, 4, 0.0, 5, 5, 0.0, 6, 0, 0.0, 6, 1, 0.0, 6, 2, 1.0, 6, 3, 0.0, 6, 4, 0.0, 6, 5, 0.0, 7, 0, 0.0, 7, 1, 1.0, 7, 2, 0.0, 7, 3, 0.0, 7, 4, 0.0, 7, 5, 0.0, 8, 0, 0.0, 8, 1, 1.0, 8, 2, 0.0, 8, 3, 0.0, 8, 4, 0.0, 8, 5, 0.0, 9, 0, 0.0, 9, 1, 0.0, 9, 2, 0.0, 9, 3, 0.0, 9, 4, 0.0, 9, 5, 0.0, 10, 0, 1.0, 10, 1, 0.0, 10, 2, 1.0, 10, 3, 0.0, 10, 4, 0.0, 10, 5, 0.0, 11, 0, 0.0, 11, 1, 0.0, 11, 2, 0.0, 11, 3, 0.0, 11, 4, 0.0, 11, 5, 0.0, 12, 0, 0.0, 12, 1, 1.0, 12, 2, 1.0, 12, 3, 0.0, 12, 4, 0.0, 12, 5, 0.0, 13, 0, 0.0, 13, 1, 0.0, 13, 2, 0.0, 13, 3, 0.0, 13, 4, 0.0, 13, 5, 0.0, 40, "obj-65", "matrixctrl", "list", 14, 0, 0.0, 14, 1, 0.0, 14, 2, 0.0, 14, 3, 0.0, 14, 4, 0.0, 14, 5, 0.0, 15, 0, 1.0, 15, 1, 1.0, 15, 2, 0.0, 15, 3, 1.0, 15, 4, 0.0, 15, 5, 0.0, 5, "obj-82", "toggle", "int", 0, 5, "obj-24", "toggle", "int", 0 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-77", "number", "int", 6, 5, "obj-22", "live.gain~", "float", 0.0, 5, "obj-25", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 0, 5, "obj-58", "toggle", "int", 1, 256, "obj-65", "matrixctrl", "list", 0, 0, 1.0, 0, 1, 0.0, 0, 2, 0.0, 0, 3, 0.0, 0, 4, 0.0, 0, 5, 0.0, 1, 0, 0.0, 1, 1, 0.0, 1, 2, 0.0, 1, 3, 0.0, 1, 4, 0.0, 1, 5, 0.0, 2, 0, 0.0, 2, 1, 0.0, 2, 2, 1.0, 2, 3, 0.0, 2, 4, 0.0, 2, 5, 0.0, 3, 0, 0.0, 3, 1, 0.0, 3, 2, 0.0, 3, 3, 0.0, 3, 4, 0.0, 3, 5, 0.0, 4, 0, 0.0, 4, 1, 1.0, 4, 2, 0.0, 4, 3, 0.0, 4, 4, 0.0, 4, 5, 0.0, 5, 0, 0.0, 5, 1, 0.0, 5, 2, 0.0, 5, 3, 0.0, 5, 4, 0.0, 5, 5, 0.0, 6, 0, 0.0, 6, 1, 0.0, 6, 2, 0.0, 6, 3, 0.0, 6, 4, 0.0, 6, 5, 0.0, 7, 0, 0.0, 7, 1, 1.0, 7, 2, 1.0, 7, 3, 0.0, 7, 4, 0.0, 7, 5, 0.0, 8, 0, 0.0, 8, 1, 0.0, 8, 2, 1.0, 8, 3, 0.0, 8, 4, 0.0, 8, 5, 0.0, 9, 0, 0.0, 9, 1, 0.0, 9, 2, 0.0, 9, 3, 0.0, 9, 4, 0.0, 9, 5, 0.0, 10, 0, 1.0, 10, 1, 0.0, 10, 2, 1.0, 10, 3, 0.0, 10, 4, 0.0, 10, 5, 0.0, 11, 0, 0.0, 11, 1, 0.0, 11, 2, 0.0, 11, 3, 0.0, 11, 4, 0.0, 11, 5, 0.0, 12, 0, 0.0, 12, 1, 1.0, 12, 2, 0.0, 12, 3, 0.0, 12, 4, 0.0, 12, 5, 0.0, 13, 0, 0.0, 13, 1, 0.0, 13, 2, 0.0, 13, 3, 0.0, 13, 4, 0.0, 13, 5, 0.0, 40, "obj-65", "matrixctrl", "list", 14, 0, 0.0, 14, 1, 0.0, 14, 2, 0.0, 14, 3, 0.0, 14, 4, 0.0, 14, 5, 0.0, 15, 0, 1.0, 15, 1, 1.0, 15, 2, 0.0, 15, 3, 1.0, 15, 4, 0.0, 15, 5, 0.0, 5, "obj-82", "toggle", "int", 0, 5, "obj-24", "toggle", "int", 0 ]
						}
 ]
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
					"patching_rect" : [ 638.0, 517.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 550.0, 382.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 29.75, 969.0, 220.0, 22.0 ],
					"text" : "buffer~ downHihat DowngradeTickHihat"
				}

			}
, 			{
				"box" : 				{
					"columns" : 16,
					"id" : "obj-65",
					"maxclass" : "matrixctrl",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "list", "list" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 25.0, 108.0, 222.0, 85.0 ],
					"rows" : 6
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 476.0, 382.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 527.0, 492.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 29.75, 925.0, 136.0, 22.0 ],
					"text" : "buffer~ hihat ToothHihat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.5, 393.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 305.0, 393.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 305.0, 434.0, 67.0, 22.0 ],
					"text" : "play~ base"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 29.75, 890.0, 178.0, 22.0 ],
					"text" : "buffer~ base DreamsLofiKick1C"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 449.0, 469.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 27.75, 848.0, 183.0, 22.0 ],
					"text" : "buffer~ snare DreamsLofiSnare2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 391.0, 382.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 402.5, 871.0, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 692.0, 518.0, 47.0, 22.0 ],
					"text" : "sfplay~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 692.0, 371.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 692.0, 345.0, 32.5, 20.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 692.0, 319.0, 50.5, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll row6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 618.0, 371.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 618.0, 345.0, 32.5, 20.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 618.0, 319.0, 50.5, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll row5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 559.0, 470.0, 98.0, 22.0 ],
					"text" : "play~ downHihat"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 550.0, 345.0, 32.5, 20.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 550.0, 319.0, 50.5, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll row4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 91.0, 525.0, 50.5, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll row6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 81.0, 500.0, 50.5, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll row5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 75.0, 474.0, 50.5, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll row4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 476.0, 447.0, 67.0, 22.0 ],
					"text" : "play~ hihat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 391.0, 421.0, 71.0, 22.0 ],
					"text" : "play~ snare"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-77",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 388.0, 263.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-75",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 338.0, 183.0, 29.0, 18.0 ],
					"text" : "play"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 60.0, 447.0, 59.5, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll row3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 50.0, 423.0, 59.5, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll row2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 476.0, 345.0, 32.5, 20.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 391.0, 343.0, 32.5, 20.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 305.0, 337.0, 32.5, 20.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "int", "int", "int", "int", "int", "int" ],
					"patching_rect" : [ 305.0, 288.0, 71.5, 20.0 ],
					"text" : "t i i i i i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 476.0, 319.0, 59.5, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll row3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 390.0, 320.0, 59.5, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll row2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 305.0, 248.0, 61.0, 20.0 ],
					"text" : "counter 15"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 305.0, 314.0, 59.5, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll row1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 39.0, 400.0, 59.5, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll row1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 25.0, 250.0, 32.5, 20.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "" ],
					"patching_rect" : [ 39.0, 357.0, 71.5, 20.0 ],
					"text" : "gate 6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 39.0, 300.0, 32.5, 20.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 91.0, 300.0, 35.0, 20.0 ],
					"text" : "zl reg"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 25.0, 229.0, 43.0, 20.0 ],
					"text" : "zl nth 2"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 1 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"order" : 1,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 1 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 1 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 1 ],
					"midpoints" : [ 58.5, 247.0, 116.5, 247.0 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 1 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-43", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
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
					"destination" : [ "obj-76", 1 ],
					"order" : 0,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"order" : 1,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-47", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-47", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-47", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-47", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-47", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 34.5, 282.0, 100.5, 282.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"order" : 1,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"order" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-61", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-61", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-61", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-61", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-61", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"order" : 0,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"order" : 1,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"order" : 0,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 1,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"order" : 1,
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 1 ],
					"order" : 0,
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"order" : 2,
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"order" : 0,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 1,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"order" : 0,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 1,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"source" : [ "obj-96", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
 ]
	}

}
