//:cutMotion Dictionary
// Aris Bezas Fri, 29 July 2011, 15:12
//:--------------------
//:Display images dictionary
OF.image(imageID, xPos, yPos, width, height);
OF.image(imageID, xPos, yPos, width, height, rotX,rotY,rotZ);
OF.image(imageID, xPos, yPos, width, height, translateX, translateY, translateZ, rotX,rotY,rotZ);
OF.image(image
	ID, 
	xPos, yPos, 
	width, height, 
	translateX, translateY, translateZ, 
	scaleX, scaleY, scaleZ,
	rotX,rotY,rotZ);

//:Examples
//:--------
OF.rect(0,0,1280, 1024);
OF.loadImage(0,"/Users/fou/images/pixxilation/0000.JPG");
OF.img(0,0,0,1280, 1024);
OF.img(0, 0, 0, 400, 400);
OF.img(0, 0, 0, 400, 400,110,0,0,0,0,0);

OF.img(0, 0, 0, 1280, 1024, 0, 0, 0, rrand(), 0, 0, 0);


//:Load images
//:===========
~imageLib.at('folder-name')
//:example
~imageLib.at('Grotesque-Masks')
~imageLib.at('australian-places')
~imageLib.choose('australian-places')
~imageLib.choose('Sanborn-Typography')
~imageLib.at('Sanborn-Typography')

//:play images from a specific group
{
	1000.do{
		OF.img(~imageLib.choose('Sanborn-Typography'),0,0,1280, 1024);
		1.wait;
	}
}.fork

//:Mirror mode
OF.int("mirrorMode",1)


OF.img(~imageLib.choose('Sanborn-Typography'),0,0,1280, 1024);
OF.img(1,0,0,1280, 1024);

//:play images from a specific group
{
	1000.do{|i|
		OF.img(rrand(0,60).asInteger,0,0,1280, 1024);
		i.postln;
		0.01.wait;
	}
}.fork
