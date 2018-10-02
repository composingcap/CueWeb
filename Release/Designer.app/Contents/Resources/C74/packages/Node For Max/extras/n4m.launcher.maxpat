{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 207.0, 170.0, 926.0, 740.0 ],
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
		"enablehscroll" : 0,
		"enablevscroll" : 0,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 353.5, 331.5, 85.0, 38.0 ],
					"text" : "node.debug\n",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-7",
					"linecount" : 12,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 138.0, 239.5, 194.0 ],
					"presentation_linecount" : 12,
					"text" : "NodeJS is an efficient Javascript engine that has become popular for running server side code. The node.script object runs a node process that you can communicate with through the patcher. \n\nAlong with support for NPM (Node Package Manager), node.script opens up a vast landscape of functionality to Max with just a few lines of code.",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"id" : "obj-4",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 271.5, 248.5, 167.0, 51.0 ],
					"presentation_linecount" : 3,
					"text" : "Create a [node.debug] object for this readymade status view"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-6",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "n4m.monitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 440.5, 134.5, 400.0, 220.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 328.5, 138.0, 65.0, 22.0 ],
					"text" : "script stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 255.5, 138.0, 66.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 255.5, 210.0, 166.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"node" : "",
						"npm" : "",
						"watch" : 0
					}
,
					"text" : "node.script maxnode-basic.js"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-18",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 185.0, 574.0, 282.0, 53.0 ],
					"presentation_linecount" : 3,
					"text" : "NodeJS has great tools for working with the file system in ways that are way more difficult with standard Max objects.",
					"textcolor" : [ 0.439215987920761, 0.749019980430603, 0.254902005195618, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-17",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 185.0, 503.0, 279.5, 38.0 ],
					"presentation_linecount" : 2,
					"text" : "Play snake! Building simple apps can be easy with Node.",
					"textcolor" : [ 0.439215987920761, 0.749019980430603, 0.254902005195618, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 185.0, 432.0, 284.5, 38.0 ],
					"presentation_linecount" : 2,
					"text" : "Capture gestural input from a web interface and use it to generate media from Max",
					"textcolor" : [ 0.439215987920761, 0.749019980430603, 0.254902005195618, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-14",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 185.0, 644.5, 284.5, 53.0 ],
					"presentation_linecount" : 3,
					"text" : "Max and NodeJS can cover a lot of use case, enable fun projects etc. Browse the online repository of examples",
					"textcolor" : [ 0.439215987920761, 0.749019980430603, 0.254902005195618, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.321002, 0.201898, 0.004922, 1.0 ],
					"fontsize" : 20.0,
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3.0, 383.965514999999982, 483.0, 29.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 386.0, 357.0, 193.0, 51.0 ],
					"text" : "Node for Max Examples",
					"textcolor" : [ 0.998246014118195, 0.911889970302582, 0.57582700252533, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.588235, 0.682353, 0.780392, 0.0 ],
					"button" : 1,
					"fontsize" : 20.0,
					"htabcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"id" : "obj-9",
					"margin" : 5,
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3.0, 418.965514999999982, 172.0, 287.068969999999979 ],
					"presentation" : 1,
					"presentation_rect" : [ 391.75, 393.0, 161.0, 123.0 ],
					"rounded" : 9.0,
					"spacing_x" : 12.0,
					"spacing_y" : 14.0,
					"tabcolor" : [ 0.13158, 0.042937, 0.00081, 1.0 ],
					"tabs" : [ "Squiggle", "Snake", "File System", "More Examples" ],
					"textcolor" : [ 0.828645, 0.654957, 0.550446, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 119.0, 193.0, 1205.0, 435.0 ],
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
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 876.0, 107.0, 287.0, 22.0 ],
									"text" : "examples/n4m-downloader/n4m.downloader.maxpat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 645.0, 107.0, 225.0, 22.0 ],
									"text" : "examples/filesystem/n4m.max-fs.maxpat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 414.0, 107.0, 200.0, 22.0 ],
									"text" : "examples/snake/n4m.snake.maxpat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 183.0, 107.0, 225.0, 22.0 ],
									"text" : "examples/squiggle/n4m.squiggle.maxpat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 234.66668701171875, 242.0, 137.0, 22.0 ],
									"text" : "combine s / @triggers 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 234.66668701171875, 321.0, 79.0, 22.0 ],
									"text" : "prepend load"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 234.66668701171875, 293.0, 130.0, 22.0 ],
									"text" : "conformpath max boot"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 234.66668701171875, 267.51025390625, 79.0, 22.0 ],
									"text" : "absolutepath"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 234.66668701171875, 345.0, 53.0, 22.0 ],
									"text" : "pcontrol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 183.0, 67.0, 943.0, 22.0 ],
									"text" : "route 0 1 2 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 242.0, 79.0, 22.0 ],
									"text" : "absolutepath"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 15.0, 35.489745999999997, 60.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 65.0, 207.489745999999997, 137.0, 22.0 ],
									"text" : "combine s / @triggers 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 65.0, 139.0, 79.0, 22.0 ],
									"text" : "combine s ../"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 67.0, 34.0, 22.0 ],
									"text" : "path"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 15.0, 107.0, 69.0, 22.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 322.489746000000025, 123.0, 35.0 ],
									"presentation_linecount" : 2,
									"text" : ";\rmax openfile node $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 65.0, 272.489746000000025, 130.0, 22.0 ],
									"text" : "conformpath max boot"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-38",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 183.0, 17.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-1", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"midpoints" : [ 74.5, 267.0, 74.5, 267.0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 24.5, 90.0, 24.5, 90.0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 244.16668701171875, 267.0, 244.16668701171875, 267.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"order" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"midpoints" : [ 74.5, 162.0, 74.5, 162.0 ],
									"order" : 1,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"midpoints" : [ 244.16668701171875, 291.0, 244.16668701171875, 291.0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"midpoints" : [ 74.5, 231.0, 74.5, 231.0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"midpoints" : [ 24.5, 60.0, 24.5, 60.0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"midpoints" : [ 244.16668701171875, 318.0, 244.16668701171875, 318.0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 192.5, 48.0, 192.5, 48.0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 74.5, 297.0, 74.5, 297.0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 244.16668701171875, 345.0, 244.16668701171875, 345.0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"midpoints" : [ 74.5, 132.0, 74.5, 132.0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 3.0, 713.534485000000018, 97.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p ProjectLaunch"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"data" : [ 14079, "png", "IBkSG0fBZn....PCIgDQRA..AbD..D.UHX....vsK3uW....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wY6cmGXTUdu9.+YlIKSlDRHISRHPRXGRPnfgxhBgpVArpTVr1pPbqEC850qsxuq8ZQskVE06kdgpsWpDoUECHVUPaUjEErjfDhlHQPRXI.YgDRXxxjkIY1x76ORmzDxLm4r7dl4bl46m+QHmy7dNBgm7d999dde03xkKWfPHDxfnMPeCPHDhRDENRHDhGPgiDBg3AT3HgPHd.ENRHDhGPgiDBg3AT3HgPHd.ENRHDhGPgiDBg3AT3HgPHdPXA5a.RvspqoFXoKK8+6MDsAL5LxH.dGQH7CENRXFSlLgJpnR7kkVFpolZfISM60y0nwDQFYjAxJqLw2dlYCiFM5GuSIDeSCsvSPjpJpnRru8e.TVYeknairy95wss3EgrxJSFdmQHhGENRDMSlLgsl+1PkUdFl0lYl4jwZxa0TOIIAbT3HQT129O.1yddeXwR2LusMXHJr3EuHrhkuLl21DBeQgiDAo5ZpAETvNYZuE8lLxHcjWdqlF.GR.AENR3scum2G6YOefe+5t3EuPrhkuLXvfA+90lD5hBGI9T00TCxO+sgZpo1.18fQiIh7d3USCXCwugBGIdkEKV9m0Vz+2aQuI6rudrl7VM0KRhriBGIdTEUTIx+U2FmyUw.ECFhB4tpUhbxY9A5aERPLJbjLHVrXA6dOuO1+9OXf9Vwmno8CQNQgij9IW8VLiLRu+GCl0ixMMseHxEJbj.KVrfsl+1jza3x0Jm4OOjSNy2iCfR00TC1+9N.JrnixrqGMseHrFENFhqzRKC4+paiYSlagLpxUTQknfcrSlNJ3Ke4KE21hWDMfMDIiBGCQIG8VTryGQVO+Ioo8CgEnvwPPr9U+iEORqb7dZmy7mGxM2UR8hjHJT3XHD4H.Z4KeoLcvPXcvsACQg7d3UiYNyrYR6QBcPgigHTh8VzaLYxDdyB1ISejeZZ+PDJJbLHGqWnHLXHJr7kuLbaKdQLo83BqGrH+48NQ8iBGChw5A5HPz6K4XRoSS6GBePgiAgX8BEgRnGWxwDTml1ODtPgiAYXcuEyN6qG2WtqTwTqNZZ+P7WnvwfDrtmUJ4Q4UNVvco0LRx0hBGU4jiZxoVVVvno8CQNQgipXrt2hFMlHxcUqTUENHGS6GkVoDHAFT3nJjEKVPAErSltvMn1erRZZ+PXMJbTkIPtPQnzIG+PiLybxH2bWIMseBAQgipDJoEJBkN4ZZ+PqYjgVnvQUfBKrHTvN1op3U+SoPN1+aBl5kMw2nvQEL0vBEgRmbryIFr1iaxfQgiJTpoEJB0.ZZ+PDJJbTgg08VjF00+E4nm3pk4DJQ3nvQEjfgEJB0.ZZ+P3CJbTAHXbghPoStl1OzOLJ3AENFfEruPQnzQS6Gh2PgiAHgRKTDJcx0ZFYtqZkzz9QEiBG8yBkWnHT5no8CYfnvQ+HZghPcnue30AX5qnI82SpOT3ne.sPQn9PS6GBENJynEJB0MV+paRyj.0CJbTlPKTDAOji+tjl1OJeT3nLPNVnHnQ9LvSNlgAKdwKhl1OJTT3HCQKTDA+nsJ1PGT3HiPKTDgVno8SvOJbThjiEJB5QsTOnsJ1fWT3nDv5ZKREoWchl1OAmnvQQpvBKB4+p+YlzVzz6H3fbrlQl6pVIxIm4yj1iHLT3nHTZokge+K8GXRaQ8VL3BMseBdPgiBjEKVviu1+SI26.ZghH3VokVFJXG6jl1OpXT3n.ke9aSxuFfT8jBMPS6G0MJbT.LYxDd709Dh9yS8VLzTEUTIJXG6joS6mku7khaawKh9ArxHJbT.129O.1wNdKQ8Yo4vFgl1OpKT3n.7TO8uRv+ze5afICT00TCJnfcxzo8SNyedH2bWI8CdYLJbT.tu6+gDz4S8Vj3MzVEqxGENxSUTQk34eg+ade9Yl4jwSstmTFuiHpclLYBuYA6jl1OJTT3HOIzvwMuoMFR+MnGnphvWd4xwELcQTWCmt+udZoNELNiiEKMqEiqKoID.uCUNnsJVkIJbjmDR3nACQgs9JaQluiTlJttSfM9oaBc0oIedtok5TvpmctXtoMC+vclxFMseTdzs90u90GnuITCLYxDumei1s6.IYzHF8nCc9lx55nQr1OZ83u8k6B1sYgWel167p3yNymhSa9xXxIOADajwHy2kJWgGd33a8slFxJyLQEUVIS5EoYysiCcnOC.fFPPQf54n.HjAjwfgnvFdteaP+iV2t0Nwe73uANxI+HI0NgGQTXgSao3Au9UDRGR5FMseB7ndNJ.kVZYvr41404Z2tCTQEUhaXtyAgGd3x7cVfwqchciM7w+VbwATSQwpWmNv4Z3TXum8vHrHLfoDhWOxrxJSLyYlMpu9FXxqfnEKciBK5nvhEKXBSX7AseOIKQgiBfYylEz7Syr41g41LGzM8JJttSfe1d9E3qppHzqSGLsssayBJ6RGGeVceERdXIizhcDLs8USFdbwgEjy7gACFPUUUEraW5+YcUUcAbnCcXLxTSEibjoxf6xfWziUK.h80GbUq5dCJF4v55nQr9CtwAM5yxsrmzMgGYtO.RaXo32tlJQx0ZF48k6JC5K8iXQgiBjXW3Idtm62nZG0v1s1Id8uZ2Xuktq.x02c8Her4d+AjquRBMse7envQAxjIS3od5ekf+lSCFhBadS+NU2aKy6c58iW+n4C61Xy+XTJhNFiXMyOOrnwGZu3uZwhETPA6TxqNTCTlYNYjatqT09CvkCT3nHH1E61LxHcrgm62JC2QrWw0cB7xEsUzRyUGnuUFhzRcJ3wy4mFxOIxY8VEK.saWNPT3nHUvN1onlvt4L+4g7xa0xvcDaTWGMhMdjsfybouHPeq3SYOoaBO4BdjP5o9iEKV9mum1zz9g0nvQIXCO+KJpBjm2C+STb6KHxYcE0FFPTwpEVL2Kb4jssMUOx9PaUrrGENJAhcKSvfgnv5V2SNn56zYclgCK1..PLoObDVT9u4glbUWQM5.LDmVjZhZP3gAX2APCM6Bc0RuL85.P0izMVuZ+XzXhH2UsxftoiFePgiRT00TCd5m9WKnOyHhKILkjFGldrSBc2P6vYO1834EcpCGQOpgi3lfQjzLRi4AlxYcEiLVMXDIoAFhPyPNlEatvkurK3nG1+sdT8HosJVVgBGY.9rMspOhHwTRZBHKmiDFrJtPtj+1iAi41uNnOQo8Mn00QiXKE+Fnry9YRpc7jvzqAIljFjPLCMT7Z0RmtvUanWzKamG4..XAS6NviNmGHjtdjzz9QZnvQFgq4+30MhIgY4XbHbmZYx0Rrgjtqq3AO4Gv7GgVaX.wlnFjZBB++GqyTunyVbIK0ibEyZU3glwJXaCqhPaUrhGENxPW61nf9HhDeOiyEF6NZleszoObLtkMcj5MLVdc9u2o2O14WrCdsThIDWacEEK6N.pqodQOlY+2NFcLFwS7cWaH8RiFMseDNJbjgF3.zLh3RB2V3yjY8VzaR9aOFj48MKud7hq6DXakTfr7J+wUcEEK4tdjqegOQH6qhnbslQl6pVYP4z9gBGYrJpnR7W1xewuDL5lmBHky5JpKBMvXJ7qthhEUOR4CMse3GJbjw5rNy3Du7mhdsx3Bn4CCLf7kKd6xRcE0nCHNihqthhUMM5R1lejg50irudQd.ZZ+3ET3HC4na633q+i75TyQt0xhCCu4U2CyqqH.PzIH85JJV1c.Tai8BqsS0ij0no8i2QgiLzIdoOCsegq52utWcXsg+ZhECyQz.ya6HhVCRcDrsthhU6c6BMdE4odjSdLyBOwBdjP15QVXgEgB1wNY5z9I2UsRE2aBlPPgiLRCG6h3b65K8qWSqgaG+8T+RbV8Ux711eTWQw5ps6Bszn7TOxael2SH6V0.MseFLJbjQN952Kr1ZWRpMZReGHld0CC178jD+vi7j3yi9qgFM1jz07ZEHpqnXIm0i7AmWd3tlxhYaCqRv5o8iACQgEu3Eo5l1OT3HCH1dMZWWu3ahnN7MMcNzbGsNnicciZxXZQNFjbOCaPe8yjP83ciuHnQmzBh8j.YcEEK4rdjIj3nwiM+0DRVORZqhkBGYhRewChtZnMA8YpxfIb3ZKAVrx81X53SdLXQQlMZyP6xVcECSuFLpQoLpqnXQ0iTdTQEUhB1wNCIm1OT3nD0SyVPI+VgssjVRjW.Eewx304FVjgA8S1.tRBWVL2dbRaX.IkpVEYcEEqFZoWzdytn5QxXghaUrT3nDU6gNKt3GTNuO+pLXBez4+LdctQOwnQCodUnUKaKplFc.wjfFjlQkecEEC2KMZT8HYqPso8CENJQeS9GEM+M0yqy0ttdwazz974iRGyHhFWd7lftvYe2ezGmFjVxZUU0UTrrXyEtxUcIK0iLsTmBV8ryMjrdjrdMiToNsenvQIRHiRcEQ0.NXUdeSQRerQByYZE1MzAqt85WvPcEEqV5zEZ9pxS8HCU25XCEl1OT3nDcje16v6y8854n3xsLzATIrHCCZmP3nkjZhk2Z.H3rthhkbUOR2aUCgh0irzRKCEricxzo8iRYMijBGkHgDN9x0+tC4qIm0UzPbZQFoPghCjbVOxniwHV4rVUHW8HCVm1OT3nDI1vQ4rthQFqFjdJgF0UTrrXyEZ3Jtfstn5QxJxwz9IPtlQRgiRjPCG0GajnqI3DcGaq99CHPgoWCRYDZPrQQ8VjuZoSWvTitfSaT8HYEVOsexHizwSstmzuOh1T3nDw2vQqgaG6JlCiKmj7LeESHEsHoXoPQwpgV5ElMIOaUCghacrUWSMnfB1Iyl1OFMlH94+7Gyu9X1T3nDcz+q22mKQYmHoKhOZ3etr7dPS0UjcnsNV1ikS6GOskFKmnvQIhqkorpiqI71I74vQ3r+Qno5JJej65QFps0wZxjI7lErSlLse7mOhMENJQW7i9FT6AF79yRGQYA6I4RPcQdQle8n5J5+H20i7IWviDRM0eX0VEalYNY7Tq6IYzck2QgiRTam8p3q++9L.zWcE+7jpDGKF1utNJks9ThzP0ijcX0z9weLJ1T3HCb70uWb7vNkrVWQ01RIVvF4dqiMTqdjrXMibyaZix5aSCENJQEW2Iv+6AyGcX4RLuskis9ThzPacrrkTl1OYm80iG+m+XL9N5egBGEI4bqOML8ZPhIoL2hBH8g15XYGoLseV2u7+R1V1ynvQApcqchW+q1srr0mR0UT8oNS8hNaQdpGYn1VGa94uMTXQdegYwSxY9yC4k2pkk6GJbT.duSueryuXGLeqOkpqn5lbWOxPosNVwDPt0W4+SVlZOT3HOTbcm.aqjBPcMbZeexBjRZqOkHMT8HkNKVrfm5o+UBZfZx6g+IxxZAIENxg1s1IdwirEYothJ4s9ThzP0iTZpnhJwy+B+2797kqAlgBG8hWt3sKK0UTMs0mRjF4bqiMXudja34eQdO.MFLDE15qrEleOP+KzqwAppHbWuw8i8V5tXdvXzInEieb5nfwPDYjhFL9woCQx3EDD615Fu8Q2FV4t92Pw0cBl11JEBYwt0hktQ00TCyuGnx++O8MW87XyE9JTcEILU3gALtQoEsm.625Xao4pw5+f0ETt0wNyYlMLXHJd+pFZoKt2WlDiP9tvzt0Nw5N3+C9+8WeLlGLpKBMHkz0hwmgVJXLDWrQoASbrZgwQoEZYbWRNyk9Br5s+P3kKd6ncqcx1FO.ZlYmMuO2JprRle8Co64HUWQh+VRwpAIEqNYodj6szcgCdxOHnYqi0XRA1MZqPxvwCTUQXqEkOymuh.gVa8oDwKiTz.6IpC01XuLcqi0tstwqd3WBu2W+93wl+ZBYlejxgPp+IbcczHV+A2nrTWwP4s9Th33tdjsDG625XClqGo+RHQ3X6V6D+wi+F3Hm7iXdaSa8oDoJgX5a9tJGacrm4ReAV8kdHb6y7dBI25Xkhf9vwW6D6F69K1grTWwXRPCRyHUWQBajZBZgwXkmsN18V5tv+3LeRH4VGqXEzFNVbcm.a7S2DUWQhpR3g0W8HsDuVbkq5ho0irqNMgW8vuD93JOXH4VGqPEz8Ouo5JRBFXHBMXbiRirTOx5Z3zX8ev5BY25X4qflvQ4tthzVeJIPPNqGYYm8yv+1kNNV3zVJUOROHnHb7.UUD9CGZyxRcEos9ThRv.qGIK25Xsaq69qGYn1V0fun5CGW2A+ejkUMGZqOknzLv5Qx5sN1t5zD1z9dd7kS6Nv5Vv+NyZW0LU8+zWNBFos9ThRmgHzfwmgFYYqi0cYon.RU76V8qchcyzfQsgAXbTZwDGqVJXjnJjPLZvjFuVL7Tz.M5XW6djS9Q3.UUD6ZPUJUY3X6V6D69K1ASZKM55aoDaxSTGMfKDUoT+mKEdQyv2k+sVT9AUKhEhgpLb70+pcyjAeIxX6a81iFvEhZm65QN5wqEQDsz+94t5zDNXUBaubIXipLb7eblOQRe9vz22RI13FEMfKjfK8UORsHkz0BcRb939de86yn6J0IUWzv2b0yK525EZqOkDpv87iTJacrszb0r+FSEQ0kRzgHpCh65JNtwRaQAjPKoYru5QpONw0Kxf0sgA9P00ywRp6qEz4GYrZvHRhdk+HgtBOLfwNRsvhQW3xW1IbzC8uE3CUW3nPDldMXbih5oHgzVGNQas4D5z3BNBt+m8LC8mRDRPL2gh85j1AlEJJbjPBBQghRGENRHAQnPQ1gBGIjf.TnH6QgiDhJFEJJenvQBQEhBEkeT3HicCIey3GN00NnuVW1LisW9FvY6nBQ0l2xHuSrjLWyP95M0Ys3EJ4QDUa5K50oG2XJ2ZeW+wcOH5HhaHmSYW9Svk6nJTWGUI5+eyW7zedxWcYyLNzE1E..97F+DziydX4sF.j18mmTQSkf7O0y50iSgh9OT3nePzQDGt+o+TXyk7efls0Zf91gSSOgYi4LxEirRd197bydT2JxF8Ef5NH5P0+gx8sHuEcDw0+OTYIYtFTQSkfiW+9Q4sTR.9NS3nPQ+OJbzOI5HhC4MiMfMW5ZkkdvHUIFQ73tlzixqPQOwcPzRxbM3udpMgi0zgY7cnzkUxyFYk7rQEMUB93K75nVK0Fnuk7IJTLvgd8Q7iRNlzwcOgg93wAZSOgYimd9aWzAiWqe3TWKxapOCzqSOSZOVKqjmMV6b2BldBr4+ekCs0gSboZsgVZ1AELFfPgi9YYOpaE2xHuy.8sQ+tkQdm3Amwyv71MqjmMVyz+MJ1.R.fGbFOih5uK..r4fBEUJnvw.fkj4ZTD8Z4FR9l83.8vJiY3SAqY5+FYq8Ygkj4ZTTAjca0NEJpPP0bL.4tmxig5BfCPS5FRmWixp6Qj9ZGnkzMjNl3vmtWGIa2FyvmBt8L9QXu071R9d9Z4qQq+VF4chQMrwirG0sxY6rjLWCNWaky7ZPxmYSPWc2KZoUGvNC2jrHrA0yw.jniHNj6Tex.10eEY9nbd7K01owlJ9QvadlWxii.csVpEGp9ODOcQ4hiVM2qXzKbB4hIMrrjz8qXbn5+P7lm4kve5K9EnoN4N3yW+4Aq0U28hZq2FZrQ6TvnBEENF.MlgOEbeS9m42ut2Px2LFyvmhWO9kZ6zXqk+q4cOod2p9y3uW4V47btoQ+CDz8HKc1Np.atz0xY.4XF9TvMj7MK62KTnn5AENFfEHFflYm1s40i0kMynfS8hBd5Fcn5+PN6AYVIO6.RuGcqGm8fBN0Kv44Lsjmurc8oPQ0GJbTAXIYtFjtgz8KWqzMjNm8Z7PWXWhtNnGt1cy4w+VIeihpcYkZsTqOCvY8eOPghpWT3nBwZx9EPhQDurecl3vmNmGubShe63rYasxY3yLRU9erUe43Mb.NOtu9yGgvpCmTnnJFEN5mzkMy3RscZudb+0.zLpgMdudrK01ok7nmetVOoWOVzQDmeqGxdSsVpky+dfq+7Qnb4hBEUynvQ+nBN0KhtrY1qG28zdQNkVbS1qG6blJSxseccdNNOdB5SUxWCo5xlOqWOVBQOR+3cBQIilmi9IQGQbnYash24zuLmuQJKbB4hdbzkrs.NjbLduma83nKI299pmmIpOYIeMjpV5tQudrjLLJA0V8Xy6aHzYD+XwG7i49w3A.J9hGAuvgeNAccIxOpmi9Yk2RI9bZu3OGflApaFDNp1w0DZef5efVZU4sHhPXCJbL.3P0+gnrK+IbdN4N0eoh98RNTEM5ygNnvw.j247akyIkbxwjte+8RNpvh1ud8Th7VMgoPwPOT3X.h6IkLeFfFV93tbEHqmAgi9Z5H0bOMI4qgTkPTo30icUKWdP+dJTLzEMfLAP0ZoVdM.M95QvEh5LeFuNnLSzX1.RbAhHsXlHmGukdZPRsOKLp3ljWOVKcUO..5wpKb0lkVfXMsdQ7erGk252IgendNFfUdKkfCd9B37b70pJiPb4NpxqGaLCeJRtNmSL9o40i0kMyA7Ueae8FBUSamG02jcTeC1ndJFhiBGU.1aMuMpnI+y9Zx4ZqbNOt6MUKwPuN8XdidYd83mng.+VmvbRcQbd78UQwnGK85mtaHJYT3nBw1qXi9bY0hE70aHxsLt6QzuFi24XVEmG+qa5yEU6xJoaHcNCuK9hGAMzd89w6HhRFENpPvmUMFVoj51mWOl6WiQg9302Px2LmAOUzTIx112JenWmdj6T+kbdNEdg+ge5tgnFPgiJH0ZoV7WO0lj8qywZ5vb16Q2auA7chne6Y7i74pJ9mU86Jn6QVZRCKK73ybSb91A8MWobTT0E5GuqHJcznUqvbrlNLh+7IiENgbk0qytq7Oh0N2s30iOlgOEr14tEIuMI..bvyWP.oWi7caR..3OTzl8C2QD0DJbTAZu071XhFylyQUUpb2KUe0iurG0shrwsJ5MhqK01okk8OFf9ln7a9V96RtcdkB2jrTqQ99tUOPz6YsxA8X0JTEbpWT1Gfli0zg8464sT3d6VPI6UJbS3iOm2qAKIzEENpP0rsV8KCPygp+Cwqehmk4saEMUB1Z4+ZAucK3OQAiDtPgiJX0ZoVYsmctUdKkfMU7ivr4Z4e8TaB4epmUwFL9MWob7Se2GjBFIbhp4nB2gp+CQBQkBmSSFVnVK0h7O0yhomvrwbF4hQVIOaA2F+8J2prsNTxBEewif8el8hxpW5KpujfeT3nJv6V0eF.P1CHA5qWjk2RIPuN88+1x3sQj18HYWWGUEPmCib4UJruoF0mbwCC6NrFfuaHpIT3HicrlNLN1gX+qI26V0et+PR+gdb1S+8BLP1avq8OOs4vEL0hCEyq3WQUWHJ5uv8qjHQchBGIpBNcBXpMGnqN791R.gvRT3HQQyoSfVL6.c1gSPaleD+IJbjnHQghj.MJbjnnPghDkBJbjnHPghDkFJbjDPQghDkJJbjDPPghDkNJbj3WQghD0BJbj32zdWNQylbPghDUAZgmf32X0pKJXjnZP8bjgRLh3wSO+syqy8udpMgi0D+dMCmzvxBoMrwOjEbVusJc6K4M0mwqKrDcYyLNzE1ENWakGv2FUIj.IJbTASuN839y5I7ZPl6Uo6aYb2CdmS+xn7Vj9RNVzQDW+gvBI.mPB1PgixnG+PKQze1DiHdj2L1P+aJTM0Ys330sWTtoihls0JtgjuYLpgMNLuQuLDcDwgGbFOinByF3mY5ILaLw3mV+q9O+votVz7WbEE6JtCgHmnvQEpbm5S1evXEMUBx+TCd059XMcXflNL95l9b7uMq+G.zWXVcEedQ+3vtWtx.9WKOZSH9uEENRBIQCHiBzMj7M2+lqUScVK1dEazqm6Y6nhAsZg+8F2CJ4q+4Z8j8+qSK1II41iPTinvQEnok776+We751qO2tA97F+j9+0Yk7r489MMezs81YVa0KMR0DUDJbTgQuN8CZ.XNWak6yOSON6YP6+KSb3SWR2CSL9o0+u9xcTkjZqAxlUkwBTKgvGTMGUXRJxjFzumu0Orkt+W66x5CKZQcs0qSOtywrp9q2XW1LOndkRHgRnvQYj21v4+SewuvqCxQT5hQTWqV5tw9+0FBm+swObpqE+Pr1g70apyZQAm5ETr6ffDhbiBGUX51Ymh5ykPToz+u1hcw0FtU1k+D7lm4kjTaPHpcT3nLRLyywqZ8pC52mtgz40iVmPTir+ecON5h2WO2yywaYj2Y+S96ImzrPhWLdzrsV4c6PHAanAjQgQLCthdc5QFCex8+64yf3bsNT8eHJ6x8UewniHNb6i89EbaPHASnvQEnS1TQ8+qmSZ2tOO+aLkas+8U5JZpDQOIv26E2N5xlY.z2ql3zSvyu1hDRn.JbTA5XMcXbo1NM..RNlzQdS8Y754Nogk0fVPJ93K75h951rsVwgtvt5+2e2S4wfdc5Ec6QHpYT3nBUAm5EQSc1WO.yJ4Yie4r2BtkQdmHwHhG.88Vz7CF+Oo+WcPf9penTWIcNT8eX+AyQGQb3NGypjT6QHpUz.xnP0rsVwlKcs8up7jbLoikj4ZvRvZFx41kMyLaU4A.X2U9GwZm6V.Peui0mq0Sxr1lPTKnvQErdb1Cx+TOKyWOG8kZsTKN34K.KbB4B.faeBOHNSoeMMmGIgTnvQFpYasJokoLu4rcTANaGUvrPvqcE9wS1aMuM1aMuMStdDhZDUyQBgP7.JbjPHDOfBGIDBwCnvQBgP7.JbjPHDOfBGIDBwCnvQheiSmA56.Bg+nvQheSuNoMQFh5AENRHDhGPgiDBg3AT3HgPHd.ENRHDhGPK7Dx.usqC5lbuAVk2TelAs2W6IxwBjw0RuN83E9NuCmmi4taE+j249gcGVk06kvCKR7mu6si3hJdNOuOn72B+kReMQcMlfwIf+2u+V37bJ9hGAuvgeNQ09D+KpmiA.YOpaE2Px2rrz12Px2rOCF8WtwTtUedNwEU7XNiR9ues6vJ98+i+aeddKc52Kl+nyQvse3gEI9UKbCbdNl6tUrkh+iBtsIAFT3X.xMMl6l4sodc5wcLoO5APW+..fEplDQAQUByaWwZZifegL4LtuiLemzmxpuL7IU7Q977x6FeTDdXQJn1dYY988YuRequ70f4taSPsKIvgBGCPRNlzYduGG3FsUf1jFVVXLCeJ75bm6XW.RM1Q56SjA19IdCXtat2xYiKp3wxx76y61LtnFNxc1OLmmSwW7H3iO293caRB7nvw.HV16Q85ziaYb2CyZOo5ak7MJnye9YLOY5NYvL2caH+O22OZaty9gQbQMbd0lOxbeTebMoGmVMhBGCfXYuGUR8ZTuN8XFoJr++ZIS6GHS2MCUQUWHJ9hGwmmmuB8..xdjYi4N1Ev44PONs5DENFfcGS5mH4s+TkVuFu9DuAAGTGWTwKpABQr3SO4l6XWfOumdn4LzM7rAhdbZ0KJbL.K5HhiWipKWTR8ZD.XZIOeudLtp2m+ZfY569nM7JEtIedd+nry0qCNy2ah2FxH9wxw0fdbZ0LJbTA3VF28H5dOpz50X5FRmyoRDW06aticA7tNervGet8gu4Jky44jQ7iE25XGZIBBOrHw89seHN+rziSqtQgiJ.Ro2iJtdMZz6CDi4taEEUcgb16waLs4JG2Vd0ennM6yy4mlyZGRn88M8Ux4T2gdbZ0OJbTgPL8dTo0qQ.faLCu+l272O46Nn+qm3qdiwZMzd8nfRdUedd2+Ldf9+0oF6HwRm9850ykdb5fCT3nBgX583cNlUon503Mj7My48yWckuZP+WOItnhGYOxrY98FWdmS8NnlVuHmmysl0cz+80CNyeLmmK83zAGnvQ+rK01o85wDRuGSLh3w7F8x75wqnoRD78lTw0.wzTm0hya57..37lNOmgQyyONp0t8REtQedNOzbVCl+nygyotC83zAOnvQ+rSdkBQW1L6wiIjdOdyouBudrl5rVb9V7duyjCIFQ7bNPLGut8Nne+QN2m30y8Vy5ND7qumTcdSmGeP4uEmmSFwOV7De2mwqGmdb5fKT3X.vgtvt75w3SuG8UuF+rKw8JgibX5F49Mb4bsM3QEtnZNJmmumFgX41aV9N84iWyE5woCtPgiA.Gp9ODM0Ysd7X7o2i9pWiGqoCKo6OwfqAF5RscZbtVqYPesFZudNCht8otblcuwW1cXEu1w2pn9rziSG7gBGCP3p2c2x3tGjXDddZhnH60XBylyAh4jWoP3r2gt4Zw0iVmQ7iESv3DXx8mPv2UtmAhdb5fST3X.xwZ5vb16Qu06Pt503kZ6zAjdM9sR5F373kaxyOBsudz5ED.FXF.fO9bBLbrm1nGmNHDENF.wUu7l2nW1P58nu503GetWmU2Z7VhQDOxdTduL.WpsSils44I8cCsWOmugJKc52qeefY..9dS7NDz4mQ7iEeuIdaxzcCIPgBGCf3p2i.CsWhb0qwJZpDb1NpfY2a7kuFHlSdkB473EdtOkyi6uGXlrGY13VyRXgi.d9sngntQgiAXuWE+AudrA16QeVqwp89achbZNoc6bdbu8H0tchF+ZNOdNS76J36IwJ7vhzmqxNbgOKwYD0CJbL.6rcTAmSXa28VTI1qwIMrrPxwjtWONWORsa95QqutQLc+1.yrrL+9btJ63K7YINindP69fJ.eV0uqWm.0yH0aFGugCnL603HWDmGuaachaYj2I..rZ2ILEaOh55rfQmS+ucMxkTicj9bqN3UJbS3mlyZ47bx6FeTb7KWhruaJRjeT3nBf6dO5o.xniHNj6T+kd8ydzpe+.RuF0qSOmCDC.PVIOalrSHdSS51vaV9Nk0.m+i4+3bd7On72Be741GRM1T4bQmHtnhG22zWon2dWIJGziUqPvUu+35QWObs6VNtc7Iot.8JDx81252ah2FttQLcudbyc2JduSuG..7dmdO9bC5ZoS+dCHyQSBaQgiJDmsiJPYW16SJZO4nU+99rldxE9tsqxJ290w+cCPgHtnFtOeT4A9ZAZt61va8k9tWg+rbdBlb+QBbnvQEj8dwsKnyOP0qQgrsqxJW2Hltrr8s5qQXtlVu3Pds.+3ysOe9NXSy8Q0OJbTAoYashiV86yqyMP1qQgtsqxJrd6a0WK+X.vquq0ucYE3y1+d+1ODM2GUwnAjQg4v0taNGYZ.ftrYNf0qQ9rsq9WO0lFxqwXWc2KZrQ6b949dS7137QbWxz9A38q7uwjAlI7vhD4cib2qwhu3QPY0WlGOVQUWHx4hGgyv03hJdb+y3Ave3XujjtWIAFTOGUX3SuGOzE1U.qWi7YaW8qZ9Xhps+jKx86ENKGXFesGv..75k9WjzwAF7JHNQcgBGUfNbs61qKHtcYyL97FE1.2vRyNMtqiVYW9SPONE27YztCqn3KdDNOGVr8sNAiSfyoiCPeScmFZudNOmFZudet.4Bz2JHdf3cDmHMT3nBTy1ZEau7MLjudW1LisW9FDc3iTktgz84.w70WUb8ZzsBuv+fyiyhsuUeMRxl6tU7lkuSd0V7Yp8jQ7iEKKS4Yz1IxGpliJTmsiJvienkfomvrQh5SF00QUAjI68.w01tJPeg2mwL2uqz9xwuru26atwzlqnWXYu6od297UD7s9xWi200z8T6wWSGnbm8Cihp4n9r2nDkif5dN5ztKTmodCz2FRR4sTBNT8eX.OXTuN8btsqB.blq9ERtWs1cX0mK1rhc6akOuhfdZp63K7Yp8.362BGYmF.sQP8GhuTcgiyNsuEuOWWNA53ptvYNmSzRmCcknlve7YfXNd8GfIWquxKiPrahc6akOgS7YWHzS3yT645FwzCXy8QcQnE1sEF51ykxl3AptvwgEYLB9yzqCfFqsWbtK1KrXiBIECt11U6xlY75m3YYVuaKp5BwF+zmkyyQnaeq95UDDnuEVBwt.WTT0EhBJ4U8444um6iZCSCb5JLXwrVzqCg+4mRRgtuFjZb4xkpKsXIu5cA615Vzed8woAokrVDN8DF9M7YdNRXGs5zfd0nCV6P7sQzwXDu2CHr2ZKVZ2648wd1yGvqyc4KeoXEKm64GrPo554H.vzFybjzmuGytPUWvopudjDx0RiF.sgqC8zszBFA.9NS1+s3hnDoJCGej49.RtMn5Q5e4ocePBaoKBsvlsvP2sqAtbJs1J7HhBO3068EX4PApxvwzFVJXASS36yGdh65QVUMT8HkSVsR+YqbQW3RqthdxJl0pPrhn99ASTkgi..O5bd.jPhilYsmstbgpqpWTSitfcF8MXDhbRqNMvkNcvR65fCF9dAL4wLK7PyHztWi.p3vwXiLF7JKeiLMfD.nqV5EUcAmngVn5QRTtbWWQacpgosaZoNE7r2JsVTBnhCGA9WAjr5QrcykSf1ZzENaU8R0ijnnnKbsvtivYRcEuV29LuGrsU76B4ebZ2T8SlkXiLFrtE7uikl0hwlK7UPcMbZl01Ns4BMVqKzZzZPpiPCLDAa+ozDBeoMLMvtccvZ6..r8GXmVpSAqegOARaXovz1UsS0GN510kzDv1VwuCu2o2O14WrCzUmlXVa2W8HcgnSPKRMQMz7ij3+nAPiNcn6NX+OXN5XLhm36tVL2zlAya6fAAc+y76ZJKFKb7yCu9WsabvS9ARZxhes5pkdQUlAhynFjZBp5JRPTAzFtNzSWr+wmCOhnvJl0pnAcwGB5BGA56Qser4d+XEW2hwVJ9MPYm8yXVa6tdjcZtWjXRZPBwPOpMgszFlFXsmvPucy95cufocG3QmyCP0UjGBJCGcKsgkBd9E9KPwYsHrsRJfo0izQO8UOx1hUCFQRT8HIRmVcZfcGZg0Nz.pthAdA0gitM2zlAlaZyPVpGo01cgZ5xELDGUORhHoA.Z0gtY7zxAfpqnTDR8Okkq5Q5xYe0i7BsCDahT8HI7m1vzhdrnUVpq3Bm1RwiM26msMbHjPpvQfAWOxMdjsfyboufYscuNn5QR3m9pqnVza2r+6QxdR2DdxE7HTcEknPtvQ2RaXofW5N9Mn35NAd4h1JZo4pYVaOv5QldJzRiF4eQqNMvQutqqHakVpSAOdN+TbcgvqAirTH++rctoMCL264Og26z6Gu9QymoS8Gqs6BU0kSXHNsHiTndQFpSa35P2sKO0UbMyOOrnw68EjXhvExGN51.qG4dKcWLqccWOxyzNPBonEIEKERFpo+5JxtetK.B9qqX0UWCuOWCFLv7qOENN.xc8HMc4dQaMqAoLBMH1nnPxfcZzpANbHOOBcnPcEqrxJ484N5Lxf4WeJbzCj65Qd4K4Bln5QF7RCPuPGr2EUWQwpvBKBVrv+tZmTRFY98.8OM4.UORhPoILsnmNX+T4J5XLhUNqUg6ZJKl4ssRzQJrHdetFLDELZjBGCHbWOx+3weCbjSx8dprPP0iL3g1vzBqcqE8JS0U7Au9UDT+HzCTokVFprxyv6yOyLyTVtOTk69fAR00QiX8GbiL8UQzsvzqAiZTAmuJhWsEGni1Y7LcVAPiVMvgSsvQOxScEej49.gTuxeVrXAO0S+qfISMy6OSdO7OA4jC6GodJbTjJttSfM9oahouJhtELt0wFzENpAvkFsvVWr+QnSK0ofUO6bCIek+17u+kQYk8U797MXHJr4M86jkQqlBGknW6D6F69K1ASqGI.fFc.wjfFjlwfiWEwfovQM556QnY8q7mtH.V4MrFrpotT11vpD4m+1PgEcTA8YxY9yC4k2pkk6GJbjAZ2ZmLudjtoMLfjRUqp+UQLXHbTaXZg0dzfdsy1+tPiNfuSJ8faarCCoZbpHkz1.SaekNSlLgsl+1DTcFcayaZixxfw.PgiLEUORuSUGNpAvYu5jk5JN53riGLS8HwnBu+u13lzKivBOMlesTh129O.1yddeAMscbSN60H.ENJKNPUEgsVT9T8HG.0Z3nKsxScE0GkS7iGOPlFidHGK93+1HoQtNleMURjRuEA5qVia349sxVuFAnvQY0KW71Y9V0.f5rdjpsvQ4pthZzA7CFSOHmzGtWOmvCKRL1I+Vr8BqfHkdK51pV08haawKhg2UCEENJyZ2Zm3EOxVX5V0fa5hPCLlh5XoQSsDNpQqFXylVlWWQ.faZj8UWQCgqymm6nG2yhHi55X98PfjT6snaYl4jwSstmjQ2UdGEN5m7MW87Leqi0sHTAacrJ9vQYrthF5LQjk0nwCbWMw6OSxorDLbiODyuWBTXQuEA.xHizwSstmTVl5NWKUVkqTubu0wJG0ij15XkFWZzBaVXeIJ50pAL55RD8XxFpAVQiM4.ojL+9KGq8bdle+DHvpdKBzWcFyKuU6WBFAndNFvHm0iTIt0wpH64nVMvtUcnWGrsY6sWcHslRE1q19f95yYVQhEcK7q2iFLjLRaruBauw7yXUuEA5KXbcq6IkkUeGugBGCfBkpGoRJbTNqqnwVFABuFsvg0g9+qiYLQg66GcEd0Np4vQV1aQ.+6iROPzCfE.EajwHaacrNs02V0Pqpf5Q52nAvYuZgCYXp4DQ2whjtvvfsNc.GPY7CABDXYuEA.V7hWHVwxWleOXDfBGUDjysNVkR8H6omdCLWX2zpEVsnAvEa+gDNsGNFSMi.8XxFrAF+74pHrt2hFMlHx6gWMxJK4YE2gOnvQED4ZqiEHDdqi0OTWwdfMd8YRIo.7OfPlDL0awAhp4nBUcczH1RwugrTOxvzqwuu0wVa81fca9wuUSCfCG5fSa925Jxk7dnl48nUGWbYo3eGqCF6s3.QgiJbEW2IXd8HcKxX0fQjj+odj9yvQmtzBG8v9dGGeL1wOcBgiB19HQOcKrfQgLXL.J+44XvZuEGHJbTkPNpGIPeS8GCwI+0izuDNpQCr1sVlWWQsg0Kt+I3.YOhXA.P4mJN72DvBvj9nzgGaMWEQFoueyXbSo9FxDr2awAhBGUQZ2ZmLeqi0MsgIu0iTVCG0.X2VXLuthtWJwVwjF56AMeCHie3Qf6d4Mv6GmFP49tUGJzawAhBGUgpqiFY9VGqagoWd15XkkvQM.NcpCNrx9xBL0DshbyLFNeOnarIG3.GNMboKMzvB8QoCSepgguy7ZPP8XDP4sp7DJ0awAhBGUwjisNV2hjwacrrNbrWnA16VXgN7Q7wXG+3IDFF8vih2eFylsgKUaRn81i...ImbWXLo2gfCEcSIsdNFp0awAhBGCBHGacr.+q5QxhsNVlENpUCrZg80UzPzIf6IiqhYjxPWeE8mTJiRcnZuEGHJbLHgbWORot0wJ0vQ45U9y8Ve5iM26Gczx6hFZXmLs8EBqVcBmZ9OwLt9bBX2C.g18VbfnvwfLJ05QJ5vQYrthYOoaBO4BdjAsePW2E+ovhE9uzhwR+sOdD3bmGx1tomuP8VbvnvwfTJs5QJlvQWPCr0C6eDZt15S60Y6n5yuFX2gUldM8kAN529qEy0Ah5s3PQgiA4jysNVgTORAENpouPQW8x1PwniwHV4rVEtqorXNOOqc+Mn1Ksdzau9mEPhFaxAx+0RbPesku7khUr7kI6Wap2hdGENFBPIr0wx2vQGNY+q7m65J9fW+JFziPyE+U.4YNuA721qdO9F2rte4+krFxP8VjaT3XHj.4VGquBGkqW4urmzMgGYtO.RaXoH3OqC60g5uzSgdr0Ayuu..J4KSD6+S89LW2fgnjk5OR8VjenvwPPEW2IvF+zM4W25X8Z3nL8J+wUcEEpluxKila9yj9M0+jYy1veaeY3wIO90h00ej5sH+Qgigvjy5QdsacrdJbztc1+J+w25JJTNrWGZtw+DLatBw2HtzfBOlQT7W5TPKbErn9iTuEENJbLDm+pdjCLbTNpqH.vsOy6QP0UTLbXuNzo4Ch1a8y30iaqUqNDsgQgXF17wvR3Gf7yeanvhNpfutRo9iTuEEGJbj..4cqiML8ZP3g6.1sC3nG1+J+M4wLK7DK3QDUcEkpt63Xvg8KCa1pePec8QMYDVDoMjUVGKVrfM77uHpolZEz0wnwDwFdteqfBjndKJMT3HYPjisNV4RBINZ7XyeMLoth9SUWSM34e9WTv8jK6rud73+7GiWmK0aQoiBGIdjbs0wxBgGQT3AmWdLuth9SEVXQH+W8OK3O2pV08haawKxqGm5sH6PgiDuRN25XEK+QcE8WDa8Getm623w8uYp2hrEENR7I4rdj7UfrthxEwV+QCFhBKdwKBKHm4C.furzxPokVF0aQFiBGI7Vfndjp05JxWhs9ixkP8dKNPT3HQv7G0iL7HhBqXVqBOzLVgrcMTJ129O.1wNBraKBTuEGJJbjHJx4VG6Bl1cfGcNOPPQcE4qM+6eYTVYeU.4ZS8VzynvQhjvxsN1zRcJX8K7IBppqHeYwhE7TO8uBlL0re6ZR8VjaT3HgIjxVGazwXDOw2csAs0UjuptlZvS+z+Z+x0h5snuQgiDlw8V0.eqGYnTcE4KwN+G4Kp2h7GENRXt1s1IduJN.NXkGziqD4ok5Tv7F2Mh6JqEERUWQ9Rry+Qeg5snvPgiDYWcczHpybCHs3RMjrdhhAKGAap2hhCENRHJTUTQkH+WcaRZPZndKJdT3HgnvUXgEgcum2WPgj4L+4gUrhkAiFMJi2YA2nvQBQkn5ZpAkVZYnhJpDlLYZPgkYl4jQRFMhrxJSLyYlM0SQFfBGIDBwCX+NZDgPHAAnvQBgP7.JbjPHDOfBGIDBwCnvQBgP7.JbjPHDOfBGIDBwCnvQBgP7.JbjPHDOfBGIDBwCnvQBgP7.JbjPHDOfBGIDBwCnvQBgP7.JbjPHDOfBGIDBwCnvQBgP7.JbjPHDOfBGIDBwCnvQBgP7f++T2rf4mvubac.....jTQNQjqBAlf" ],
					"embed" : 1,
					"forceaspect" : 1,
					"id" : "obj-13",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ -0.5, -1.0, 105.114716000000001, 109.293588501529044 ],
					"pic" : "Macintosh HD:/Users/flo/c74/max/node-externs/pkgstatic/icon.png"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-26",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 740.0, 428.5, 167.0, 51.0 ],
					"presentation_linecount" : 3,
					"text" : "For more details please refer to the helpfile and further documentation"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 75.0, 104.0, 640.0, 480.0 ],
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
									"outlettype" : [ "" ],
									"patching_rect" : [ 99.0, 146.0, 81.0, 22.0 ],
									"text" : "prepend help"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 99.0, 178.5, 53.0, 22.0 ],
									"text" : "pcontrol"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 99.0, 92.0, 30.0, 30.0 ]
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
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 248.5, 744.5, 49.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p helps"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.05098, 0.423529, 0.054902, 1.0 ],
					"fontsize" : 14.0,
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 579.0, 383.0, 172.5, 22.0 ],
					"text" : "  Node For Max Objects:",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"button" : 1,
					"fontsize" : 14.0,
					"htabcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-44",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 579.0, 413.0, 150.0, 76.0 ],
					"tabcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"tabs" : [ "node.script" ],
					"textcolor" : [ 0.270588, 0.517647, 0.25098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.05098, 0.423529, 0.054902, 1.0 ],
					"fontsize" : 14.0,
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 579.0, 499.965514999999982, 172.5, 22.0 ],
					"text" : "  Links:",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 797.0, 385.0, 459.0, 325.0 ],
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
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
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
													"id" : "obj-19",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 50.0, 100.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-81",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 50.0, 253.0, 166.0, 22.0 ],
													"text" : "regexp \\\\s @substitute %%20"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ],
													"patching_rect" : [ 50.0, 194.5, 139.0, 22.0 ],
													"text" : "conformpath native boot"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 223.5, 187.0, 22.0 ],
													"text" : "sprintf symout file://%s/index.html"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 129.5, 81.0, 22.0 ],
													"text" : "n4m-api-docs"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 161.5, 79.0, 22.0 ],
													"text" : "absolutepath"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-30",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-31",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 335.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"midpoints" : [ 59.5, 152.0, 59.5, 152.0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-81", 0 ],
													"midpoints" : [ 59.5, 248.0, 59.5, 248.0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-81", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 109.666671752929688, 201.0, 68.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p unix-path"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
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
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ],
													"patching_rect" : [ 50.0, 165.0, 139.0, 22.0 ],
													"text" : "conformpath native boot"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 81.0, 22.0 ],
													"text" : "n4m-api-docs"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 132.0, 79.0, 22.0 ],
													"text" : "absolutepath"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 195.0, 197.0, 22.0 ],
													"text" : "sprintf symout file:\\\\\\\\%s\\\\index.html"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-27",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-28",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 277.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"midpoints" : [ 59.5, 122.5, 59.5, 122.5 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 7.0, 201.0, 92.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p windows-path"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 7.0, 164.0, 73.0, 22.0 ],
									"text" : "sel windows"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 128.0, 104.0, 22.0 ],
									"text" : "r ---n4m_launcher"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 83.0, 183.0, 35.0 ],
									"presentation_linecount" : 2,
									"text" : ";\rmax getsystem ---n4m_launcher"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 207.5, 96.0, 101.0, 22.0 ],
									"text" : "https://nodejs.org"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 7.0, 54.0, 420.0, 22.0 ],
									"text" : "route 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 263.5, 129.0, 35.0 ],
									"presentation_linecount" : 2,
									"text" : ";\rmax launchbrowser $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 7.0, 6.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 16.5, 39.0, 16.5, 39.0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-17", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"midpoints" : [ 217.0, 249.0, 16.5, 249.0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 579.0, 609.965514999999982, 69.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p openlinks"
				}

			}
, 			{
				"box" : 				{
					"button" : 1,
					"fontsize" : 14.0,
					"htabcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-40",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 579.0, 529.96551513671875, 150.0, 51.0 ],
					"tabcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"tabs" : [ "JS API Docs", "NodeJS" ],
					"textcolor" : [ 0.270588, 0.517647, 0.25098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 14.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 127.5, 72.293587000000002, 422.0, 22.0 ],
					"text" : "Run, manage and interact with NodeJS processes from within Max",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.05098, 0.423529, 0.054902, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -0.5, 58.293587000000002, 921.5, 50.0 ],
					"proportion" : 0.39
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 412.0, 240.0, 434.25, 240.0, 434.25, 120.5, 450.0, 120.5 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 338.0, 183.5, 265.0, 183.5 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "~/git/max/node-externs/dist/Node For Max_osx/patchers/debug-monitor",
				"patcherrelativepath" : "../../dist/Node For Max_osx/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "~/git/max/node-externs/dist/Node For Max_osx/patchers/debug-monitor",
				"patcherrelativepath" : "../../dist/Node For Max_osx/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
		"editing_bgcolor" : [ 0.159857, 0.167159, 0.181003, 1.0 ]
	}

}
