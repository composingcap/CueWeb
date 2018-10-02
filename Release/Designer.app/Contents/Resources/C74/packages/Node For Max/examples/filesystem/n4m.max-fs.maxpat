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
		"rect" : [ 55.0, 85.0, 1151.0, 671.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-36",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "n4m.monitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 740.0, 415.0, 400.0, 220.0 ],
					"presentation_rect" : [ 740.0, 415.0, 400.0, 220.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-37",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 124.0, 598.0, 303.0, 33.0 ],
					"presentation_linecount" : 2,
					"presentation_rect" : [ 124.0, 598.0, 303.0, 33.0 ],
					"text" : "Note: This script posts file system errors to the Max window, not the virtual console."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-35",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 542.0, 456.5, 139.0, 47.0 ],
					"presentation_linecount" : 3,
					"presentation_rect" : [ 542.0, 456.5, 139.0, 47.0 ],
					"text" : "Find files matching a pattern (with optional folder depth)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 456.5, 112.0, 22.0 ],
					"presentation_rect" : [ 400.0, 456.5, 112.0, 22.0 ],
					"text" : "locate ~ *.maxpat 2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 616.0, 398.0, 73.0, 20.0 ],
					"presentation_rect" : [ 616.0, 398.0, 73.0, 20.0 ],
					"text" : "Move a file"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 336.0, 398.0, 216.0, 35.0 ],
					"presentation_linecount" : 2,
					"presentation_rect" : [ 336.0, 398.0, 216.0, 35.0 ],
					"text" : "mv ~/Desktop/TempTestFile-54161.txt ~/Desktop/ttf.txt"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 616.0, 327.0, 71.0, 20.0 ],
					"presentation_rect" : [ 616.0, 327.0, 71.0, 20.0 ],
					"text" : "Copy a file"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 360.0, 320.0, 212.0, 35.0 ],
					"presentation_linecount" : 2,
					"presentation_rect" : [ 360.0, 320.0, 212.0, 35.0 ],
					"text" : "cp ~/Desktop/TempTestFile-54161.txt ~/Desktop/TempTestFileCopy.txt"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 616.0, 251.0, 77.0, 20.0 ],
					"presentation_rect" : [ 616.0, 251.0, 77.0, 20.0 ],
					"text" : "Delete a file"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 360.0, 251.0, 210.0, 22.0 ],
					"presentation_rect" : [ 360.0, 251.0, 210.0, 22.0 ],
					"text" : "rm ~/Desktop/TempTestFile-54161.txt"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 217.0, 129.0, 388.0, 22.0 ],
					"presentation_rect" : [ 217.0, 129.0, 388.0, 22.0 ],
					"text" : "https://diyhacking.com/linux-commands-for-beginners/"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 616.0, 187.5, 160.0, 33.0 ],
					"presentation_linecount" : 2,
					"presentation_rect" : [ 616.0, 187.5, 160.0, 33.0 ],
					"text" : "Create a file (or update its access/modification date)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 360.0, 193.0, 227.0, 22.0 ],
					"presentation_rect" : [ 360.0, 193.0, 227.0, 22.0 ],
					"text" : "touch ~/Desktop/TempTestFile-54161.txt"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 128.5, 407.0, 185.0, 20.0 ],
					"presentation_rect" : [ 128.5, 407.0, 185.0, 20.0 ],
					"text" : "Create and remove directories"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 116.0, 485.0, 212.0, 22.0 ],
					"presentation_rect" : [ 116.0, 485.0, 212.0, 22.0 ],
					"text" : "rmdir ~/Desktop/AUniqueName-13101"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 87.0, 444.0, 214.0, 22.0 ],
					"presentation_rect" : [ 87.0, 444.0, 214.0, 22.0 ],
					"text" : "mkdir ~/Desktop/AUniqueName-13101"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 192.0, 113.0, 391.0, 20.0 ],
					"presentation_rect" : [ 192.0, 113.0, 391.0, 20.0 ],
					"text" : "Most of what we chose is from the following 'Top 10 Linux Commands': "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 192.0, 64.0, 447.0, 47.0 ],
					"presentation_linecount" : 3,
					"presentation_rect" : [ 192.0, 64.0, 447.0, 47.0 ],
					"text" : "The 'fs' module for Node.js provides a lot of ways to access the file system of your computer. Here, we use node to emulate some common standard linux command line functions."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 214.0, 251.0, 164.0, 20.0 ],
					"presentation_rect" : [ 214.0, 251.0, 164.0, 20.0 ],
					"text" : "List a directory"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 128.5, 327.0, 79.0, 22.0 ],
					"presentation_rect" : [ 128.5, 327.0, 79.0, 22.0 ],
					"text" : "cd ~/Desktop"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-33",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 214.0, 320.0, 122.0, 33.0 ],
					"presentation_linecount" : 2,
					"presentation_rect" : [ 214.0, 320.0, 122.0, 33.0 ],
					"text" : "Change the current working directory"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 124.0, 193.0, 202.0, 20.0 ],
					"presentation_rect" : [ 124.0, 193.0, 202.0, 20.0 ],
					"text" : "Get the current working directory"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 28.0, 630.0, 71.0, 22.0 ],
					"presentation_rect" : [ 28.0, 630.0, 71.0, 22.0 ],
					"text" : "print output"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 28.0, 598.0, 27.0, 22.0 ],
					"presentation_rect" : [ 28.0, 598.0, 27.0, 22.0 ],
					"text" : "iter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 944.0, 374.0, 196.0, 20.0 ],
					"presentation_rect" : [ 944.0, 374.0, 196.0, 20.0 ],
					"text" : "node.debug is useful for debugging"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 169.5, 251.0, 29.5, 22.0 ],
					"presentation_rect" : [ 169.5, 251.0, 29.5, 22.0 ],
					"text" : "ls .."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 128.5, 251.0, 29.5, 22.0 ],
					"presentation_rect" : [ 128.5, 251.0, 29.5, 22.0 ],
					"text" : "ls /"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 87.0, 251.0, 29.5, 22.0 ],
					"presentation_rect" : [ 87.0, 251.0, 29.5, 22.0 ],
					"text" : "ls"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 87.0, 327.0, 33.0, 22.0 ],
					"presentation_rect" : [ 87.0, 327.0, 33.0, 22.0 ],
					"text" : "cd .."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 87.0, 193.0, 33.0, 22.0 ],
					"presentation_rect" : [ 87.0, 193.0, 33.0, 22.0 ],
					"text" : "pwd"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 48.0, 100.0, 65.0, 22.0 ],
					"presentation_rect" : [ 48.0, 100.0, 65.0, 22.0 ],
					"text" : "script stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 28.0, 69.0, 66.0, 22.0 ],
					"presentation_rect" : [ 28.0, 69.0, 66.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 28.0, 564.0, 417.0, 22.0 ],
					"presentation_rect" : [ 28.0, 564.0, 417.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"node" : "",
						"npm" : "",
						"watch" : 0
					}
,
					"text" : "node.script n4m.max-fs.js"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 13.0, 627.0, 33.0 ],
					"presentation_rect" : [ 12.0, 13.0, 627.0, 33.0 ],
					"text" : "max_fs : Using the file system within Max (via node.script)"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 435.5, 609.0, 712.0, 609.0, 712.0, 404.0, 749.5, 404.0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 37.5, 297.0, 37.5, 297.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 96.5, 297.0, 37.5, 297.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 57.5, 143.0, 37.5, 143.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 96.5, 237.0, 37.5, 237.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 369.5, 297.0, 37.5, 297.0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 138.0, 297.0, 37.5, 297.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 96.5, 371.0, 37.5, 371.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 179.0, 297.0, 37.5, 297.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 345.5, 530.0, 37.5, 530.0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 369.5, 372.5, 37.5, 372.5 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 409.5, 530.5, 37.5, 530.5 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 138.0, 371.5, 37.5, 371.5 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 96.5, 497.5, 37.5, 497.5 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 125.5, 529.5, 37.5, 529.5 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 369.5, 237.5, 37.5, 237.5 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
