{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 195.0, 557.0, 1719.0, 1157.0 ],
		"bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
		"editing_bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
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
		"toolbars_unpinned_last_save" : 15,
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
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 94.0, 1253.0, 69.0, 22.0 ],
					"style" : "",
					"text" : "delay 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 276.799988, 1146.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 1236.5, 286.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 710.800049, 782.0, 295.199951, 33.0 ],
					"style" : "",
					"text" : "Update Ensembles",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
					"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"id" : "obj-30",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 221.5, 1241.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 667.0, 778.0, 41.0, 41.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 56.0, 404.0, 123.0, 22.0 ],
									"style" : "",
									"text" : "prepend _ensembles"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 56.0, 445.0, 236.0, 22.0 ],
									"style" : "",
									"text" : "regexp @substitute / @re \" \" @tosymbol 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 368.5, 53.0, 22.0 ],
									"style" : "",
									"text" : "zl.group"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 66.0, 184.0, 57.0, 22.0 ],
									"style" : "",
									"text" : "zl.slice 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 63.0, 280.0, 93.0, 22.0 ],
									"style" : "",
									"text" : "route ensemble"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 224.0, 49.0, 22.0 ],
									"style" : "",
									"text" : "dict.iter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 147.0, 49.0, 22.0 ],
									"style" : "",
									"text" : "dict.iter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 66.0, 100.0, 78.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "dict Modules"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-23",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 52.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-28",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 56.0, 527.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 0,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"order" : 1,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-30", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 222.0, 1303.0, 126.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p createEnsembleList"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 222.0, 1359.0, 137.0, 22.0 ],
					"style" : "",
					"text" : "udpsend localhost 8087"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 106.0, 927.0, 226.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 710.800049, 733.0, 247.0, 33.0 ],
					"style" : "",
					"text" : "clear all messages",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
					"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"id" : "obj-26",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 74.100037, 927.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 667.0, 729.0, 41.0, 41.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 32.0, 1108.0, 72.0, 22.0 ],
					"style" : "",
					"text" : "global clear"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 388.0, 942.0, 286.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 710.800049, 681.5, 203.199951, 33.0 ],
					"style" : "",
					"text" : "open in browser",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
					"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"id" : "obj-17",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 356.100037, 942.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 667.0, 677.5, 41.0, 41.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 356.100037, 997.0, 225.0, 35.0 ],
					"style" : "",
					"text" : ";\rmax launchbrowser http://localhost:4087"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 825.0, 497.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 780.0, 703.0, 58.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 570.0, 26.0, 58.0, 24.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[2]",
							"parameter_shortname" : "live.text[2]",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ]
						}

					}
,
					"text" : "README",
					"varname" : "live.text"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "bang", "int" ],
					"patching_rect" : [ 788.0, 792.0, 101.0, 22.0 ],
					"style" : "",
					"text" : "text README.txt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 674.0, 226.0, 1125.0, 884.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-3",
									"linecount" : 10,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 642.0, 327.0, 50.0, 143.0 ],
									"style" : "",
									"text" : "Users/Chris/Dropbox/Max/Projects/CueWeb/cuewebserver-macos"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 47.0, 170.999939, 98.0, 22.0 ],
									"style" : "",
									"text" : "absolutepath"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -19.599976, 247.199951, 59.0, 22.0 ],
									"style" : "",
									"text" : "tosymbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 19.299988, 214.0, 92.0, 22.0 ],
									"style" : "",
									"text" : "sprintf file:///%s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -19.599976, 278.400024, 131.0, 35.0 ],
									"style" : "",
									"text" : ";\rmax launchbrowser $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 66.0, 75.0, 100.0, 35.0 ],
									"style" : "",
									"text" : "sel windows macintosh"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 44.0, 100.0, 22.0 ],
									"style" : "",
									"text" : "r syst"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"linecount" : 4,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 130.0, 273.0, 50.0, 62.0 ],
									"style" : "",
									"text" : ";\rmax getsystem syst"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 137.0, 92.0, 22.0 ],
									"style" : "",
									"text" : "bootServer.bat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 463.200012, 199.999939, 59.0, 22.0 ],
									"style" : "",
									"text" : "tosymbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.400024, 247.199951, 59.0, 22.0 ],
									"style" : "",
									"text" : "tosymbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 349.299988, 214.0, 92.0, 22.0 ],
									"style" : "",
									"text" : "sprintf file:///%s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 363.700012, 164.0, 223.0, 22.0 ],
									"style" : "",
									"text" : "regexp \"Macintosh HD:/\" @substitute \" \""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 372.700012, 100.0, 125.0, 22.0 ],
									"style" : "",
									"text" : "cuewebserver-macos"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 372.700012, 130.0, 79.0, 22.0 ],
									"style" : "",
									"text" : "absolutepath"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.400024, 278.400024, 131.0, 35.0 ],
									"style" : "",
									"text" : ";\rmax launchbrowser $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-77",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 130.0, 218.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"order" : 0,
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"order" : 1,
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 281.799988, 1191.100098, 79.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p bootServer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 276.799988, 1109.100098, 46.0, 22.0 ],
					"style" : "",
					"text" : "sel 1 0"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-75",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 333.600037, 1054.100098, 270.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 710.800049, 557.800049, 86.0, 33.0 ],
					"style" : "",
					"text" : "Server",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
					"checkedcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"id" : "obj-73",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 276.799988, 1033.900024, 44.200012, 44.200012 ],
					"presentation" : 1,
					"presentation_rect" : [ 660.0, 552.200012, 44.200012, 44.200012 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 751.0, 1059.0, 157.0, 141.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 2.0, 63.0, 698.0, 33.0 ],
					"style" : "",
					"text" : "CueWeb uses Node.js to host a P5.js scetch that will run on most modern browsers.  In order for CueWeb to function Node.js must be installed on the host device running the server.  Devices will connect to the server at the given adress given below.",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 999.0, 1150.0, 400.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 512.0, 185.0, 40.0 ],
					"style" : "",
					"text" : "CueMaker",
					"textcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-10",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 556.0, 1116.0, 179.0, 74.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 110.0, 359.0, 40.0 ],
					"style" : "",
					"text" : "EventDesigner",
					"textcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 48.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 634.0, 964.0, 406.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, -1.0, 205.0, 60.0 ],
					"style" : "",
					"text" : "CueWeb",
					"textcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 24.0,
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 867.0, 964.0, 201.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.0, 26.0, 489.0, 33.0 ],
					"style" : "",
					"text" : "A browser based conductor",
					"textcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 174.5, 1142.0, 44.0, 22.0 ],
					"style" : "",
					"text" : "_EXIT"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 174.5, 1108.0, 65.0, 22.0 ],
					"style" : "",
					"text" : "closebang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 1299.0, 706.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 461.0, 324.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t 96"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 456.0, 289.0, 128.0, 22.0 ],
									"style" : "",
									"text" : "qmetro 500 @active 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 222.166656, 508.0, 40.0, 22.0 ],
									"style" : "",
									"text" : "t b b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 6.5, 435.0, 94.0, 22.0 ],
									"style" : "",
									"text" : "get ensemble"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 33.666656, 521.0, 93.0, 22.0 ],
									"style" : "",
									"text" : "route ensemble"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 44.166656, 474.0, 50.5, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "dict"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.5, 219.0, 73.0, 22.0 ],
									"style" : "",
									"text" : "fromsymbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 77.5, 179.0, 27.0, 22.0 ],
									"style" : "",
									"text" : "iter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 33.666656, 787.0, 162.0, 22.0 ],
									"style" : "",
									"text" : "regexp @substitute / @re \" \""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 8,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.666656, 749.0, 92.5, 22.0 ],
									"style" : "",
									"text" : "join 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 388.0, 280.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "- 96"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 388.0, 244.0, 40.0, 22.0 ],
									"style" : "",
									"text" : "atoi"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 325.5, 368.0, 56.0, 22.0 ],
									"style" : "",
									"text" : "value ep"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 77.5, 266.0, 43.0, 22.0 ],
									"style" : "",
									"text" : "unjoin"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 77.5, 303.0, 75.0, 22.0 ],
									"style" : "",
									"text" : "prepend get"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 100.0, 40.0, 22.0 ],
									"style" : "",
									"text" : "t b b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 184.166656, 474.0, 57.0, 22.0 ],
									"style" : "",
									"text" : "zl.slice 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 8,
									"numoutlets" : 8,
									"outlettype" : [ "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 222.166656, 587.0, 295.0, 22.0 ],
									"style" : "",
									"text" : "route frame tempo countIn duration seq lable textMsg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 222.166656, 551.0, 49.0, 22.0 ],
									"style" : "",
									"text" : "dict.iter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 325.5, 410.0, 44.0, 22.0 ],
									"style" : "",
									"text" : "get $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 99.166656, 390.0, 57.0, 22.0 ],
									"style" : "",
									"text" : "zl.slice 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 173.666656, 427.0, 50.5, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "dict"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 79.5, 343.0, 78.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "dict Modules"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-106",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-107",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 222.333313, 850.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 0,
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"order" : 1,
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 6 ],
									"source" : [ "obj-38", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 1 ],
									"source" : [ "obj-38", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 7 ],
									"source" : [ "obj-38", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 5 ],
									"source" : [ "obj-38", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 4 ],
									"source" : [ "obj-38", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 3 ],
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 2 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-48", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-52", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-56", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-59", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-59", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 27.0, 1045.0, 155.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p prepareNetworkMessage"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-99",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 84.0, 106.0, 1487.0, 1085.0 ],
						"bglocked" : 0,
						"openinpresentation" : 1,
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 440.0, 85.0, 38.0, 22.0 ],
									"style" : "",
									"text" : "defer"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 258.0, 831.0, 79.0, 22.0 ],
									"style" : "",
									"text" : "route symbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-197",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 569.0, 532.0, 74.0, 22.0 ],
									"style" : "",
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-194",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-189",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 73.75, 100.0, 30.0, 22.0 ],
													"style" : "",
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-188",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 218.75, 388.0, 53.0, 22.0 ],
													"style" : "",
													"text" : "zl.group"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-187",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 184.75, 349.0, 59.0, 22.0 ],
													"style" : "",
													"text" : "tosymbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-186",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 115.75, 109.0, 27.0, 22.0 ],
													"style" : "",
													"text" : "iter"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-185",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 184.75, 312.0, 29.5, 22.0 ],
													"style" : "",
													"text" : "join"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-184",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 185.75, 237.0, 31.0, 22.0 ],
													"style" : "",
													"text" : "- 96"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-183",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 165.5, 159.0, 43.0, 22.0 ],
													"style" : "",
													"text" : "unjoin"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-182",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 186.75, 205.0, 40.0, 22.0 ],
													"style" : "",
													"text" : "atoi"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-181",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.75, 121.0, 73.0, 22.0 ],
													"style" : "",
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-178",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 282.0, 95.0, 22.0 ],
													"style" : "",
													"text" : "join @triggers 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-169",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 391.416626, 278.0, 57.0, 22.0 ],
													"style" : "",
													"text" : "zl.slice 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-170",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 371.75, 193.0, 139.0, 22.0 ],
													"style" : "",
													"text" : "sprintf get %s::%s::lable"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-63",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 4,
													"outlettype" : [ "dictionary", "", "", "" ],
													"patching_rect" : [ 371.75, 228.0, 78.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 0,
														"parameter_enable" : 0
													}
,
													"style" : "",
													"text" : "dict Modules"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-191",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-192",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 85.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-193",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 478.223633, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-185", 1 ],
													"source" : [ "obj-169", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"source" : [ "obj-170", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-193", 0 ],
													"source" : [ "obj-178", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-183", 0 ],
													"source" : [ "obj-181", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-184", 0 ],
													"source" : [ "obj-182", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-170", 0 ],
													"order" : 0,
													"source" : [ "obj-183", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-182", 0 ],
													"source" : [ "obj-183", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-185", 0 ],
													"order" : 1,
													"source" : [ "obj-183", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-170", 1 ],
													"source" : [ "obj-184", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-187", 0 ],
													"source" : [ "obj-185", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-181", 0 ],
													"source" : [ "obj-186", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-188", 0 ],
													"source" : [ "obj-187", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-178", 1 ],
													"source" : [ "obj-188", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-186", 0 ],
													"source" : [ "obj-189", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-188", 0 ],
													"source" : [ "obj-189", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-178", 0 ],
													"source" : [ "obj-191", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-189", 0 ],
													"source" : [ "obj-192", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-169", 0 ],
													"source" : [ "obj-63", 1 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 129.5, 880.0, 91.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p formatForGui"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-190",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "dump", "", "clear" ],
									"patching_rect" : [ 100.0, 761.0, 83.0, 22.0 ],
									"style" : "",
									"text" : "t dump l clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-166",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 126.5, 907.0, 89.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}
,
									"style" : "",
									"text" : "coll cueListGui"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-165",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 788.25, 809.0, 27.0, 22.0 ],
									"style" : "",
									"text" : "iter"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-162",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1043.5, 699.0, 54.0, 38.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 373.75, 214.0, 93.0, 22.0 ],
									"style" : "",
									"text" : "Sync. Events"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-161",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1012.0, 729.0, 29.5, 22.0 ],
									"style" : "",
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"checkedcolor" : [ 1.0, 1.0, 0.0, 1.0 ],
									"hint" : "calculates the difference in countIns and syncronizes the start of each cue",
									"id" : "obj-160",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1012.0, 697.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 339.0, 212.0, 24.0, 24.0 ],
									"style" : "",
									"uncheckedcolor" : [ 1.0, 1.0, 1.0, 0.29 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-158",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 839.0, 784.0, 54.0, 22.0 ],
									"style" : "",
									"text" : "gate 2 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-157",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"rect" : [ 109.0, 131.0, 1371.0, 1217.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 730.0, 594.0, 50.0, 22.0 ],
													"style" : "",
													"text" : "5"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-3",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 273.166626, 1039.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-153",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 256.5, 914.332397, 29.5, 22.0 ],
													"style" : "",
													"text" : "join"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-150",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 273.166626, 952.332397, 81.0, 22.0 ],
													"style" : "",
													"text" : "prepend note"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-149",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 273.166626, 990.332397, 105.0, 22.0 ],
													"style" : "",
													"text" : "poly~ listDelay 32"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-143",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 267.0, 875.332397, 198.5, 22.0 ],
													"style" : "",
													"text" : "- 0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-142",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 255.0, 843.332397, 43.0, 22.0 ],
													"style" : "",
													"text" : "unjoin"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-141",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 253.5, 805.332397, 49.0, 22.0 ],
													"style" : "",
													"text" : "zl.iter 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-140",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 253.5, 769.332397, 53.0, 22.0 ],
													"style" : "",
													"text" : "zl.group"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-138",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 50.0, 92.332397, 40.0, 22.0 ],
													"style" : "",
													"text" : "t b b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-135",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "float", "int" ],
													"patching_rect" : [ 446.5, 810.332397, 73.0, 22.0 ],
													"style" : "",
													"text" : "minimum 0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-134",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 446.5, 781.332397, 53.0, 22.0 ],
													"style" : "",
													"text" : "zl.group"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-132",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 506.0, 638.332397, 29.5, 22.0 ],
													"style" : "",
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-131",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 446.5, 571.332397, 50.0, 22.0 ],
													"style" : "",
													"text" : "pow -1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-127",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 451.5, 606.332397, 55.0, 22.0 ],
													"style" : "",
													"text" : "* 60000."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-111",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 247.0, 134.332397, 29.5, 22.0 ],
													"style" : "",
													"text" : "t l l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-110",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 255.0, 715.332397, 29.5, 22.0 ],
													"style" : "",
													"text" : "join"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-109",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 408.166626, 624.332397, 24.0, 22.0 ],
													"style" : "",
													"text" : "t b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-108",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 573.5, 678.332397, 29.5, 22.0 ],
													"style" : "",
													"text" : "f"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-107",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 451.5, 697.332397, 29.5, 22.0 ],
													"style" : "",
													"text" : "f"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-106",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 584.0, 624.332397, 45.0, 22.0 ],
													"style" : "",
													"text" : "* 1000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-95",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 207.166626, 616.332397, 116.0, 22.0 ],
													"style" : "",
													"text" : "sel metro conductor"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-93",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 548.0, 486.332397, 50.0, 22.0 ],
													"style" : "",
													"text" : "get 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-91",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 165.0, 379.332397, 50.0, 49.0 ],
													"style" : "",
													"text" : "Watchmaker"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-85",
													"linecount" : 5,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 255.0, 461.332397, 50.0, 76.0 ],
													"style" : "",
													"text" : "\"1\" dictionary u534002417"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-81",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 200.0, 278.332397, 24.0, 22.0 ],
													"style" : "",
													"text" : "t b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-80",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 511.5, 355.332397, 29.5, 22.0 ],
													"style" : "",
													"text" : "i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-105",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 256.5, 168.332397, 73.0, 22.0 ],
													"style" : "",
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-104",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 256.5, 108.332397, 27.0, 22.0 ],
													"style" : "",
													"text" : "iter"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 511.5, 292.332397, 31.0, 22.0 ],
													"style" : "",
													"text" : "- 96"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-53",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 511.5, 256.332397, 40.0, 22.0 ],
													"style" : "",
													"text" : "atoi"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 263.5, 215.332397, 43.0, 22.0 ],
													"style" : "",
													"text" : "unjoin"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-57",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 263.5, 252.332397, 75.0, 22.0 ],
													"style" : "",
													"text" : "prepend get"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-58",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 370.166626, 423.332397, 57.0, 22.0 ],
													"style" : "",
													"text" : "zl.slice 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-59",
													"maxclass" : "newobj",
													"numinlets" : 7,
													"numoutlets" : 7,
													"outlettype" : [ "", "", "", "", "", "", "" ],
													"patching_rect" : [ 408.166626, 536.332397, 249.0, 22.0 ],
													"style" : "",
													"text" : "route frame tempo countIn duration seq lable"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 408.166626, 500.332397, 49.0, 22.0 ],
													"style" : "",
													"text" : "dict.iter"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 511.5, 396.332397, 44.0, 22.0 ],
													"style" : "",
													"text" : "get $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 285.166626, 339.332397, 57.0, 22.0 ],
													"style" : "",
													"text" : "zl.slice 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-63",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 4,
													"outlettype" : [ "dictionary", "", "", "" ],
													"patching_rect" : [ 359.666626, 376.332397, 50.5, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 0,
														"parameter_enable" : 0
													}
,
													"style" : "",
													"text" : "dict"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-64",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 4,
													"outlettype" : [ "dictionary", "", "", "" ],
													"patching_rect" : [ 265.5, 292.332397, 78.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 0,
														"parameter_enable" : 0
													}
,
													"style" : "",
													"text" : "dict Modules"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-156",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-111", 0 ],
													"source" : [ "obj-104", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-105", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-108", 1 ],
													"source" : [ "obj-106", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-110", 1 ],
													"order" : 1,
													"source" : [ "obj-107", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-134", 0 ],
													"order" : 0,
													"source" : [ "obj-107", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-110", 1 ],
													"order" : 1,
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-134", 0 ],
													"order" : 0,
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-108", 0 ],
													"source" : [ "obj-109", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-140", 0 ],
													"source" : [ "obj-110", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-105", 0 ],
													"source" : [ "obj-111", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-110", 0 ],
													"source" : [ "obj-111", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-132", 0 ],
													"source" : [ "obj-127", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-127", 0 ],
													"source" : [ "obj-131", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-107", 1 ],
													"source" : [ "obj-132", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-135", 0 ],
													"source" : [ "obj-134", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-143", 1 ],
													"source" : [ "obj-135", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-104", 0 ],
													"source" : [ "obj-138", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-134", 0 ],
													"source" : [ "obj-138", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-140", 0 ],
													"source" : [ "obj-138", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-141", 0 ],
													"source" : [ "obj-140", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-142", 0 ],
													"source" : [ "obj-141", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-143", 0 ],
													"source" : [ "obj-142", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-153", 0 ],
													"source" : [ "obj-142", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-153", 1 ],
													"source" : [ "obj-143", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-149", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-149", 0 ],
													"source" : [ "obj-150", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-150", 0 ],
													"source" : [ "obj-153", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-138", 0 ],
													"source" : [ "obj-156", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"order" : 1,
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-93", 1 ],
													"order" : 0,
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 1 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"source" : [ "obj-53", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-53", 0 ],
													"source" : [ "obj-55", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 0 ],
													"source" : [ "obj-57", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"source" : [ "obj-58", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-106", 0 ],
													"order" : 1,
													"source" : [ "obj-59", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-131", 0 ],
													"source" : [ "obj-59", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-132", 1 ],
													"order" : 2,
													"source" : [ "obj-59", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 1 ],
													"order" : 0,
													"source" : [ "obj-59", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-95", 0 ],
													"source" : [ "obj-59", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-59", 0 ],
													"source" : [ "obj-61", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"source" : [ "obj-62", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-81", 0 ],
													"order" : 1,
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-91", 1 ],
													"order" : 0,
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"order" : 0,
													"source" : [ "obj-63", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-85", 1 ],
													"order" : 1,
													"source" : [ "obj-63", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"source" : [ "obj-64", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-80", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 0 ],
													"source" : [ "obj-81", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-107", 0 ],
													"source" : [ "obj-95", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-107", 0 ],
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 0 ],
													"source" : [ "obj-95", 2 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 865.0, 823.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p syncStart",
									"varname" : "syncStart"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 848.0, 45.0, 170.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 240.5, 216.0, 89.0, 22.0 ],
									"style" : "",
									"text" : "Cell width"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 0.42 ],
									"id" : "obj-38",
									"knobcolor" : [ 1.0, 1.0, 0.0, 1.0 ],
									"maxclass" : "slider",
									"min" : 50.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 574.75, 40.0, 269.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 6.0, 216.0, 224.5, 20.0 ],
									"size" : 200.0,
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 574.75, 69.0, 30.0, 22.0 ],
									"style" : "",
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 580.0, 100.0, 71.0, 22.0 ],
									"style" : "",
									"text" : "colwidth $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 720.0, 85.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 715.5, 113.170044, 84.0, 22.0 ],
									"style" : "",
									"text" : "col 0 width 20"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 356.5, 637.0, 102.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 487.5, 178.170044, 98.0, 22.0 ],
									"style" : "",
									"text" : "View as Text"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-11",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 323.75, 637.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 455.75, 178.170044, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 254.0, 657.0, 37.0, 22.0 ],
									"style" : "",
									"text" : "open"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 0.998826, 0.0, 1.0 ],
									"fontsize" : 30.0,
									"id" : "obj-89",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 413.75, 786.710938, 186.0, 74.0 ],
									"presentation" : 1,
									"presentation_rect" : [ -1.0, 240.170044, 609.0, 40.0 ],
									"style" : "",
									"text" : "TransientDominion c"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 885.0, 504.5, 90.0, 22.0 ],
									"style" : "",
									"text" : "speedThin 250"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1049.0, 149.540894, 34.0, 22.0 ],
									"style" : "",
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 727.0, 499.5, 90.0, 22.0 ],
									"style" : "",
									"text" : "speedThin 250"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-40",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 936.0, 97.710938, 136.0, 38.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 182.75, 346.170044, 217.0, 22.0 ],
									"style" : "",
									"text" : "Enable keyboard commants",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"checkedcolor" : [ 1.0, 1.0, 0.0, 1.0 ],
									"id" : "obj-39",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 908.5, 117.540894, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 154.0, 346.170044, 24.0, 24.0 ],
									"style" : "",
									"uncheckedcolor" : [ 1.0, 1.0, 1.0, 0.29 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 1064.0, 117.540894, 50.5, 22.0 ],
									"style" : "",
									"text" : "key"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 1049.0, 183.251831, 59.0, 22.0 ],
									"style" : "",
									"text" : "sel 32 13"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 586.0, 683.0, 29.5, 22.0 ],
									"style" : "",
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "" ],
									"patching_rect" : [ 885.0, 638.0, 71.0, 22.0 ],
									"style" : "",
									"text" : "unpack i i s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 885.0, 609.710938, 84.0, 22.0 ],
									"style" : "",
									"text" : "value position"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-27",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 918.75, 534.710938, 116.0, 38.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 182.75, 306.459106, 199.0, 22.0 ],
									"style" : "",
									"text" : "Recall Selected Event (return)",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-28",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 885.0, 534.710938, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 154.0, 313.459106, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-26",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 727.0, 852.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 727.0, 740.0, 79.0, 22.0 ],
									"style" : "",
									"text" : "route symbol"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-22",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 761.75, 540.0, 116.0, 69.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 182.75, 284.170044, 305.75, 22.0 ],
									"style" : "",
									"text" : "Recall Selected Cue and Advance (spacebar)",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "" ],
									"patching_rect" : [ 727.0, 631.0, 71.0, 22.0 ],
									"style" : "",
									"text" : "unpack i i s"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-20",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 727.0, 540.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 154.0, 284.170044, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 727.0, 602.710938, 84.0, 22.0 ],
									"style" : "",
									"text" : "value position"
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 1,
										"data" : [ 											{
												"key" : 0,
												"value" : [ "TransientDominion c", "Watchmaker a" ]
											}
 ]
									}
,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 727.0, 689.710938, 70.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}
,
									"style" : "",
									"text" : "coll cueList"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 64.0, 560.710938, 115.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 37.75, 313.459106, 111.0, 22.0 ],
									"style" : "",
									"text" : "Open Cue List",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-16",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 35.0, 560.710938, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 313.459106, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 76.0, 492.0, 116.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 37.75, 284.170044, 111.0, 22.0 ],
									"style" : "",
									"text" : "Save Cue List",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-14",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 47.0, 492.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 6.0, 282.170044, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 35.0, 591.0, 35.0, 22.0 ],
									"style" : "",
									"text" : "read"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 35.0, 534.0, 36.0, 22.0 ],
									"style" : "",
									"text" : "write"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 378.5, 461.710938, 114.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 37.75, 346.170044, 109.0, 22.0 ],
									"style" : "",
									"text" : "Clear Cue List",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-7",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 345.75, 461.710938, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 346.170044, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 345.75, 492.0, 37.0, 22.0 ],
									"style" : "",
									"text" : "clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 848.0, 353.0, 29.5, 22.0 ],
									"style" : "",
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 848.0, 404.170044, 53.0, 22.0 ],
									"style" : "",
									"text" : "set 0 $1"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-97",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 451.75, 375.710938, 116.0, 38.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 374.5, 141.710938, 203.0, 22.0 ],
									"style" : "",
									"text" : "Remove Selected Event"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 210.0, 430.710938, 29.5, 22.0 ],
									"style" : "",
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"rect" : [ 1539.0, 423.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 107.0, 200.0, 79.0, 22.0 ],
													"style" : "",
													"text" : "route symbol"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-9",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.0, 24.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 48.0, 69.0, 71.0, 22.0 ],
													"style" : "",
													"text" : "unpack s i i"
												}

											}
, 											{
												"box" : 												{
													"coll_data" : 													{
														"count" : 1,
														"data" : [ 															{
																"key" : 0,
																"value" : [ "TransientDominion c", "Watchmaker a" ]
															}
 ]
													}
,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 96.5, 344.0, 70.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1
													}
,
													"style" : "",
													"text" : "coll cueList"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 74.0, 124.0, 29.5, 22.0 ],
													"style" : "",
													"text" : "t i i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 96.5, 297.0, 29.5, 22.0 ],
													"style" : "",
													"text" : "join"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 107.0, 229.0, 42.0, 22.0 ],
													"style" : "",
													"text" : "zl.thin"
												}

											}
, 											{
												"box" : 												{
													"coll_data" : 													{
														"count" : 1,
														"data" : [ 															{
																"key" : 0,
																"value" : [ "TransientDominion c", "Watchmaker a" ]
															}
 ]
													}
,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 107.0, 172.0, 70.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1
													}
,
													"style" : "",
													"text" : "coll cueList"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-4", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-5", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-8", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 178.0, 585.5, 109.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p deleterepetitions"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-75",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 419.0, 375.710938, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 339.0, 141.710938, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 312.25, 375.710938, 84.0, 22.0 ],
									"style" : "",
									"text" : "value position"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"rect" : [ 84.0, 106.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 37.0, 120.0, 106.0, 22.0 ],
													"style" : "",
													"text" : "if $i1 != 0 then $i2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 177.75, 353.0, 50.0, 22.0 ],
													"style" : "",
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 87.75, 166.0, 29.5, 22.0 ],
													"style" : "",
													"text" : "t i i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 73.25, 373.0, 29.5, 22.0 ],
													"style" : "",
													"text" : "join"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 83.75, 327.0, 45.0, 22.0 ],
													"style" : "",
													"text" : "zl.filter"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 23.75, 242.0, 79.0, 22.0 ],
													"style" : "",
													"text" : "route symbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 84.75, 277.0, 225.0, 22.0 ],
													"style" : "",
													"text" : "symbol \"Cosmos a\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "int", "" ],
													"patching_rect" : [ 67.0, 67.0, 71.0, 22.0 ],
													"style" : "",
													"text" : "unpack i i s"
												}

											}
, 											{
												"box" : 												{
													"coll_data" : 													{
														"count" : 1,
														"data" : [ 															{
																"key" : 0,
																"value" : [ "TransientDominion c", "Watchmaker a" ]
															}
 ]
													}
,
													"id" : "obj-78",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 72.75, 206.0, 70.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1
													}
,
													"style" : "",
													"text" : "coll cueList"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 67.0, 22.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-42",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 72.75, 414.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-13", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 1 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 1 ],
													"source" : [ "obj-14", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-78", 0 ],
													"source" : [ "obj-17", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 1 ],
													"source" : [ "obj-5", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 1 ],
													"source" : [ "obj-5", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 1 ],
													"order" : 0,
													"source" : [ "obj-78", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"order" : 1,
													"source" : [ "obj-78", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 312.25, 410.710938, 91.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p removeEvent"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-69",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 108.75, 168.710938, 117.0, 38.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 374.5, 71.710938, 209.0, 22.0 ],
									"style" : "",
									"text" : "Insert cue before selection"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 76.0, 207.251831, 34.0, 22.0 ],
									"style" : "",
									"text" : "t b 3"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-68",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 76.0, 168.710938, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 339.0, 71.710938, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 254.0, 293.170044, 87.0, 22.0 ],
									"style" : "",
									"text" : "prepend insert"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-47",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 112.5, 398.710938, 117.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 374.5, 5.710938, 117.0, 22.0 ],
									"style" : "",
									"text" : "Add as new cue"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"rect" : [ 84.0, 106.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 28.0, 29.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 224.0, 51.0, 22.0 ],
													"style" : "",
													"text" : "pack i s"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-33",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 67.0, 157.0, 30.0, 22.0 ],
													"style" : "",
													"text" : "t i b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 149.0, 130.0, 111.0, 22.0 ],
													"style" : "",
													"text" : "value thisSelection"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 67.0, 275.0, 41.0, 22.0 ],
													"style" : "",
													"text" : "$1 $2"
												}

											}
, 											{
												"box" : 												{
													"coll_data" : 													{
														"count" : 1,
														"data" : [ 															{
																"key" : 0,
																"value" : [ "TransientDominion c", "Watchmaker a" ]
															}
 ]
													}
,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 67.0, 130.0, 70.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1
													}
,
													"style" : "",
													"text" : "coll cueList"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 67.0, 100.0, 50.0, 22.0 ],
													"style" : "",
													"text" : "length"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-42",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 67.0, 357.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 1 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-33", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 76.0, 430.710938, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p addtoend"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-41",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 76.0, 398.710938, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 339.0, 5.710938, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 440.0, 58.710938, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-130",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 744.75, 316.170044, 114.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 374.5, 178.170044, 114.0, 22.0 ],
									"style" : "",
									"text" : "Delete Cue"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-129",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 673.0, 363.0, 29.5, 22.0 ],
									"style" : "",
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-128",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 673.0, 398.710938, 91.0, 22.0 ],
									"style" : "",
									"text" : "prepend delete"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-125",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 715.5, 316.170044, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 339.0, 178.170044, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-124",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.5, 120.710938, 139.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 374.5, 40.170044, 139.0, 22.0 ],
									"style" : "",
									"text" : "Add to selected cue"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-122",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 230.5, 181.710938, 34.0, 22.0 ],
									"style" : "",
									"text" : "t b 2"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-123",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 230.5, 143.170044, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 339.0, 40.170044, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-121",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 195.0, 331.710938, 92.0, 22.0 ],
									"style" : "",
									"text" : "prepend merge"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-120",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 271.0, 181.710938, 34.0, 22.0 ],
									"style" : "",
									"text" : "t b 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-119",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 160.0, 293.170044, 54.0, 22.0 ],
									"style" : "",
									"text" : "gate 3 1"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-117",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 297.0, 143.170044, 117.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 374.5, 106.170044, 117.0, 22.0 ],
									"style" : "",
									"text" : "Replace cue"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-115",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 271.0, 143.170044, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 339.0, 106.170044, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 271.0, 211.710938, 111.0, 22.0 ],
									"style" : "",
									"text" : "value thisSelection"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-94",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 195.0, 247.710938, 95.0, 22.0 ],
									"style" : "",
									"text" : "join @triggers 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "" ],
									"patching_rect" : [ 440.0, 322.170044, 71.0, 22.0 ],
									"style" : "",
									"text" : "unpack i i s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 440.0, 113.170044, 95.0, 22.0 ],
									"style" : "",
									"text" : "refer cueListGui"
								}

							}
, 							{
								"box" : 								{
									"automouse" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"coldef" : [ [ 0, 20, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, -1, -1, -1 ] ],
									"cols" : 1,
									"colwidth" : 143,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"gridlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"hcellcolor" : [ 1.0, 1.0, 0.0, 1.0 ],
									"headercolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-84",
									"maxclass" : "jit.cellblock",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "list", "", "", "" ],
									"patching_rect" : [ 440.0, 143.170044, 299.5, 172.0 ],
									"presentation" : 1,
									"presentation_rect" : [ -1.0, -0.829956, 327.5, 213.0 ],
									"rowhead" : 1,
									"rows" : 1
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 1,
										"data" : [ 											{
												"key" : 0,
												"value" : [ "TransientDominion c", "Watchmaker a" ]
											}
 ]
									}
,
									"id" : "obj-78",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 112.5, 786.710938, 70.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}
,
									"style" : "",
									"text" : "coll cueList"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.701961, 0.415686, 0.886275, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-163",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1179.0, 273.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ -1.0, -16.829956, 609.0, 293.0 ],
									"proportion" : 0.39,
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"id" : "obj-164",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1129.0, 353.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ -1.0, 238.170044, 609.0, 146.0 ],
									"proportion" : 0.39,
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 1 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-120", 0 ],
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-121", 0 ],
									"source" : [ "obj-119", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-119", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-120", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 0 ],
									"source" : [ "obj-120", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-121", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-122", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 0 ],
									"source" : [ "obj-122", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-122", 0 ],
									"source" : [ "obj-123", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 0 ],
									"source" : [ "obj-125", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-128", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"order" : 1,
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 0,
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-157", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-157", 0 ],
									"source" : [ "obj-158", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-165", 0 ],
									"source" : [ "obj-158", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-161", 0 ],
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-158", 0 ],
									"source" : [ "obj-161", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-165", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-166", 0 ],
									"source" : [ "obj-190", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-190", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-190", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-166", 0 ],
									"source" : [ "obj-194", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"order" : 0,
									"source" : [ "obj-21", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"order" : 1,
									"source" : [ "obj-21", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-158", 1 ],
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-29", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-194", 1 ],
									"source" : [ "obj-31", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-194", 1 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-34", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 1 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-37", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 0 ],
									"source" : [ "obj-67", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-194", 0 ],
									"source" : [ "obj-78", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-83", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"order" : 1,
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"order" : 0,
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 1 ],
									"order" : 0,
									"source" : [ "obj-90", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-197", 0 ],
									"source" : [ "obj-90", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"order" : 1,
									"source" : [ "obj-90", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 1 ],
									"source" : [ "obj-94", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 32.0, 439.0, 625.0, 391.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 554.0, 625.0, 391.0 ],
					"varname" : "bpatcher[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 670.0, 467.0, 60.0, 22.0 ],
					"style" : "",
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 27.0, 1146.0, 137.0, 22.0 ],
					"style" : "",
					"text" : "udpsend localhost 8087"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 84.0, 106.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "reload", "" ],
									"patching_rect" : [ 223.0, 346.0, 57.0, 22.0 ],
									"style" : "",
									"text" : "t reload l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 213.0, 385.0, 33.0, 22.0 ],
									"style" : "",
									"text" : "s url"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 213.0, 303.0, 143.0, 22.0 ],
									"style" : "",
									"text" : "sprintf url http://%s:4087/"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 57.0, 248.0, 197.0, 22.0 ],
									"style" : "",
									"text" : "sprintf socket server is at: %s:4087"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 353.459106, 74.0, 22.0 ],
									"style" : "",
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 309.459106, 59.0, 22.0 ],
									"style" : "",
									"text" : "tosymbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 57.0, 196.459106, 81.0, 22.0 ],
									"style" : "",
									"text" : "route append"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 167.0, 206.459106, 110.0, 22.0 ],
									"style" : "",
									"text" : "routepass en1 en0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 161.0, 153.459106, 81.0, 22.0 ],
									"style" : "",
									"text" : "route append"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 98.0, 108.459106, 77.0, 22.0 ],
									"style" : "",
									"text" : "mxj net.local"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-20",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 98.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-21",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 402.459106, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 1,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 670.0, 499.0, 76.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p getLocalIp"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 670.0, 555.459106, 290.0, 60.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 710.800049, 607.0, 247.0, 60.0 ],
					"style" : "",
					"text" : "socket server is at: 192.168.1.151:4087",
					"textcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-35",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 571.0, 454.0, 2065.0, 1287.0 ],
						"editing_bgcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"bglocked" : 0,
						"openinpresentation" : 1,
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
						"boxes" : [ 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-44",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 1221.0, 348.0, 22.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 660.5, 303.5, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 18.0,
									"id" : "obj-45",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1309.0, 397.0, 82.0, 47.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 701.0, 303.5, 113.0, 27.0 ],
									"style" : "",
									"text" : "Direct Edit",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1238.0, 421.0, 30.0, 22.0 ],
									"style" : "",
									"text" : "edit"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 159.5, 492.0, 145.0, 22.0 ],
									"style" : "",
									"text" : "route (NewModuleName)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-93",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 285.0, 166.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 278.0, 214.0, 167.0, 22.0 ],
									"style" : "",
									"text" : "set (NewModuleName), bang"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-60",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 944.5, 1090.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 488.770508, 306.5, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 18.0,
									"id" : "obj-61",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 985.0, 1090.0, 119.0, 27.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 520.270508, 303.5, 113.0, 27.0 ],
									"style" : "",
									"text" : "run selected",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-56",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1152.5, 1140.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-112",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1152.5, 1103.170044, 111.0, 22.0 ],
									"style" : "",
									"text" : "value thisSelection"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1152.5, 1077.710938, 59.0, 22.0 ],
									"style" : "",
									"text" : "tosymbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 1412.5, 306.5, 30.0, 22.0 ],
									"style" : "",
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"data" : 									{
										"TransientDominion" : 										{
											"1" : 											{
												"frame" : "conductor",
												"countIn" : 2,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=1 5 5 4 4 4 3 5 5 4 4 4 3 4",
												"lable" : "A",
												"textMsg" : "Rehersal_A",
												"TransientDominion" : ""
											}
,
											"ensemble" : "TransientDominion",
											"2" : 											{
												"frame" : "conductor",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=14 5 4 4 4 5 3 3 4",
												"lable" : "B",
												"textMsg" : "Rehersal_B"
											}
,
											"3" : 											{
												"frame" : "conductor",
												"countIn" : 3,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=22 3 3 4",
												"lable" : "C",
												"textMsg" : "Rehersal_C"
											}
,
											"4" : 											{
												"frame" : "conductor",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=25 5 4 4 4 4 5 3 5 3 4 4",
												"lable" : "D",
												"textMsg" : "Rehersal_D"
											}
,
											"5" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=35 4 4 5 4",
												"lable" : "E",
												"textMsg" : "Rehersal_E"
											}
,
											"6" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=39 4 5 4 4 5 4",
												"lable" : "F",
												"textMsg" : "Rehersal_F"
											}
,
											"7" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=45 4 4 3 5 5 4 4 4 3 5 4",
												"lable" : "G",
												"textMsg" : "Rehersal_G"
											}
,
											"8" : 											{
												"frame" : "text",
												"countIn" : "0",
												"duration" : 0,
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "ANext",
												"textMsg" : "A"
											}

										}
,
										"IndelibleStamp" : 										{
											"1" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : 0,
												"timeCode" : "seconds",
												"tempo" : 72,
												"seq" : "M=1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4",
												"lable" : "A",
												"textMsg" : "Rehersal_A"
											}
,
											"ensemble" : "IndelibleStamp",
											"2" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : 0,
												"timeCode" : "seconds",
												"tempo" : 72,
												"seq" : "M=36 Ls 4 Lei",
												"lable" : "bVamp",
												"textMsg" : "Rehersal_B"
											}
,
											"3" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 72,
												"seq" : "M=42 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4",
												"lable" : "c"
											}
,
											"4" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 72,
												"seq" : "M=1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4  Ls 4 4 4 4 4 4 Lei",
												"lable" : "a+bVamp"
											}
,
											"5" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 72,
												"seq" : "M=36 Ls 4 4 4 4 4 4 Le1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4",
												"lable" : "b+c"
											}
,
											"6" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "M=1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4  Ls 4 4 4 4 4 4 Le1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4",
												"lable" : "a+b+c"
											}
,
											"7" : 											{
												"frame" : "blink",
												"countIn" : 0,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "cuttoff"
											}

										}
,
										"Unweaving" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "a"
											}
,
											"ensemble" : "Unweaving",
											"2" : 											{
												"frame" : "metro",
												"countIn" : 3,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 108,
												"seq" : "",
												"lable" : "b"
											}

										}
,
										"Watchmaker" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "CountIn"
											}
,
											"ensemble" : "Watchmaker",
											"2" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "CuttOff"
											}

										}
,
										"CelestialTeapot" : 										{
											"1" : 											{
												"frame" : "metro",
												"countIn" : 6,
												"duration" : 0,
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "a"
											}
,
											"ensemble" : "CelestialTeapot",
											"2" : 											{
												"frame" : "metro",
												"countIn" : 3,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "b"
											}
,
											"3" : 											{
												"frame" : "metro",
												"countIn" : 2,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "c"
											}
,
											"4" : 											{
												"frame" : "metro",
												"countIn" : 6,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "d"
											}
,
											"5" : 											{
												"frame" : "metro",
												"countIn" : 6,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "e"
											}
,
											"6" : 											{
												"frame" : "metro",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "f"
											}

										}
,
										"Contagion" : 										{
											"1" : 											{
												"frame" : "metro",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 332,
												"seq" : "",
												"lable" : "a"
											}
,
											"ensemble" : "Contagion",
											"2" : 											{
												"frame" : "metro",
												"countIn" : 7,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 332,
												"seq" : "",
												"lable" : "b"
											}
,
											"3" : 											{
												"frame" : "metro",
												"countIn" : 6,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 332,
												"seq" : "",
												"lable" : "c"
											}
,
											"4" : 											{
												"frame" : "metro",
												"countIn" : 6,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 332,
												"seq" : "",
												"lable" : "d"
											}
,
											"5" : 											{
												"frame" : "metro",
												"countIn" : 7,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 332,
												"seq" : "",
												"lable" : "e"
											}

										}
,
										"Permanence" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Agitated"
											}
,
											"ensemble" : "Permanence",
											"2" : 											{
												"frame" : "timer",
												"countIn" : "0",
												"duration" : 5,
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Ethereal"
											}
,
											"3" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Desultory"
											}
,
											"4" : 											{
												"frame" : "blank",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Vertiginous"
											}

										}
,
										"Shadows" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "start"
											}
,
											"ensemble" : "Shadows",
											"2" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "stop"
											}

										}
,
										"Tyrannei" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A"
											}
,
											"2" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B"
											}
,
											"ensemble" : "Tyrannei",
											"3" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "C"
											}
,
											"4" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "D"
											}
,
											"5" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "E"
											}
,
											"6" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "F"
											}

										}
,
										"Pascal" : 										{
											"1" : 											{
												"frame" : "metro",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 138,
												"seq" : "",
												"lable" : "A"
											}
,
											"ensemble" : "Pascal",
											"2" : 											{
												"frame" : "metro",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 138,
												"seq" : "",
												"lable" : "B"
											}
,
											"3" : 											{
												"frame" : "timer",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 138,
												"seq" : "",
												"lable" : "C"
											}
,
											"4" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Cuttoff"
											}

										}
,
										"FleetingSym" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A-1"
											}
,
											"ensemble" : "FleetingSym",
											"2" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A-2"
											}
,
											"3" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A-3"
											}
,
											"4" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A-4"
											}
,
											"5" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A-5"
											}
,
											"6" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B-1"
											}
,
											"7" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B-2"
											}
,
											"8" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B-3"
											}
,
											"9" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B-4"
											}
,
											"10" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B-5"
											}

										}
,
										"GloriousAccidents" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A"
											}
,
											"ensemble" : "GloriousAccidents",
											"2" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B"
											}
,
											"3" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "C"
											}
,
											"4" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "D"
											}
,
											"5" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "E"
											}
,
											"6" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "F"
											}
,
											"7" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "G"
											}
,
											"8" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Cuttoff"
											}

										}
,
										"Ignorance" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A"
											}
,
											"ensemble" : "Ignorance",
											"2" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B"
											}
,
											"3" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "C"
											}
,
											"4" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "D"
											}

										}
,
										"SplendidTorch" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Start",
												"textMsg" : "Splendid_Torch"
											}
,
											"ensemble" : "SplendidTorch",
											"2" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Stop"
											}

										}
,
										"Sçay-je" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Start"
											}
,
											"ensemble" : "Sçayje",
											"2" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Stop"
											}

										}
,
										"Geometry" : 										{
											"1" : 											{
												"frame" : "metro",
												"countIn" : "0",
												"duration" : 4,
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Start"
											}
,
											"ensemble" : "",
											"2" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Stop"
											}

										}

									}
,
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 1412.5, 348.0, 78.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "dict Modules"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1309.0, 362.0, 116.0, 22.0 ],
									"style" : "",
									"text" : "s resetModulePlace"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1412.5, 279.5, 107.0, 22.0 ],
									"style" : "",
									"text" : "sprintf remove %s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1412.5, 243.5, 101.0, 22.0 ],
									"style" : "",
									"text" : "value thisModule"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-34",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 888.0, 125.5, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1.0, 241.5, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 18.0,
									"id" : "obj-36",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 929.0, 125.5, 82.0, 47.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 34.5, 241.5, 174.0, 27.0 ],
									"style" : "",
									"text" : "remove module",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1068.0, 428.5, 72.0, 22.0 ],
									"style" : "",
									"text" : "s refreshEp"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "bang" ],
									"patching_rect" : [ 1093.0, 330.0, 40.0, 22.0 ],
									"style" : "",
									"text" : "t b l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1100.5, 285.5, 130.0, 22.0 ],
									"style" : "",
									"text" : "sprintf remove %s::%s"
								}

							}
, 							{
								"box" : 								{
									"data" : 									{
										"TransientDominion" : 										{
											"1" : 											{
												"frame" : "conductor",
												"countIn" : 2,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=1 5 5 4 4 4 3 5 5 4 4 4 3 4",
												"lable" : "A",
												"textMsg" : "Rehersal_A",
												"TransientDominion" : ""
											}
,
											"ensemble" : "TransientDominion",
											"2" : 											{
												"frame" : "conductor",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=14 5 4 4 4 5 3 3 4",
												"lable" : "B",
												"textMsg" : "Rehersal_B"
											}
,
											"3" : 											{
												"frame" : "conductor",
												"countIn" : 3,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=22 3 3 4",
												"lable" : "C",
												"textMsg" : "Rehersal_C"
											}
,
											"4" : 											{
												"frame" : "conductor",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=25 5 4 4 4 4 5 3 5 3 4 4",
												"lable" : "D",
												"textMsg" : "Rehersal_D"
											}
,
											"5" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=35 4 4 5 4",
												"lable" : "E",
												"textMsg" : "Rehersal_E"
											}
,
											"6" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=39 4 5 4 4 5 4",
												"lable" : "F",
												"textMsg" : "Rehersal_F"
											}
,
											"7" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=45 4 4 3 5 5 4 4 4 3 5 4",
												"lable" : "G",
												"textMsg" : "Rehersal_G"
											}
,
											"8" : 											{
												"frame" : "text",
												"countIn" : "0",
												"duration" : 0,
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "ANext",
												"textMsg" : "A"
											}

										}
,
										"IndelibleStamp" : 										{
											"1" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : 0,
												"timeCode" : "seconds",
												"tempo" : 72,
												"seq" : "M=1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4",
												"lable" : "A",
												"textMsg" : "Rehersal_A"
											}
,
											"ensemble" : "IndelibleStamp",
											"2" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : 0,
												"timeCode" : "seconds",
												"tempo" : 72,
												"seq" : "M=36 Ls 4 Lei",
												"lable" : "bVamp",
												"textMsg" : "Rehersal_B"
											}
,
											"3" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 72,
												"seq" : "M=42 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4",
												"lable" : "c"
											}
,
											"4" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 72,
												"seq" : "M=1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4  Ls 4 4 4 4 4 4 Lei",
												"lable" : "a+bVamp"
											}
,
											"5" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 72,
												"seq" : "M=36 Ls 4 4 4 4 4 4 Le1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4",
												"lable" : "b+c"
											}
,
											"6" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "M=1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4  Ls 4 4 4 4 4 4 Le1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4",
												"lable" : "a+b+c"
											}
,
											"7" : 											{
												"frame" : "blink",
												"countIn" : 0,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "cuttoff"
											}

										}
,
										"Unweaving" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "a"
											}
,
											"ensemble" : "Unweaving",
											"2" : 											{
												"frame" : "metro",
												"countIn" : 3,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 108,
												"seq" : "",
												"lable" : "b"
											}

										}
,
										"Watchmaker" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "CountIn"
											}
,
											"ensemble" : "Watchmaker",
											"2" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "CuttOff"
											}

										}
,
										"CelestialTeapot" : 										{
											"1" : 											{
												"frame" : "metro",
												"countIn" : 6,
												"duration" : 0,
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "a"
											}
,
											"ensemble" : "CelestialTeapot",
											"2" : 											{
												"frame" : "metro",
												"countIn" : 3,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "b"
											}
,
											"3" : 											{
												"frame" : "metro",
												"countIn" : 2,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "c"
											}
,
											"4" : 											{
												"frame" : "metro",
												"countIn" : 6,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "d"
											}
,
											"5" : 											{
												"frame" : "metro",
												"countIn" : 6,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "e"
											}
,
											"6" : 											{
												"frame" : "metro",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "f"
											}

										}
,
										"Contagion" : 										{
											"1" : 											{
												"frame" : "metro",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 332,
												"seq" : "",
												"lable" : "a"
											}
,
											"ensemble" : "Contagion",
											"2" : 											{
												"frame" : "metro",
												"countIn" : 7,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 332,
												"seq" : "",
												"lable" : "b"
											}
,
											"3" : 											{
												"frame" : "metro",
												"countIn" : 6,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 332,
												"seq" : "",
												"lable" : "c"
											}
,
											"4" : 											{
												"frame" : "metro",
												"countIn" : 6,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 332,
												"seq" : "",
												"lable" : "d"
											}
,
											"5" : 											{
												"frame" : "metro",
												"countIn" : 7,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 332,
												"seq" : "",
												"lable" : "e"
											}

										}
,
										"Permanence" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Agitated"
											}
,
											"ensemble" : "Permanence",
											"2" : 											{
												"frame" : "timer",
												"countIn" : "0",
												"duration" : 5,
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Ethereal"
											}
,
											"3" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Desultory"
											}
,
											"4" : 											{
												"frame" : "blank",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Vertiginous"
											}

										}
,
										"Shadows" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "start"
											}
,
											"ensemble" : "Shadows",
											"2" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "stop"
											}

										}
,
										"Tyrannei" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A"
											}
,
											"2" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B"
											}
,
											"ensemble" : "Tyrannei",
											"3" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "C"
											}
,
											"4" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "D"
											}
,
											"5" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "E"
											}
,
											"6" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "F"
											}

										}
,
										"Pascal" : 										{
											"1" : 											{
												"frame" : "metro",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 138,
												"seq" : "",
												"lable" : "A"
											}
,
											"ensemble" : "Pascal",
											"2" : 											{
												"frame" : "metro",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 138,
												"seq" : "",
												"lable" : "B"
											}
,
											"3" : 											{
												"frame" : "timer",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 138,
												"seq" : "",
												"lable" : "C"
											}
,
											"4" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Cuttoff"
											}

										}
,
										"FleetingSym" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A-1"
											}
,
											"ensemble" : "FleetingSym",
											"2" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A-2"
											}
,
											"3" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A-3"
											}
,
											"4" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A-4"
											}
,
											"5" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A-5"
											}
,
											"6" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B-1"
											}
,
											"7" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B-2"
											}
,
											"8" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B-3"
											}
,
											"9" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B-4"
											}
,
											"10" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B-5"
											}

										}
,
										"GloriousAccidents" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A"
											}
,
											"ensemble" : "GloriousAccidents",
											"2" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B"
											}
,
											"3" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "C"
											}
,
											"4" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "D"
											}
,
											"5" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "E"
											}
,
											"6" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "F"
											}
,
											"7" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "G"
											}
,
											"8" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Cuttoff"
											}

										}
,
										"Ignorance" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A"
											}
,
											"ensemble" : "Ignorance",
											"2" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B"
											}
,
											"3" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "C"
											}
,
											"4" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "D"
											}

										}
,
										"SplendidTorch" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Start",
												"textMsg" : "Splendid_Torch"
											}
,
											"ensemble" : "SplendidTorch",
											"2" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Stop"
											}

										}
,
										"Sçay-je" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Start"
											}
,
											"ensemble" : "Sçayje",
											"2" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Stop"
											}

										}
,
										"Geometry" : 										{
											"1" : 											{
												"frame" : "metro",
												"countIn" : "0",
												"duration" : 4,
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Start"
											}
,
											"ensemble" : "",
											"2" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Stop"
											}

										}

									}
,
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 1100.5, 397.0, 78.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "dict Modules"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1205.5, 240.0, 105.0, 22.0 ],
									"style" : "",
									"text" : "value thisEpisode"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1086.5, 240.0, 101.0, 22.0 ],
									"style" : "",
									"text" : "value thisModule"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 666.0, 787.0, 102.0, 22.0 ],
									"style" : "",
									"text" : "0 0 Start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-94",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 190.5, 214.0, 43.0, 22.0 ],
									"style" : "",
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 234.0, 338.0, 133.0, 22.0 ],
									"style" : "",
									"text" : "regexp \" \" @substitute"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 819.0, 114.0, 22.0 ],
									"style" : "",
									"text" : "r resetModulePlace"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-77",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 617.5, 224.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 328.270508, 303.5, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 18.0,
									"id" : "obj-79",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 658.0, 224.0, 82.0, 27.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 354.270508, 303.5, 113.0, 27.0 ],
									"style" : "",
									"text" : "read",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 764.0, 318.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 779.0, 362.0, 35.0, 22.0 ],
									"style" : "",
									"text" : "read"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"rect" : [ 83.0, 106.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 50.0, 290.0, 30.0, 22.0 ],
													"style" : "",
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-82",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 127.0, 326.0, 116.0, 22.0 ],
													"style" : "",
													"text" : "s resetModulePlace"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-67",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 75.0, 100.0, 34.0, 22.0 ],
													"style" : "",
													"text" : "t b b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 326.0, 42.0, 22.0 ],
													"style" : "",
													"text" : "s toJs"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-64",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 73.0, 233.0, 29.5, 22.0 ],
													"style" : "",
													"text" : "join"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-63",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 57.0, 165.0, 101.0, 22.0 ],
													"style" : "",
													"text" : "value thisModule"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 83.5, 198.0, 136.0, 22.0 ],
													"style" : "",
													"text" : "value newModuleName"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-61",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 262.0, 115.0, 22.0 ],
													"style" : "",
													"text" : "changeName $1 $2"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-69",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 75.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-82", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-61", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 1 ],
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 0 ],
													"source" : [ "obj-63", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"source" : [ "obj-64", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"source" : [ "obj-67", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 0 ],
													"source" : [ "obj-69", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 56.0, 183.5, 92.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p changeName"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 18.0,
									"id" : "obj-57",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 82.0, 135.5, 218.0, 27.0 ],
									"style" : "",
									"text" : "Change Name",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-59",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 50.0, 135.5, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1187.0, 947.0, 24.0, 22.0 ],
									"style" : "",
									"text" : "t b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1244.0, 914.5, 90.0, 22.0 ],
									"style" : "",
									"text" : "r refreshFrame"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"embed" : 1,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-97",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"numinlets" : 2,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"rect" : [ 1017.0, 439.0, 1405.0, 723.0 ],
										"editing_bgcolor" : [ 0.701961, 0.415686, 0.886275, 0.901961 ],
										"bglocked" : 0,
										"openinpresentation" : 1,
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 850.25, 199.0, 139.0, 22.0 ],
													"style" : "",
													"text" : "regexp \" \" @substitute _"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 786.25, 93.0, 74.0, 22.0 ],
													"style" : "",
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 786.25, 234.0, 100.0, 22.0 ],
													"style" : "",
													"text" : "prepend textMsg"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 786.25, 187.0, 61.0, 22.0 ],
													"style" : "",
													"text" : "route text"
												}

											}
, 											{
												"box" : 												{
													"autoscroll" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.3 ],
													"bordercolor" : [ 0.376471, 0.384314, 0.4, 0.0 ],
													"hint" : "will be displayed in CountIn and Text frames",
													"id" : "obj-7",
													"keymode" : 1,
													"maxclass" : "textedit",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "int", "", "" ],
													"outputmode" : 1,
													"parameter_enable" : 0,
													"patching_rect" : [ 786.25, 135.0, 203.0, 33.835938 ],
													"presentation" : 1,
													"presentation_rect" : [ 280.25, 125.5, 132.0, 29.835938 ],
													"style" : "",
													"varname" : "seq[2]",
													"wordwrap" : 0
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 18.0,
													"id" : "obj-5",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 667.0, 135.0, 104.0, 27.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 196.0, 125.5, 62.0, 27.0 ],
													"style" : "",
													"text" : "Text",
													"textjustification" : 2,
													"varname" : "seqLable[2]"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-83",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 1057.0, 452.0, 139.0, 22.0 ],
													"style" : "",
													"text" : "regexp \" \" @substitute _"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1057.0, 392.0, 61.0, 22.0 ],
													"style" : "",
													"text" : "route text"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.862745, 0.870588, 0.878431, 0.0 ],
													"activebgoncolor" : [ 1.0, 0.788235, 0.027451, 0.0 ],
													"activetextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"activetextoncolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"appearance" : 1,
													"bgcolor" : [ 0.2495, 0.242348, 0.248704, 0.0 ],
													"bordercolor" : [ 0.196078, 0.196078, 0.196078, 0.0 ],
													"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
													"fontsize" : 24.0,
													"id" : "obj-38",
													"maxclass" : "live.text",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 1182.0, 166.0, 40.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 463.0, 48.388351, 33.0, 20.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_longname" : "live.text[1]",
															"parameter_shortname" : "live.text",
															"parameter_type" : 2,
															"parameter_mmax" : 1.0,
															"parameter_enum" : [ "val1", "val2" ],
															"parameter_invisible" : 2
														}

													}
,
													"text" : "?",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "live.text[1]"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 7,
															"minor" : 3,
															"revision" : 4,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"rect" : [ 1636.0, 409.0, 453.0, 538.0 ],
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
														"toolbars_unpinned_last_save" : 15,
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
														"boxes" : [ 															{
																"box" : 																{
																	"fontface" : 0,
																	"id" : "obj-25",
																	"linecount" : 2,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 9.0, 94.0, 327.0, 33.0 ],
																	"style" : "",
																	"text" : "During all coun in sequences the text field will act as a cue to the performers of which section to start."
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 2,
																	"id" : "obj-24",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 88.0, 438.0, 284.0, 20.0 ],
																	"style" : "",
																	"text" : "information used: text"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"id" : "obj-3",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 88.0, 413.0, 284.0, 20.0 ],
																	"style" : "",
																	"text" : "Will display a message until the next cue"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 1,
																	"id" : "obj-1",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 11.0, 413.0, 73.0, 20.0 ],
																	"style" : "",
																	"text" : "text"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"id" : "obj-23",
																	"linecount" : 2,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 88.0, 494.0, 284.0, 33.0 ],
																	"style" : "",
																	"text" : "Best practice is to use metro or timer with a duration of 0."
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 1,
																	"id" : "obj-20",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 11.0, 465.0, 127.0, 20.0 ],
																	"style" : "",
																	"text" : "For CountOff Cues"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 2,
																	"id" : "obj-18",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 88.0, 346.0, 284.0, 20.0 ],
																	"style" : "",
																	"text" : "information used: CountIn(in BEATS), Tempo"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 2,
																	"id" : "obj-17",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 88.0, 295.0, 284.0, 20.0 ],
																	"style" : "",
																	"text" : "information used: Duration(in SECS),  CountIn"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 2,
																	"id" : "obj-10",
																	"linecount" : 2,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 88.0, 231.0, 284.0, 33.0 ],
																	"style" : "",
																	"text" : "information used: Duration(in BEATS),  CountIn, Tempo"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 2,
																	"id" : "obj-5",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 88.0, 180.0, 134.0, 20.0 ],
																	"style" : "",
																	"text" : "information used: none "
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"hidden" : 1,
																	"id" : "obj-22",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 271.0, 567.0, 30.0, 30.0 ],
																	"style" : ""
																}

															}
, 															{
																"box" : 																{
																	"hidden" : 1,
																	"id" : "obj-21",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 152.0, 571.0, 35.0, 22.0 ],
																	"style" : "",
																	"text" : "front"
																}

															}
, 															{
																"box" : 																{
																	"hidden" : 1,
																	"id" : "obj-19",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 152.0, 601.0, 69.0, 22.0 ],
																	"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
																	"style" : "",
																	"text" : "thispatcher"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"id" : "obj-15",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 88.0, 377.0, 284.0, 20.0 ],
																	"style" : "",
																	"text" : "Flashes. Can be used as a countoff or cuttoff"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 1,
																	"id" : "obj-16",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 11.0, 377.0, 73.0, 20.0 ],
																	"style" : "",
																	"text" : "blink"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"id" : "obj-13",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 88.0, 324.0, 284.0, 20.0 ],
																	"style" : "",
																	"text" : "Conducts in beats to a given cue message."
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 1,
																	"id" : "obj-14",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 11.0, 324.0, 73.0, 20.0 ],
																	"style" : "",
																	"text" : "conductor"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"id" : "obj-11",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 88.0, 273.0, 284.0, 20.0 ],
																	"style" : "",
																	"text" : "Counts up to a given time in SECONDS."
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 1,
																	"id" : "obj-12",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 11.0, 273.0, 73.0, 20.0 ],
																	"style" : "",
																	"text" : "timer"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"id" : "obj-8",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 88.0, 209.0, 284.0, 20.0 ],
																	"style" : "",
																	"text" : "Blinks at a given tempo. Duration is in BEATS."
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 1,
																	"id" : "obj-9",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 11.0, 209.0, 73.0, 20.0 ],
																	"style" : "",
																	"text" : "metro"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"id" : "obj-7",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 88.0, 155.0, 284.0, 20.0 ],
																	"style" : "",
																	"text" : "No frame. Cancles a cue  "
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 1,
																	"id" : "obj-6",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 11.0, 155.0, 73.0, 20.0 ],
																	"style" : "",
																	"text" : "blank"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 2,
																	"id" : "obj-4",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 9.0, 53.0, 341.0, 20.0 ],
																	"style" : "",
																	"text" : "Frames are the interface between the cues and the performers"
																}

															}
, 															{
																"box" : 																{
																	"fontsize" : 30.0,
																	"id" : "obj-2",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 9.0, 6.0, 341.0, 40.0 ],
																	"style" : "",
																	"text" : "Frame Information"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 1,
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 1,
																	"source" : [ "obj-22", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1182.0, 209.0, 71.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"style" : "",
														"tags" : ""
													}
,
													"style" : "",
													"text" : "p frameInfo"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.862745, 0.870588, 0.878431, 0.0 ],
													"activebgoncolor" : [ 1.0, 0.788235, 0.027451, 0.0 ],
													"activetextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"activetextoncolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"appearance" : 1,
													"bgcolor" : [ 0.2495, 0.242348, 0.248704, 0.0 ],
													"bordercolor" : [ 0.196078, 0.196078, 0.196078, 0.0 ],
													"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
													"fontsize" : 24.0,
													"id" : "obj-37",
													"maxclass" : "live.text",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 1029.0, 188.0, 40.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 463.0, 212.5, 33.0, 20.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_longname" : "live.text",
															"parameter_shortname" : "live.text",
															"parameter_type" : 2,
															"parameter_mmax" : 1.0,
															"parameter_enum" : [ "val1", "val2" ],
															"parameter_invisible" : 2
														}

													}
,
													"text" : "?",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "live.text"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 7,
															"minor" : 3,
															"revision" : 4,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"rect" : [ 2124.0, 572.0, 453.0, 352.0 ],
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
														"toolbars_unpinned_last_save" : 15,
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
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"hidden" : 1,
																	"id" : "obj-22",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 272.0, 434.0, 30.0, 30.0 ],
																	"style" : ""
																}

															}
, 															{
																"box" : 																{
																	"hidden" : 1,
																	"id" : "obj-21",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 153.0, 438.0, 35.0, 22.0 ],
																	"style" : "",
																	"text" : "front"
																}

															}
, 															{
																"box" : 																{
																	"hidden" : 1,
																	"id" : "obj-19",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 153.0, 468.0, 69.0, 22.0 ],
																	"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
																	"style" : "",
																	"text" : "thispatcher"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"id" : "obj-17",
																	"linecount" : 5,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 91.0, 261.0, 299.0, 74.0 ],
																	"style" : "",
																	"text" : "Sets the frame of the scetch to another frame.  It will use the data marked in the episode. ie: if it <frame> = metro, then the scetch would count the duration of beats at the marked tempo for the standard frame definition."
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 1,
																	"id" : "obj-18",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 9.0, 261.0, 75.0, 20.0 ],
																	"style" : "",
																	"text" : "F=<frame>"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"id" : "obj-15",
																	"linecount" : 3,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 86.0, 206.0, 298.0, 47.0 ],
																	"style" : "",
																	"text" : "Marks the end of a loop. <i> is the number of times the loops will occure. If <i> is 'i' the loop will contenue indeinitly."
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 1,
																	"id" : "obj-16",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 9.0, 206.0, 73.0, 20.0 ],
																	"style" : "",
																	"text" : "Le<i>"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"id" : "obj-13",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 86.0, 177.0, 284.0, 20.0 ],
																	"style" : "",
																	"text" : "Marks the begining of a loop"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 1,
																	"id" : "obj-14",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 9.0, 177.0, 73.0, 20.0 ],
																	"style" : "",
																	"text" : "Ls"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"id" : "obj-11",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 86.0, 151.0, 284.0, 20.0 ],
																	"style" : "",
																	"text" : "Sets the tempo to <i>"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 1,
																	"id" : "obj-12",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 9.0, 151.0, 73.0, 20.0 ],
																	"style" : "",
																	"text" : "T=<i>"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"id" : "obj-8",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 86.0, 123.0, 284.0, 20.0 ],
																	"style" : "",
																	"text" : "Sets the next measure to m. <i>"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 1,
																	"id" : "obj-9",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 9.0, 123.0, 73.0, 20.0 ],
																	"style" : "",
																	"text" : "M=<i>"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"id" : "obj-7",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 86.0, 95.0, 284.0, 20.0 ],
																	"style" : "",
																	"text" : "A new measure of <i> beats"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 1,
																	"id" : "obj-6",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 9.0, 95.0, 73.0, 20.0 ],
																	"style" : "",
																	"text" : "<i>"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 2,
																	"id" : "obj-4",
																	"linecount" : 2,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 9.0, 53.0, 341.0, 33.0 ],
																	"style" : "",
																	"text" : "The conductor function tells the cueing scetch to follow a series of events.  The following is how to format a message."
																}

															}
, 															{
																"box" : 																{
																	"fontsize" : 30.0,
																	"id" : "obj-2",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 9.0, 6.0, 341.0, 40.0 ],
																	"style" : "",
																	"text" : "The Conductor Function"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 1,
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 1,
																	"source" : [ "obj-22", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1029.0, 227.0, 107.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"style" : "",
														"tags" : ""
													}
,
													"style" : "",
													"text" : "p conductorSintax"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 833.0, 500.0, 30.0, 22.0 ],
													"style" : "",
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 825.25, 599.0, 72.0, 22.0 ],
													"style" : "",
													"text" : "s refreshEp"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 778.25, 288.0, 74.0, 22.0 ],
													"style" : "",
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 778.25, 430.0, 83.0, 22.0 ],
													"style" : "",
													"text" : "prepend lable"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 18.0,
													"id" : "obj-2",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 663.0, 333.417969, 104.0, 27.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 196.0, 80.5, 62.0, 27.0 ],
													"style" : "",
													"text" : "Lable",
													"textjustification" : 2,
													"varname" : "seqLable[1]"
												}

											}
, 											{
												"box" : 												{
													"autoscroll" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.3 ],
													"bordercolor" : [ 0.376471, 0.384314, 0.4, 0.0 ],
													"hint" : "name of the cue",
													"id" : "obj-3",
													"keymode" : 1,
													"maxclass" : "textedit",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "int", "", "" ],
													"outputmode" : 1,
													"parameter_enable" : 0,
													"patching_rect" : [ 778.25, 326.582031, 204.0, 33.835938 ],
													"presentation" : 1,
													"presentation_rect" : [ 280.25, 80.5, 132.0, 29.835938 ],
													"style" : "",
													"text" : "Start",
													"varname" : "seq[1]",
													"wordwrap" : 0
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-94",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 287.0, 166.0, 74.0, 22.0 ],
													"style" : "",
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-93",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 396.0, 474.0, 59.0, 22.0 ],
													"style" : "",
													"text" : "tosymbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-88",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 387.0, 527.5, 77.0, 22.0 ],
													"style" : "",
													"text" : "prepend seq"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-84",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 399.5, 430.0, 61.0, 22.0 ],
													"style" : "",
													"text" : "route text"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 18.0,
													"id" : "obj-82",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 375.5, 104.0, 47.0 ],
													"presentation" : 1,
													"presentation_linecount" : 2,
													"presentation_rect" : [ 8.5, 199.0, 104.0, 47.0 ],
													"style" : "",
													"text" : "Conductor Sequence",
													"textjustification" : 2,
													"varname" : "seqLable"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.3 ],
													"bordercolor" : [ 0.376471, 0.384314, 0.4, 0.0 ],
													"hint" : "cue list for the conductor frame",
													"id" : "obj-72",
													"maxclass" : "textedit",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "int", "", "" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 167.25, 379.582031, 205.0, 38.835938 ],
													"presentation" : 1,
													"presentation_rect" : [ 130.770477, 196.332031, 327.0, 52.335938 ],
													"style" : "",
													"varname" : "seq"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-76",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 250.5, 342.5, 91.0, 22.0 ],
													"style" : "",
													"text" : "prepend tempo"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-73",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 7,
															"minor" : 3,
															"revision" : 4,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"rect" : [ 1692.0, 661.0, 640.0, 480.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-123",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 112.0, 235.335938, 42.0, 22.0 ],
																	"style" : "",
																	"text" : "s toJs"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-90",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "bang" ],
																	"patching_rect" : [ 198.0, 121.335938, 30.0, 22.0 ],
																	"style" : "",
																	"text" : "t l b"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-82",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 265.5, 163.335938, 105.0, 22.0 ],
																	"style" : "",
																	"text" : "value thisEpisode"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-81",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 79.0, 104.335938, 101.0, 22.0 ],
																	"style" : "",
																	"text" : "value thisModule"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-80",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 112.0, 149.335938, 105.0, 22.0 ],
																	"style" : "",
																	"text" : "join 3 @triggers 2"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-63",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 112.0, 196.335938, 92.0, 22.0 ],
																	"style" : "",
																	"text" : "prepend editEp"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-72",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 198.0, 40.0, 30.0, 30.0 ],
																	"style" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-123", 0 ],
																	"source" : [ "obj-63", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-90", 0 ],
																	"source" : [ "obj-72", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-63", 0 ],
																	"source" : [ "obj-80", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-80", 0 ],
																	"source" : [ "obj-81", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-80", 1 ],
																	"source" : [ "obj-82", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-80", 2 ],
																	"source" : [ "obj-90", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-81", 0 ],
																	"order" : 1,
																	"source" : [ "obj-90", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-82", 0 ],
																	"order" : 0,
																	"source" : [ "obj-90", 1 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 626.75, 562.0, 129.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"style" : "",
														"tags" : ""
													}
,
													"style" : "",
													"text" : "p changeEpisodeData"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-67",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 7,
															"minor" : 3,
															"revision" : 4,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"rect" : [ 84.0, 106.0, 640.0, 480.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-45",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 99.5, 100.0, 30.0, 22.0 ],
																	"style" : "",
																	"text" : "t b l"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-49",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 251.856567, 42.0, 22.0 ],
																	"style" : "",
																	"text" : "s toJs"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-50",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 181.856567, 29.5, 22.0 ],
																	"style" : "",
																	"text" : "join"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-54",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 137.856567, 101.0, 22.0 ],
																	"style" : "",
																	"text" : "value thisModule"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-55",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 210.856567, 122.0, 22.0 ],
																	"style" : "",
																	"text" : "prepend editModule"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-65",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 99.5, 40.0, 30.0, 30.0 ],
																	"style" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-50", 1 ],
																	"source" : [ "obj-45", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-54", 0 ],
																	"source" : [ "obj-45", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-55", 0 ],
																	"source" : [ "obj-50", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-50", 0 ],
																	"source" : [ "obj-54", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-49", 0 ],
																	"source" : [ "obj-55", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-45", 0 ],
																	"source" : [ "obj-65", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 196.5, 617.143433, 125.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"style" : "",
														"tags" : ""
													}
,
													"style" : "",
													"text" : "p change_enssemble"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 349.75, 166.0, 50.0, 22.0 ],
													"style" : "",
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 18.0,
													"id" : "obj-40",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 339.0, 104.0, 27.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 8.5, 162.5, 104.0, 27.0 ],
													"style" : "",
													"text" : "Tempo",
													"textjustification" : 2,
													"varname" : "tempoLable"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
													"fontsize" : 18.0,
													"hint" : "denotes tempo",
													"id" : "obj-41",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 170.5, 339.0, 60.0, 29.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 130.770477, 162.5, 60.0, 29.0 ],
													"style" : "",
													"triangle" : 0,
													"varname" : "tempo"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 412.0, 227.0, 155.0, 22.0 ],
													"style" : "",
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 412.0, 188.0, 73.0, 22.0 ],
													"style" : "",
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 18.0,
													"id" : "obj-33",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 445.0, 104.0, 27.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 8.5, 9.0, 104.0, 27.0 ],
													"style" : "",
													"text" : "Ensemble",
													"textjustification" : 2,
													"varname" : "ensembleLable"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 412.0, 151.0, 93.0, 22.0 ],
													"style" : "",
													"text" : "route ensemble"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 153.5, 537.0, 56.0, 22.0 ],
													"style" : "",
													"text" : "sel bang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 157.25, 498.0, 61.0, 22.0 ],
													"style" : "",
													"text" : "route text"
												}

											}
, 											{
												"box" : 												{
													"autoscroll" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.19 ],
													"bordercolor" : [ 0.376471, 0.384314, 0.4, 0.0 ],
													"fontsize" : 18.0,
													"id" : "obj-8",
													"lines" : 1,
													"maxclass" : "textedit",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "int", "", "" ],
													"outputmode" : 1,
													"parameter_enable" : 0,
													"patching_rect" : [ 157.25, 445.0, 195.0, 29.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 130.770477, 9.0, 327.0, 27.0 ],
													"style" : "",
													"tabmode" : 0,
													"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
													"varname" : "ensemble",
													"wordwrap" : 0
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-147",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 80.0, 168.0, 37.0, 22.0 ],
													"style" : "",
													"text" : "set 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-120",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "clear" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 7,
															"minor" : 3,
															"revision" : 4,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"rect" : [ 1664.0, 879.0, 640.0, 480.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-3",
																	"index" : 3,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 471.5, 372.0, 30.0, 30.0 ],
																	"style" : ""
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-2",
																	"index" : 2,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 314.5, 388.0, 30.0, 30.0 ],
																	"style" : ""
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 314.5, 295.0, 49.0, 22.0 ],
																	"style" : "",
																	"text" : "dict.iter"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-114",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 55.0, 54.0, 90.0, 22.0 ],
																	"style" : "",
																	"text" : "r refreshFrame"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-113",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 204.25, 179.0, 44.0, 22.0 ],
																	"style" : "",
																	"text" : "get $1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-112",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 214.5, 244.0, 57.0, 22.0 ],
																	"style" : "",
																	"text" : "zl.slice 1"
																}

															}
, 															{
																"box" : 																{
																	"data" : 																	{
																		"TransientDominion" : 																		{
																			"1" : 																			{
																				"frame" : "conductor",
																				"countIn" : 2,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 90,
																				"seq" : "M=1 5 5 4 4 4 3 5 5 4 4 4 3 4",
																				"lable" : "A",
																				"textMsg" : "Rehersal_A",
																				"TransientDominion" : ""
																			}
,
																			"ensemble" : "TransientDominion",
																			"2" : 																			{
																				"frame" : "conductor",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 90,
																				"seq" : "M=14 5 4 4 4 5 3 3 4",
																				"lable" : "B",
																				"textMsg" : "Rehersal_B"
																			}
,
																			"3" : 																			{
																				"frame" : "conductor",
																				"countIn" : 3,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 90,
																				"seq" : "M=22 3 3 4",
																				"lable" : "C",
																				"textMsg" : "Rehersal_C"
																			}
,
																			"4" : 																			{
																				"frame" : "conductor",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 90,
																				"seq" : "M=25 5 4 4 4 4 5 3 5 3 4 4",
																				"lable" : "D",
																				"textMsg" : "Rehersal_D"
																			}
,
																			"5" : 																			{
																				"frame" : "conductor",
																				"countIn" : 4,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 90,
																				"seq" : "M=35 4 4 5 4",
																				"lable" : "E",
																				"textMsg" : "Rehersal_E"
																			}
,
																			"6" : 																			{
																				"frame" : "conductor",
																				"countIn" : 4,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 90,
																				"seq" : "M=39 4 5 4 4 5 4",
																				"lable" : "F",
																				"textMsg" : "Rehersal_F"
																			}
,
																			"7" : 																			{
																				"frame" : "conductor",
																				"countIn" : 4,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 90,
																				"seq" : "M=45 4 4 3 5 5 4 4 4 3 5 4",
																				"lable" : "G",
																				"textMsg" : "Rehersal_G"
																			}
,
																			"8" : 																			{
																				"frame" : "text",
																				"countIn" : "0",
																				"duration" : 0,
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "ANext",
																				"textMsg" : "A"
																			}

																		}
,
																		"IndelibleStamp" : 																		{
																			"1" : 																			{
																				"frame" : "conductor",
																				"countIn" : 4,
																				"duration" : 0,
																				"timeCode" : "seconds",
																				"tempo" : 72,
																				"seq" : "M=1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4",
																				"lable" : "A",
																				"textMsg" : "Rehersal_A"
																			}
,
																			"ensemble" : "IndelibleStamp",
																			"2" : 																			{
																				"frame" : "conductor",
																				"countIn" : 4,
																				"duration" : 0,
																				"timeCode" : "seconds",
																				"tempo" : 72,
																				"seq" : "M=36 Ls 4 Lei",
																				"lable" : "bVamp",
																				"textMsg" : "Rehersal_B"
																			}
,
																			"3" : 																			{
																				"frame" : "conductor",
																				"countIn" : 4,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 72,
																				"seq" : "M=42 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4",
																				"lable" : "c"
																			}
,
																			"4" : 																			{
																				"frame" : "conductor",
																				"countIn" : 4,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 72,
																				"seq" : "M=1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4  Ls 4 4 4 4 4 4 Lei",
																				"lable" : "a+bVamp"
																			}
,
																			"5" : 																			{
																				"frame" : "conductor",
																				"countIn" : 4,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 72,
																				"seq" : "M=36 Ls 4 4 4 4 4 4 Le1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4",
																				"lable" : "b+c"
																			}
,
																			"6" : 																			{
																				"frame" : "conductor",
																				"countIn" : 4,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "M=1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4  Ls 4 4 4 4 4 4 Le1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4",
																				"lable" : "a+b+c"
																			}
,
																			"7" : 																			{
																				"frame" : "blink",
																				"countIn" : 0,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "cuttoff"
																			}

																		}
,
																		"Unweaving" : 																		{
																			"1" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "a"
																			}
,
																			"ensemble" : "Unweaving",
																			"2" : 																			{
																				"frame" : "metro",
																				"countIn" : 3,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 108,
																				"seq" : "",
																				"lable" : "b"
																			}

																		}
,
																		"Watchmaker" : 																		{
																			"1" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "CountIn"
																			}
,
																			"ensemble" : "Watchmaker",
																			"2" : 																			{
																				"frame" : "blink",
																				"countIn" : "0",
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "CuttOff"
																			}

																		}
,
																		"CelestialTeapot" : 																		{
																			"1" : 																			{
																				"frame" : "metro",
																				"countIn" : 6,
																				"duration" : 0,
																				"timeCode" : "seconds",
																				"tempo" : 54,
																				"seq" : "",
																				"lable" : "a"
																			}
,
																			"ensemble" : "CelestialTeapot",
																			"2" : 																			{
																				"frame" : "metro",
																				"countIn" : 3,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 54,
																				"seq" : "",
																				"lable" : "b"
																			}
,
																			"3" : 																			{
																				"frame" : "metro",
																				"countIn" : 2,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 54,
																				"seq" : "",
																				"lable" : "c"
																			}
,
																			"4" : 																			{
																				"frame" : "metro",
																				"countIn" : 6,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 54,
																				"seq" : "",
																				"lable" : "d"
																			}
,
																			"5" : 																			{
																				"frame" : "metro",
																				"countIn" : 6,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 54,
																				"seq" : "",
																				"lable" : "e"
																			}
,
																			"6" : 																			{
																				"frame" : "metro",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 54,
																				"seq" : "",
																				"lable" : "f"
																			}

																		}
,
																		"Contagion" : 																		{
																			"1" : 																			{
																				"frame" : "metro",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 332,
																				"seq" : "",
																				"lable" : "a"
																			}
,
																			"ensemble" : "Contagion",
																			"2" : 																			{
																				"frame" : "metro",
																				"countIn" : 7,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 332,
																				"seq" : "",
																				"lable" : "b"
																			}
,
																			"3" : 																			{
																				"frame" : "metro",
																				"countIn" : 6,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 332,
																				"seq" : "",
																				"lable" : "c"
																			}
,
																			"4" : 																			{
																				"frame" : "metro",
																				"countIn" : 6,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 332,
																				"seq" : "",
																				"lable" : "d"
																			}
,
																			"5" : 																			{
																				"frame" : "metro",
																				"countIn" : 7,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 332,
																				"seq" : "",
																				"lable" : "e"
																			}

																		}
,
																		"Permanence" : 																		{
																			"1" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "Agitated"
																			}
,
																			"ensemble" : "Permanence",
																			"2" : 																			{
																				"frame" : "timer",
																				"countIn" : "0",
																				"duration" : 5,
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "Ethereal"
																			}
,
																			"3" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "Desultory"
																			}
,
																			"4" : 																			{
																				"frame" : "blank",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "Vertiginous"
																			}

																		}
,
																		"Shadows" : 																		{
																			"1" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "start"
																			}
,
																			"ensemble" : "Shadows",
																			"2" : 																			{
																				"frame" : "blink",
																				"countIn" : "0",
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "stop"
																			}

																		}
,
																		"Tyrannei" : 																		{
																			"1" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "A"
																			}
,
																			"2" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "B"
																			}
,
																			"ensemble" : "Tyrannei",
																			"3" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "C"
																			}
,
																			"4" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "D"
																			}
,
																			"5" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "E"
																			}
,
																			"6" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "F"
																			}

																		}
,
																		"Pascal" : 																		{
																			"1" : 																			{
																				"frame" : "metro",
																				"countIn" : 4,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 138,
																				"seq" : "",
																				"lable" : "A"
																			}
,
																			"ensemble" : "Pascal",
																			"2" : 																			{
																				"frame" : "metro",
																				"countIn" : 4,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 138,
																				"seq" : "",
																				"lable" : "B"
																			}
,
																			"3" : 																			{
																				"frame" : "timer",
																				"countIn" : 4,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 138,
																				"seq" : "",
																				"lable" : "C"
																			}
,
																			"4" : 																			{
																				"frame" : "blink",
																				"countIn" : "0",
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "Cuttoff"
																			}

																		}
,
																		"FleetingSym" : 																		{
																			"1" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "A-1"
																			}
,
																			"ensemble" : "FleetingSym",
																			"2" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "A-2"
																			}
,
																			"3" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "A-3"
																			}
,
																			"4" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "A-4"
																			}
,
																			"5" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "A-5"
																			}
,
																			"6" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "B-1"
																			}
,
																			"7" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "B-2"
																			}
,
																			"8" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "B-3"
																			}
,
																			"9" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "B-4"
																			}
,
																			"10" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "B-5"
																			}

																		}
,
																		"GloriousAccidents" : 																		{
																			"1" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "A"
																			}
,
																			"ensemble" : "GloriousAccidents",
																			"2" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "B"
																			}
,
																			"3" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "C"
																			}
,
																			"4" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "D"
																			}
,
																			"5" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "E"
																			}
,
																			"6" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "F"
																			}
,
																			"7" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "G"
																			}
,
																			"8" : 																			{
																				"frame" : "blink",
																				"countIn" : "0",
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "Cuttoff"
																			}

																		}
,
																		"Ignorance" : 																		{
																			"1" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "A"
																			}
,
																			"ensemble" : "Ignorance",
																			"2" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "B"
																			}
,
																			"3" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "C"
																			}
,
																			"4" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "D"
																			}

																		}
,
																		"SplendidTorch" : 																		{
																			"1" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "Start",
																				"textMsg" : "Splendid_Torch"
																			}
,
																			"ensemble" : "SplendidTorch",
																			"2" : 																			{
																				"frame" : "blink",
																				"countIn" : "0",
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "Stop"
																			}

																		}
,
																		"Sçay-je" : 																		{
																			"1" : 																			{
																				"frame" : "timer",
																				"countIn" : 5,
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "Start"
																			}
,
																			"ensemble" : "Sçayje",
																			"2" : 																			{
																				"frame" : "blink",
																				"countIn" : "0",
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "Stop"
																			}

																		}
,
																		"Geometry" : 																		{
																			"1" : 																			{
																				"frame" : "metro",
																				"countIn" : "0",
																				"duration" : 4,
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "Start"
																			}
,
																			"ensemble" : "",
																			"2" : 																			{
																				"frame" : "blink",
																				"countIn" : "0",
																				"duration" : "0",
																				"timeCode" : "seconds",
																				"tempo" : 60,
																				"seq" : "",
																				"lable" : "Stop"
																			}

																		}

																	}
,
																	"id" : "obj-109",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 4,
																	"outlettype" : [ "dictionary", "", "", "" ],
																	"patching_rect" : [ 187.25, 209.0, 78.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"embed" : 1,
																		"parameter_enable" : 0
																	}
,
																	"style" : "",
																	"text" : "dict Modules"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-107",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 192.5, 142.0, 101.0, 22.0 ],
																	"style" : "",
																	"text" : "value thisModule"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-105",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "clear" ],
																	"patching_rect" : [ 55.0, 108.0, 63.0, 22.0 ],
																	"style" : "",
																	"text" : "t b b clear"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-45",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 98.5, 316.0, 49.0, 22.0 ],
																	"style" : "",
																	"text" : "dict.iter"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-40",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 60.5, 280.0, 57.0, 22.0 ],
																	"style" : "",
																	"text" : "zl.slice 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-35",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 200.0, 44.0, 22.0 ],
																	"style" : "",
																	"text" : "get $1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-31",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 4,
																	"outlettype" : [ "dictionary", "", "", "" ],
																	"patching_rect" : [ 50.0, 252.0, 50.5, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0,
																		"parameter_enable" : 0
																	}
,
																	"style" : "",
																	"text" : "dict"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-29",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 167.0, 105.0, 22.0 ],
																	"style" : "",
																	"text" : "value thisEpisode"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-119",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 98.5, 398.0, 30.0, 30.0 ],
																	"style" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-107", 0 ],
																	"source" : [ "obj-105", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-29", 0 ],
																	"source" : [ "obj-105", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"source" : [ "obj-105", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-113", 0 ],
																	"source" : [ "obj-107", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-112", 0 ],
																	"source" : [ "obj-109", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"order" : 0,
																	"source" : [ "obj-112", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-31", 0 ],
																	"order" : 1,
																	"source" : [ "obj-112", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-109", 0 ],
																	"source" : [ "obj-113", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-105", 0 ],
																	"source" : [ "obj-114", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-35", 0 ],
																	"source" : [ "obj-29", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-40", 0 ],
																	"source" : [ "obj-31", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-31", 0 ],
																	"source" : [ "obj-35", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-45", 0 ],
																	"source" : [ "obj-40", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-119", 0 ],
																	"source" : [ "obj-45", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 125.75, 72.0, 63.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"style" : "",
														"tags" : ""
													}
,
													"style" : "",
													"text" : "p getData"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-75",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 179.5, 166.0, 50.0, 22.0 ],
													"style" : "",
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-74",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 231.5, 166.0, 50.0, 22.0 ],
													"style" : "",
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 8,
													"numoutlets" : 8,
													"outlettype" : [ "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 125.75, 120.0, 295.0, 22.0 ],
													"style" : "",
													"text" : "route frame countIn duration tempo seq lable textMsg"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 18.0,
													"id" : "obj-25",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 58.25, 294.5, 104.0, 27.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 8.5, 118.0, 104.0, 27.0 ],
													"style" : "",
													"text" : "CountIn",
													"textjustification" : 2,
													"varname" : "countInLable"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 18.0,
													"id" : "obj-24",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 63.25, 255.0, 105.0, 27.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 8.5, 78.5, 105.0, 27.0 ],
													"style" : "",
													"text" : "Duration",
													"textjustification" : 2,
													"varname" : "durationLabel"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 18.0,
													"id" : "obj-23",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 63.25, 218.0, 106.0, 27.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 8.5, 43.888351, 106.0, 27.0 ],
													"style" : "",
													"text" : "Frame Type",
													"textjustification" : 2,
													"varname" : "frameLable"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
													"fontsize" : 18.0,
													"hint" : "gives a count down to the next cue",
													"id" : "obj-20",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 170.5, 294.5, 60.0, 29.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 130.770477, 118.0, 60.0, 29.0 ],
													"style" : "",
													"triangle" : 0,
													"varname" : "countIn"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
													"fontsize" : 18.0,
													"hint" : "length of the cue",
													"id" : "obj-19",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 177.25, 254.0, 60.0, 29.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 130.770477, 77.5, 60.0, 29.0 ],
													"style" : "",
													"triangle" : 0,
													"varname" : "duration"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.19 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0,
													"bgfillcolor_color" : [ 1.0, 1.0, 1.0, 0.19 ],
													"bgfillcolor_color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
													"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "color",
													"fontsize" : 18.0,
													"hint" : "frame types",
													"id" : "obj-17",
													"items" : [ "blank", ",", "metro", ",", "timer", ",", "conductor", ",", "blink", ",", "text" ],
													"maxclass" : "umenu",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 177.25, 218.0, 100.0, 29.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 130.770477, 43.888351, 327.0, 29.0 ],
													"style" : "",
													"varname" : "frame"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 121.5, 166.0, 50.0, 22.0 ],
													"style" : "",
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 196.5, 587.0, 199.0, 22.0 ],
													"style" : "",
													"text" : "prepend ensemble"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 249.5, 257.5, 101.0, 22.0 ],
													"style" : "",
													"text" : "prepend duration"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-60",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 310.75, 205.0, 89.0, 22.0 ],
													"style" : "",
													"text" : "prepend frame"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 250.5, 294.5, 97.0, 22.0 ],
													"style" : "",
													"text" : "prepend countIn"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-95",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 80.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-96",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 157.25, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"order" : 1,
													"source" : [ "obj-120", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-120", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"source" : [ "obj-120", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"order" : 0,
													"source" : [ "obj-120", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 0 ],
													"order" : 2,
													"source" : [ "obj-120", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"order" : 3,
													"source" : [ "obj-120", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"order" : 1,
													"source" : [ "obj-147", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"order" : 0,
													"source" : [ "obj-147", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"order" : 2,
													"source" : [ "obj-147", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 0 ],
													"source" : [ "obj-17", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-21", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"order" : 0,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"order" : 1,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"source" : [ "obj-29", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"source" : [ "obj-31", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 0 ],
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-42", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-42", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-74", 0 ],
													"source" : [ "obj-42", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 0 ],
													"source" : [ "obj-42", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-42", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-94", 0 ],
													"source" : [ "obj-42", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"source" : [ "obj-60", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"source" : [ "obj-61", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-84", 0 ],
													"source" : [ "obj-72", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-74", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-75", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"source" : [ "obj-76", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-83", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"order" : 0,
													"source" : [ "obj-83", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"order" : 1,
													"source" : [ "obj-83", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-93", 0 ],
													"source" : [ "obj-84", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"source" : [ "obj-88", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-88", 0 ],
													"source" : [ "obj-93", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 0 ],
													"source" : [ "obj-94", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-147", 0 ],
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-96", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 742.5, 623.5, 679.0, 240.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 333.270508, 12.0, 499.0, 256.5 ],
									"varname" : "bpatcher",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 124.0, 571.0, 86.0, 22.0 ],
									"style" : "",
									"text" : "restoreDefault"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-92",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1392.0, 1052.0, 40.0, 22.0 ],
									"style" : "",
									"text" : "itoa"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-91",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1392.0, 989.0, 73.0, 22.0 ],
									"style" : "",
									"text" : "fromsymbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1392.0, 1022.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "+ 96"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1152.5, 1052.0, 139.0, 22.0 ],
									"style" : "",
									"text" : "pack s s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1272.5, 989.0, 105.0, 22.0 ],
									"style" : "",
									"text" : "value thisEpisode"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1152.5, 989.0, 101.0, 22.0 ],
									"style" : "",
									"text" : "value thisModule"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 363.5, 355.0, 114.0, 22.0 ],
									"style" : "",
									"text" : "r resetModulePlace"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 41.0, 481.0, 42.0, 22.0 ],
									"style" : "",
									"text" : "s toJs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 190.5, 407.0, 99.0, 22.0 ],
									"style" : "",
									"text" : "r toModuleName"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 447.5, 328.0, 101.0, 22.0 ],
									"style" : "",
									"text" : "s toModuleName"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 790.5, 116.0, 22.0 ],
									"style" : "",
									"text" : "s resetModulePlace"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 346.0, 407.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 118.0, 712.5, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.0, 277.0, 86.0, 22.0 ],
									"style" : "",
									"text" : "restoreDefault"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ],
									"patching_rect" : [ 453.0, 294.0, 44.0, 22.0 ],
									"style" : "",
									"text" : "t b b b"
								}

							}
, 							{
								"box" : 								{
									"data" : 									{
										"frame" : "blank",
										"countIn" : "0",
										"duration" : "0",
										"timeCode" : "seconds",
										"tempo" : 60,
										"seq" : "",
										"lable" : "noLable",
										"textMsg" : "none"
									}
,
									"id" : "obj-162",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 176.0, 627.5, 112.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "dict defaultEpisode"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-161",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 688.5, 390.0, 52.0, 22.0 ],
									"style" : "",
									"text" : "clear all"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-160",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 234.0, 375.0, 136.0, 22.0 ],
									"style" : "",
									"text" : "value newModuleName"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-149",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 716.0, 348.0, 24.0, 22.0 ],
									"style" : "",
									"text" : "t b"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-143",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 554.5, 193.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 170.770477, 306.5, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-142",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 723.0, 135.5, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 149.5, 186.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-141",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 554.5, 135.5, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.5, 305.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 18.0,
									"id" : "obj-138",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 764.0, 135.5, 82.0, 47.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 179.270477, 183.0, 113.0, 27.0 ],
									"style" : "",
									"text" : "remove ep",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 18.0,
									"id" : "obj-137",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 596.0, 135.5, 82.0, 27.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 42.0, 303.5, 113.0, 27.0 ],
									"style" : "",
									"text" : "save",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 18.0,
									"id" : "obj-136",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 596.0, 183.5, 82.0, 27.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 195.0, 303.5, 113.0, 27.0 ],
									"style" : "",
									"text" : "clear",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 18.0,
									"id" : "obj-133",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 82.0, 304.0, 112.0, 27.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 34.5, 184.5, 113.0, 27.0 ],
									"style" : "",
									"text" : "add episode",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-127",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"rect" : [ 85.0, 106.0, 638.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 146.0, 156.0, 24.0, 22.0 ],
													"style" : "",
													"text" : "t b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 269.0, 230.0, 59.0, 22.0 ],
													"style" : "",
													"text" : "tosymbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 256.0, 179.0, 29.5, 22.0 ],
													"style" : "",
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 0.0, 0.0, 150.0, 20.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-118",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 179.0, 332.0, 92.0, 22.0 ],
													"style" : "",
													"text" : "s refreshFrame"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 67.5, 240.0, 72.0, 22.0 ],
													"style" : "",
													"text" : "s refreshEp"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 275.0, 286.0, 105.0, 22.0 ],
													"style" : "",
													"text" : "value thisEpisode"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-72",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 67.5, 195.0, 30.0, 22.0 ],
													"style" : "",
													"text" : "t b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-68",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 102.0, 195.0, 101.0, 22.0 ],
													"style" : "",
													"text" : "value thisModule"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "int", "" ],
													"patching_rect" : [ 127.0, 100.0, 71.0, 22.0 ],
													"style" : "",
													"text" : "unpack i i s"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "int", "" ],
													"patching_rect" : [ 50.0, 100.0, 71.0, 22.0 ],
													"style" : "",
													"text" : "unpack i i s"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-125",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-126",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 127.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-125", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"source" : [ "obj-126", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"order" : 0,
													"source" : [ "obj-30", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 0 ],
													"order" : 1,
													"source" : [ "obj-30", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-62", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-72", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-118", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 589.5, 911.0, 58.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p display"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-124",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 586.5, 40.0, 22.0 ],
									"style" : "",
									"text" : "r toJs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 118.0, 750.5, 92.0, 22.0 ],
									"style" : "",
									"text" : "s refreshFrame"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"rect" : [ 129.0, 694.0, 760.0, 905.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 387.0, 413.0, 29.5, 22.0 ],
													"style" : "",
													"text" : "- 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 377.5, 348.0, 39.0, 22.0 ],
													"style" : "",
													"text" : "zl.len"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 149.75, 372.0, 30.0, 22.0 ],
													"style" : "",
													"text" : "t l b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 421.0, 797.0, 50.0, 22.0 ],
													"style" : "",
													"text" : "rows 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 237.0, 628.0, 29.5, 22.0 ],
													"style" : "",
													"text" : "i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 229.0, 684.0, 53.0, 22.0 ],
													"style" : "",
													"text" : "rows $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "bang" ],
													"patching_rect" : [ 53.75, 105.0, 44.0, 22.0 ],
													"style" : "",
													"text" : "t b b b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 455.0, 611.0, 52.0, 22.0 ],
													"style" : "",
													"text" : "clear all"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 82.75, 502.0, 29.5, 22.0 ],
													"style" : "",
													"text" : "- 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 82.75, 428.0, 73.0, 22.0 ],
													"style" : "",
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 63.75, 348.0, 93.0, 22.0 ],
													"style" : "",
													"text" : "route ensemble"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 63.75, 321.0, 49.0, 22.0 ],
													"style" : "",
													"text" : "dict.iter"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 7,
															"minor" : 3,
															"revision" : 4,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"rect" : [ 134.0, 156.0, 772.0, 629.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-50",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "" ],
																	"patching_rect" : [ 175.0, 350.0, 30.0, 22.0 ],
																	"style" : "",
																	"text" : "t 0 l"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-49",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 41.0, 182.0, 53.0, 22.0 ],
																	"style" : "",
																	"text" : "noLable"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-47",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 54.0, 224.0, 34.0, 22.0 ],
																	"style" : "",
																	"text" : "gate"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-46",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "", "int" ],
																	"patching_rect" : [ 50.0, 96.0, 40.0, 22.0 ],
																	"style" : "",
																	"text" : "t b l 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-34",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 201.0, 381.0, 67.0, 22.0 ],
																	"style" : "",
																	"text" : "route lable"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-14",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 175.5, 232.0, 56.0, 22.0 ],
																	"style" : "",
																	"text" : "get lable"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-12",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 175.5, 171.0, 30.0, 22.0 ],
																	"style" : "",
																	"text" : "t b l"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 4,
																	"outlettype" : [ "dictionary", "", "", "" ],
																	"patching_rect" : [ 175.5, 285.0, 50.5, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0,
																		"parameter_enable" : 0
																	}
,
																	"style" : "",
																	"text" : "dict"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-16",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
																	"style" : ""
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-17",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 115.0, 486.0, 30.0, 30.0 ],
																	"style" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"source" : [ "obj-12", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"source" : [ "obj-12", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"source" : [ "obj-14", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-46", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-50", 0 ],
																	"source" : [ "obj-3", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-17", 0 ],
																	"source" : [ "obj-34", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-12", 0 ],
																	"source" : [ "obj-46", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-47", 0 ],
																	"source" : [ "obj-46", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-49", 0 ],
																	"source" : [ "obj-46", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-17", 0 ],
																	"source" : [ "obj-47", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-47", 1 ],
																	"source" : [ "obj-49", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-34", 0 ],
																	"source" : [ "obj-50", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-47", 0 ],
																	"source" : [ "obj-50", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 134.75, 495.0, 67.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"style" : "",
														"tags" : ""
													}
,
													"style" : "",
													"text" : "p getLable"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 82.75, 545.0, 65.0, 22.0 ],
													"style" : "",
													"text" : "pack i s"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 82.75, 394.0, 57.0, 22.0 ],
													"style" : "",
													"text" : "zl.slice 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 53.75, 67.0, 70.0, 22.0 ],
													"style" : "",
													"text" : "r refreshEp"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-70",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 135.0, 101.0, 22.0 ],
													"style" : "",
													"text" : "value thisModule"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-57",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 76.75, 611.0, 103.0, 22.0 ],
													"style" : "",
													"text" : "set 0 $1 $2, bang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 53.75, 230.0, 57.0, 22.0 ],
													"style" : "",
													"text" : "zl.slice 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-59",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 53.75, 257.0, 30.0, 22.0 ],
													"style" : "",
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-60",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 4,
													"outlettype" : [ "dictionary", "", "", "" ],
													"patching_rect" : [ 63.75, 294.0, 50.5, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 0,
														"parameter_enable" : 0
													}
,
													"style" : "",
													"text" : "dict"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 4,
													"outlettype" : [ "dictionary", "", "", "" ],
													"patching_rect" : [ 50.0, 198.0, 78.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 0,
														"parameter_enable" : 0
													}
,
													"style" : "",
													"text" : "dict Modules"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 172.0, 44.0, 22.0 ],
													"style" : "",
													"text" : "get $1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-22",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 83.75, 706.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 86.75, 264.0, 52.0, 22.0 ],
													"style" : "",
													"text" : "getkeys"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-11", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"order" : 1,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 1 ],
													"order" : 0,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 1 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-27", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-70", 0 ],
													"source" : [ "obj-27", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 1 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"source" : [ "obj-55", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-57", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"order" : 0,
													"source" : [ "obj-59", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 0 ],
													"source" : [ "obj-59", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 0 ],
													"order" : 1,
													"source" : [ "obj-59", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-60", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-60", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-59", 0 ],
													"source" : [ "obj-61", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"source" : [ "obj-70", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 666.0, 514.0, 83.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p EpisodeList"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 80.0, 682.5, 72.0, 22.0 ],
									"style" : "",
									"text" : "s refreshEp"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 0,
									"cols" : 1,
									"colwidth" : 100,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"grid" : 0,
									"hcellcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"hscroll" : 0,
									"id" : "obj-51",
									"maxclass" : "jit.cellblock",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "list", "", "", "" ],
									"patching_rect" : [ 669.0, 604.0, 71.5, 130.5 ],
									"presentation" : 1,
									"presentation_rect" : [ 195.0, 46.941742, 97.270477, 108.058258 ],
									"rowheight" : 22,
									"rows" : 2
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 561.0, 294.0, 37.0, 22.0 ],
									"style" : "",
									"text" : "clear"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-58",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 50.0, 304.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1.0, 184.5, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 338.0, 101.0, 22.0 ],
									"style" : "",
									"text" : "value thisModule"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 56.0, 375.0, 166.0, 22.0 ],
									"style" : "",
									"text" : "addEpisode $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 234.0, 300.0, 61.0, 22.0 ],
									"style" : "",
									"text" : "route text"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 190.5, 435.0, 136.0, 22.0 ],
									"style" : "",
									"text" : "value newModuleName"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 18.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 467.0, 261.0, 218.0, 27.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 34.5, 212.5, 104.0, 27.0 ],
									"style" : "",
									"text" : "add module",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"blinkcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"id" : "obj-7",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 435.0, 261.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1.0, 210.5, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"autoscroll" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.19 ],
									"bordercolor" : [ 0.376471, 0.384314, 0.4, 0.0 ],
									"fontsize" : 18.0,
									"hint" : "This will be the name of a new module",
									"id" : "obj-66",
									"lines" : 1,
									"maxclass" : "textedit",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "int", "", "" ],
									"outputmode" : 1,
									"parameter_enable" : 0,
									"patching_rect" : [ 234.0, 261.0, 196.0, 29.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 145.270477, 212.5, 171.0, 27.0 ],
									"style" : "",
									"tabmode" : 0,
									"text" : "(NewModuleName)",
									"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
									"wordwrap" : 0
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 18.0,
									"id" : "obj-48",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 669.0, 571.0, 97.0, 27.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 195.0, 17.941742, 62.0, 27.0 ],
									"style" : "",
									"text" : "Lable"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 18.0,
									"id" : "obj-47",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 581.0, 571.0, 97.0, 27.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1.0, 12.0, 97.0, 27.0 ],
									"style" : "",
									"text" : "Modules"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"rect" : [ 1449.0, 553.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 7,
															"minor" : 3,
															"revision" : 4,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-50",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 50.0, 140.0, 43.0, 22.0 ],
																	"style" : "",
																	"text" : "del 10"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-49",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 111.0, 100.0, 30.0, 22.0 ],
																	"style" : "",
																	"text" : "t b l"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-46",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 124.0, 156.0, 87.0, 22.0 ],
																	"style" : "",
																	"text" : "value modPos"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-19",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 124.0, 215.0, 74.0, 22.0 ],
																	"style" : "",
																	"text" : "prepend set"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-54",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 111.0, 40.0, 30.0, 30.0 ],
																	"style" : ""
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-55",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 124.0, 297.0, 30.0, 30.0 ],
																	"style" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-55", 0 ],
																	"source" : [ "obj-19", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"source" : [ "obj-46", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-46", 0 ],
																	"source" : [ "obj-49", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-50", 0 ],
																	"source" : [ "obj-49", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-46", 0 ],
																	"source" : [ "obj-50", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-49", 0 ],
																	"source" : [ "obj-54", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 41.5, 370.0, 55.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"style" : "",
														"tags" : ""
													}
,
													"style" : "",
													"text" : "p setcell"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "", "" ],
													"patching_rect" : [ 116.5, 77.0, 40.0, 22.0 ],
													"style" : "",
													"text" : "t b l l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "" ],
													"patching_rect" : [ 36.25, 181.0, 65.0, 22.0 ],
													"style" : "",
													"text" : "unpack i s"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 36.25, 227.0, 53.0, 22.0 ],
													"style" : "",
													"text" : "zl.group"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 41.5, 255.0, 63.0, 22.0 ],
													"style" : "",
													"text" : "maximum"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 41.5, 333.0, 34.0, 22.0 ],
													"style" : "",
													"text" : "0 $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 129.5, 116.0, 58.0, 22.0 ],
													"style" : "",
													"text" : "listfunnel"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 129.5, 146.0, 70.0, 22.0 ],
													"style" : "",
													"text" : "set 0 $1 $2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 208.0, 145.0, 91.0, 22.0 ],
													"style" : "",
													"text" : "rows $1, cols 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 208.0, 116.0, 39.0, 22.0 ],
													"style" : "",
													"text" : "zl.len"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-41",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 129.5, 22.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-42",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 245.75, 386.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-14", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-14", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"order" : 1,
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"order" : 0,
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 550.333313, 439.0, 73.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p keystocell"
								}

							}
, 							{
								"box" : 								{
									"automouse" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 0,
									"cols" : 1,
									"colwidth" : 180,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"grid" : 0,
									"hcellcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"hscroll" : 0,
									"id" : "obj-6",
									"maxclass" : "jit.cellblock",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "list", "", "", "" ],
									"patching_rect" : [ 585.5, 604.0, 76.0, 69.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1.0, 46.941742, 188.5, 108.058258 ],
									"rowheight" : 22,
									"rows" : 16
								}

							}
, 							{
								"box" : 								{
									"data" : 									{
										"TransientDominion" : 										{
											"1" : 											{
												"frame" : "conductor",
												"countIn" : 2,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=1 5 5 4 4 4 3 5 5 4 4 4 3 4",
												"lable" : "A",
												"textMsg" : "Rehersal_A",
												"TransientDominion" : ""
											}
,
											"ensemble" : "TransientDominion",
											"2" : 											{
												"frame" : "conductor",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=14 5 4 4 4 5 3 3 4",
												"lable" : "B",
												"textMsg" : "Rehersal_B"
											}
,
											"3" : 											{
												"frame" : "conductor",
												"countIn" : 3,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=22 3 3 4",
												"lable" : "C",
												"textMsg" : "Rehersal_C"
											}
,
											"4" : 											{
												"frame" : "conductor",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=25 5 4 4 4 4 5 3 5 3 4 4",
												"lable" : "D",
												"textMsg" : "Rehersal_D"
											}
,
											"5" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=35 4 4 5 4",
												"lable" : "E",
												"textMsg" : "Rehersal_E"
											}
,
											"6" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=39 4 5 4 4 5 4",
												"lable" : "F",
												"textMsg" : "Rehersal_F"
											}
,
											"7" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 90,
												"seq" : "M=45 4 4 3 5 5 4 4 4 3 5 4",
												"lable" : "G",
												"textMsg" : "Rehersal_G"
											}
,
											"8" : 											{
												"frame" : "text",
												"countIn" : "0",
												"duration" : 0,
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "ANext",
												"textMsg" : "A"
											}

										}
,
										"IndelibleStamp" : 										{
											"1" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : 0,
												"timeCode" : "seconds",
												"tempo" : 72,
												"seq" : "M=1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4",
												"lable" : "A",
												"textMsg" : "Rehersal_A"
											}
,
											"ensemble" : "IndelibleStamp",
											"2" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : 0,
												"timeCode" : "seconds",
												"tempo" : 72,
												"seq" : "M=36 Ls 4 Lei",
												"lable" : "bVamp",
												"textMsg" : "Rehersal_B"
											}
,
											"3" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 72,
												"seq" : "M=42 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4",
												"lable" : "c"
											}
,
											"4" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 72,
												"seq" : "M=1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4  Ls 4 4 4 4 4 4 Lei",
												"lable" : "a+bVamp"
											}
,
											"5" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 72,
												"seq" : "M=36 Ls 4 4 4 4 4 4 Le1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4",
												"lable" : "b+c"
											}
,
											"6" : 											{
												"frame" : "conductor",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "M=1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4  Ls 4 4 4 4 4 4 Le1 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4",
												"lable" : "a+b+c"
											}
,
											"7" : 											{
												"frame" : "blink",
												"countIn" : 0,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "cuttoff"
											}

										}
,
										"Unweaving" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "a"
											}
,
											"ensemble" : "Unweaving",
											"2" : 											{
												"frame" : "metro",
												"countIn" : 3,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 108,
												"seq" : "",
												"lable" : "b"
											}

										}
,
										"Watchmaker" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "CountIn"
											}
,
											"ensemble" : "Watchmaker",
											"2" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "CuttOff"
											}

										}
,
										"CelestialTeapot" : 										{
											"1" : 											{
												"frame" : "metro",
												"countIn" : 6,
												"duration" : 0,
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "a"
											}
,
											"ensemble" : "CelestialTeapot",
											"2" : 											{
												"frame" : "metro",
												"countIn" : 3,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "b"
											}
,
											"3" : 											{
												"frame" : "metro",
												"countIn" : 2,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "c"
											}
,
											"4" : 											{
												"frame" : "metro",
												"countIn" : 6,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "d"
											}
,
											"5" : 											{
												"frame" : "metro",
												"countIn" : 6,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "e"
											}
,
											"6" : 											{
												"frame" : "metro",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 54,
												"seq" : "",
												"lable" : "f"
											}

										}
,
										"Contagion" : 										{
											"1" : 											{
												"frame" : "metro",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 332,
												"seq" : "",
												"lable" : "a"
											}
,
											"ensemble" : "Contagion",
											"2" : 											{
												"frame" : "metro",
												"countIn" : 7,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 332,
												"seq" : "",
												"lable" : "b"
											}
,
											"3" : 											{
												"frame" : "metro",
												"countIn" : 6,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 332,
												"seq" : "",
												"lable" : "c"
											}
,
											"4" : 											{
												"frame" : "metro",
												"countIn" : 6,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 332,
												"seq" : "",
												"lable" : "d"
											}
,
											"5" : 											{
												"frame" : "metro",
												"countIn" : 7,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 332,
												"seq" : "",
												"lable" : "e"
											}

										}
,
										"Permanence" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Agitated"
											}
,
											"ensemble" : "Permanence",
											"2" : 											{
												"frame" : "timer",
												"countIn" : "0",
												"duration" : 5,
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Ethereal"
											}
,
											"3" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Desultory"
											}
,
											"4" : 											{
												"frame" : "blank",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Vertiginous"
											}

										}
,
										"Shadows" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "start"
											}
,
											"ensemble" : "Shadows",
											"2" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "stop"
											}

										}
,
										"Tyrannei" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A"
											}
,
											"2" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B"
											}
,
											"ensemble" : "Tyrannei",
											"3" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "C"
											}
,
											"4" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "D"
											}
,
											"5" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "E"
											}
,
											"6" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "F"
											}

										}
,
										"Pascal" : 										{
											"1" : 											{
												"frame" : "metro",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 138,
												"seq" : "",
												"lable" : "A"
											}
,
											"ensemble" : "Pascal",
											"2" : 											{
												"frame" : "metro",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 138,
												"seq" : "",
												"lable" : "B"
											}
,
											"3" : 											{
												"frame" : "timer",
												"countIn" : 4,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 138,
												"seq" : "",
												"lable" : "C"
											}
,
											"4" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Cuttoff"
											}

										}
,
										"FleetingSym" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A-1"
											}
,
											"ensemble" : "FleetingSym",
											"2" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A-2"
											}
,
											"3" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A-3"
											}
,
											"4" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A-4"
											}
,
											"5" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A-5"
											}
,
											"6" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B-1"
											}
,
											"7" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B-2"
											}
,
											"8" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B-3"
											}
,
											"9" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B-4"
											}
,
											"10" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B-5"
											}

										}
,
										"GloriousAccidents" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A"
											}
,
											"ensemble" : "GloriousAccidents",
											"2" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B"
											}
,
											"3" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "C"
											}
,
											"4" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "D"
											}
,
											"5" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "E"
											}
,
											"6" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "F"
											}
,
											"7" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "G"
											}
,
											"8" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Cuttoff"
											}

										}
,
										"Ignorance" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "A"
											}
,
											"ensemble" : "Ignorance",
											"2" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "B"
											}
,
											"3" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "C"
											}
,
											"4" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "D"
											}

										}
,
										"SplendidTorch" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Start",
												"textMsg" : "Splendid_Torch"
											}
,
											"ensemble" : "SplendidTorch",
											"2" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Stop"
											}

										}
,
										"Sçay-je" : 										{
											"1" : 											{
												"frame" : "timer",
												"countIn" : 5,
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Start"
											}
,
											"ensemble" : "Sçayje",
											"2" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Stop"
											}

										}
,
										"Geometry" : 										{
											"1" : 											{
												"frame" : "metro",
												"countIn" : "0",
												"duration" : 4,
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Start"
											}
,
											"ensemble" : "",
											"2" : 											{
												"frame" : "blink",
												"countIn" : "0",
												"duration" : "0",
												"timeCode" : "seconds",
												"tempo" : 60,
												"seq" : "",
												"lable" : "Stop"
											}

										}

									}
,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 511.0, 403.0, 78.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "dict Modules"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 439.0, 87.0, 22.0 ],
									"style" : "",
									"text" : "addModule $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 50.0, 627.5, 109.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "moduleManager",
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "js moduleManager"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 507.0, 375.0, 52.0, 22.0 ],
									"style" : "",
									"text" : "getkeys"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"border" : 10,
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-135",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 23.5, 540.0, 281.0, 337.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 328.270508, 12.0, 518.0, 259.0 ],
									"proportion" : 0.39,
									"rounded" : 20,
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-150",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 611.5, 375.0, 36.0, 22.0 ],
									"style" : "",
									"text" : "write"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 754.0, 473.0, 50.0, 22.0 ],
									"style" : "",
									"text" : "clear"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.701961, 0.415686, 0.886275, 1.0 ],
									"id" : "obj-121",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 568.375, 554.0, 885.75, 346.0 ],
									"presentation" : 1,
									"presentation_rect" : [ -5.0, -1.0, 903.270508, 289.5 ],
									"proportion" : 0.39,
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"id" : "obj-13",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 888.0, 224.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ -30.0, 259.5, 928.270508, 84.0 ],
									"proportion" : 0.39,
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.701961, 0.415686, 0.886275, 1.0 ],
									"id" : "obj-134",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 23.5, 114.0, 774.5, 365.0 ],
									"proportion" : 0.39,
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.701961, 0.415686, 0.886275, 1.0 ],
									"id" : "obj-85",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 59.75, 114.0, 774.5, 365.0 ],
									"proportion" : 0.39,
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 669.0, 574.0, 52.0, 22.0 ],
									"style" : "",
									"text" : "clear $1"
								}

							}
, 							{
								"box" : 								{
									"attr" : "rows",
									"id" : "obj-1",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 669.0, 574.0, 150.0, 22.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-124", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"source" : [ "obj-141", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"order" : 0,
									"source" : [ "obj-142", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"order" : 1,
									"source" : [ "obj-142", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-143", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-161", 0 ],
									"order" : 1,
									"source" : [ "obj-149", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"order" : 0,
									"source" : [ "obj-149", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"order" : 2,
									"source" : [ "obj-149", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"order" : 0,
									"source" : [ "obj-161", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 1,
									"source" : [ "obj-161", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-163", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-163", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-2", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 1 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-32", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-50", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 1 ],
									"order" : 1,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"order" : 0,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-163", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"order" : 0,
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 1,
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-74", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"order" : 1,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"order" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-160", 0 ],
									"source" : [ "obj-83", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-160", 0 ],
									"order" : 0,
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"order" : 1,
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-91", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-9", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"source" : [ "obj-90", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"source" : [ "obj-91", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 1 ],
									"source" : [ "obj-92", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-93", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-94", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-95", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 27.0, 35.459106, 908.0, 339.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 157.459106, 944.0, 340.0 ],
					"varname" : "bpatcher",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 788.0, 762.0, 50.0, 22.0 ],
					"style" : "",
					"text" : "open"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-33", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-76", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-12" : [ "live.text[2]", "live.text[2]", 0 ],
			"obj-35::obj-97::obj-37" : [ "live.text", "live.text", 0 ],
			"obj-35::obj-97::obj-38" : [ "live.text[1]", "live.text", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "moduleManager.js",
				"bootpath" : "~/Dropbox/Max/Projects/CueWeb/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "speedThin.maxpat",
				"bootpath" : "~/Dropbox/Max/Projects/CueWeb/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "listDelay.maxpat",
				"bootpath" : "~/Dropbox/Max/Projects/CueWeb/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
