//:Load images to oF
//:=================

//:Create the hashTable
~imageLib = MultiLevelIdentityDictionary.new;
~loadImages2oF = { | path = "/Users/ari/Media/images/bibliOdyssey/*" |
	var folders, files, imageDict;
	imageDict = IdentityDictionary.new;
	folders = path.pathMatch;
	folders do: { | f |
		f.basename.postln;
		imageDict[f.basename.asSymbol] = format("%*", f).pathMatch;
		postf("FOLDER LOADED: \n%\n", f);
	};
	{
		var index = 0;
		imageDict keysValuesDo: { | folder, files |
 			files do: { | path, i |
	 			postf("LOADING: %, %, %\n", index, folder, path.basename);
	 			OF.loadImage(index, path);
				~imageLib.put(folder, i, index);
	 			index = index + 1;
				0.01.wait;
 			}
		}
	
	}.fork;
};

//:evaluate the function
~loadImages2oF.value;

//:


//:---------------------------------------------------------
//----------------------------------------------------------
~imageLib.keys

//:image mapping mechanism;
~imageLib = MultiLevelIdentityDictionary.new;

~imageLib.put('Sanborn-Typography', 10, 532);
~imageLib.put('eleni1', 50, 4432);

~imageLib.at('eleni1', 50);


//----------------------------------------------------------
//----------------------------------------------------------
//----------------------------------------------------------
//:Load image paths
~loader = { | path = "~/images/ambiantWorkshop/ALL2/*" |
	var folders, files, imageDict;
	imageDict = IdentityDictionary.new;
	folders = path.pathMatch;
	folders do: { | f |
		f.basename.postln;
		imageDict[f.basename.asSymbol] = format("%*", f).pathMatch;
		postf("FOLDER LOADED: \n%\n", f);
	};
	imageDict;		
};

//:----
~images = ~loader.value;

//:---
~images.postln;

//:---
~images.keys.asArray.postln;



~loadImages2oF.value;

//:image mapping mechanism;
~imageLib = MultiLevelIdentityDictionary.new;

~imageLib.put('eleni1', 10, 532);
~imageLib.put('eleni1', 50, 4432);

~imageLib.at('eleni1', 50);

//:---------------------------------------------------------
//----------------------------------------------------------
//------------- OLD WAY 						----------
//----------------------------------------------------------
//----------------------------------------------------------
//:Format Func
f = { | int |
	var length, string;
	string = "0000".copy;
	length = string.size - 1;
	int.asString.reverse do: { | i, count | string[length - count] = i };
	string.postln;
};
//:Load Pixelation Images
{
	96.do {	|i|
		OF.loadImage(i, format("/Users/fou/images/pixxilation/%.JPG", f.(i)));
		0.1.wait;
	}
}.fork;
