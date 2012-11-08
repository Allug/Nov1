//
//  View.m
//  Nov1
//
//  Created by Phillip Gulla on 10/28/12.
//  Copyright (c) 2012 Allug. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
		
		//Keep the size of the view the same,
		//but let the center of the view be the origin. Added Oct 27
		/*
		 CGFloat w = self.bounds.size.width;
		 CGFloat h = self.bounds.size.height;
		 self.bounds = CGRectMake(-w / 2, -h / 2, w, h);
		 */
		
		// End moving origin to center added Oct 27
		
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.



- (void) drawRect: (CGRect) rect
{
    
	//////////////////////////////////////////////////////
	
	
	// Code to draw and fill a right triangle - base Nov1 xcodeproj code //
	//Added Oct 27
	
	
	CGSize size = self.bounds.size;
	CGFloat min = MIN(size.width, size.height);
	CGFloat length = min * 5 / 8;           //of side
	
	CGContextRef c = UIGraphicsGetCurrentContext();
	
	//origin at right angle
	CGContextTranslateCTM(c,
						  (size.width + length) / 2,
						  (size.height + length) / 2
						  );
	
	CGContextScaleCTM(c, 1.2, -0.5);
	//CGContextScaleCTM(c, 1, -1);
	
	CGContextBeginPath(c);
	CGContextMoveToPoint(c, -10, -10);          //lower right vertex (the right angle)
	CGContextAddLineToPoint(c, 0, length);  //upper right vertex
	CGContextAddLineToPoint(c, -length, 0); //lower left vertex
	CGContextClosePath(c);                  //back to starting point
	CGContextSetRGBFillColor(c, 0.0, 0.0, 0.5, 1.0);
	
	
	
	
	//Light source at upper left, shadow at lower right.
	//CGSize shadow = CGSizeMake(10, -20);
	
	//5 is the amount of blur.  A smaller number makes a sharper shadow.
	//CGContextSetShadow(c, shadow, 5);
	
	//Shadow and blur code written in one line	
	
	CGContextSetShadow(c, CGSizeMake(10, -20), 5);
	
	CGContextFillPath(c);
	
	[self performSelector: @selector(setNeedsDisplay) withObject: nil afterDelay: 2.0];
	
		
	//CGContextSetRGBStrokeColor(c, 0.0, 0.0, 1.0, 1.0);
	//CGContextStrokePath(c);
	
	
	// End code to draw and fill a right triangle - base Nov1 xcodeproj code //
	
	
	// New triangle code added Oct 29
	
	
	CGSize size1 = self.bounds.size;
	CGFloat min1 = MIN(size1.width, size1.height);
	CGFloat length1 = min1 * 5 / 8;           //of side
	
	CGContextRef d = UIGraphicsGetCurrentContext();
	
	
	/*
	CGContextTranslateCTM(d,
						  (size1.width + length1) / 2,
						  (size1.height + length1) / 2
						  );
	*/
		
	CGContextScaleCTM(d, 1.2, -0.5);
	CGContextBeginPath(d);
	CGContextMoveToPoint(d, 0, 0);          //lower right vertex (the right angle)
	CGContextAddLineToPoint(d, 0, length1);  //upper right vertex
	CGContextAddLineToPoint(d, -length1, 0); //lower left vertex
	CGContextClosePath(c);                  //back to starting point
	
	CGContextSetRGBStrokeColor(d, 1.0, 0.0, 0.0, 1.0);
	CGContextStrokePath(d);
	 
	CGContextSetShadow(d, CGSizeMake(10, -20), 5);
	
	CGContextFillPath(d);
	
	[self performSelector: @selector(setNeedsDisplay) withObject: nil afterDelay: 2.0];
	
	// End new triangle code added Oct 29
	
		
	// Another triangle added Nov 6 //
	
	CGSize size2 = self.bounds.size;
	CGFloat min2 = MIN(size2.width, size2.height);
	CGFloat length2 = min2 * 5 / 8;           //of side
	
	CGContextRef e = UIGraphicsGetCurrentContext();
	
	CGContextScaleCTM(e, 1.2, -0.5);
	CGContextBeginPath(e);
	CGContextMoveToPoint(e, 0, 0);          //lower right vertex (the right angle)
	CGContextAddLineToPoint(e, 0, length2);  //upper right vertex
	CGContextAddLineToPoint(e, -length2, 0); //lower left vertex
	CGContextClosePath(e);                  //back to starting point
	
	//CGContextSetRGBStrokeColor(e, 0.0, 1.0, 0.0, 1.0);
	//CGContextStrokePath(e);
	CGContextSetRGBFillColor(e, 0.0, 1.0, 0.0, 1.0);
	CGContextSetShadow(e, CGSizeMake(10, -20), 5);
	
	CGContextFillPath(e);
	
	[self performSelector: @selector(setNeedsDisplay) withObject: nil afterDelay: 2.0];
	
	
	// End another triangle added Nov 6 //
	

	////////////////////////////////////////////////////////////////////
	
	
	// Drawing code Red Cross added Oct27 -> Draw the cross with 2 rectangles
	//Fill the Red Cross.
	
	/* CGSize size = self.bounds.size;
	 CGFloat min = MIN(size.width, size.height);
	 CGFloat longSide = min * 15 / 16;
	 //CGFloat longSide = min * 10 / 16;
	 CGFloat shortSide = longSide / 3;
	 
	 CGContextRef c = UIGraphicsGetCurrentContext();
	 CGContextBeginPath(c);
	 
	 CGContextTranslateCTM(c, size.width / 2, size.height / 2); //origin at center of view
	 CGContextScaleCTM(c, 1, -1);                               //make Y axis point up
	 
	 CGRect horizontal = CGRectMake(-longSide / 2, -shortSide / 2, longSide, shortSide);
	 CGRect   vertical = CGRectMake(-shortSide / 2, -longSide / 2, shortSide, longSide);
	 CGContextAddRect(c, horizontal);
	 CGContextAddRect(c, vertical);
	 
	 CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 1.0);
	 CGContextFillPath(c); */
	
	// End drawing code Red Cross  -> Draw the cross with 2 rectangles
	
	// Drawing the red cross with one rectangle drawn twice - added Oct27
	
	/*
	 
	 CGSize size = self.bounds.size;
	 CGFloat min = MIN(size.width, size.height);
	 CGFloat longSide = min * 15 / 16;
	 CGFloat shortSide = longSide / 3;
	 
	 CGContextRef c = UIGraphicsGetCurrentContext();
	 CGContextBeginPath(c);
	 
	 CGContextTranslateCTM(c, size.width / 2, size.height / 2); //origin at center of view
	 
	 //Rotation of 15°, negative for counterclockwise.
	 CGContextRotateCTM(c, -15.0 * M_PI / 180.0); */
	
	/* Attempting to make the cross spin using a while loop
	 // compiles, but only show a black screen
	 int i = 1;
	 while(i == 1)
	 {CGContextRotateCTM(c, -15.0 * M_PI / 180.0);}
	 */
	
	/*
	 CGContextScaleCTM(c, 1, -1);                               //make Y axis point up
	 
	 CGRect horizontal = CGRectMake(-longSide / 2, -shortSide / 2, longSide, shortSide);
	 CGContextAddRect(c, horizontal);
	 
	 CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 0.8);
	 CGContextFillPath(c);
	 
	 CGContextBeginPath(c);
	 CGContextRotateCTM(c, 90 * M_PI / 180);	//90 degrees clockwise
	 CGContextAddRect(c, horizontal);
	 
	 CGContextSetRGBFillColor(c, 0.0, 0.0, 1.0, 0.8);
	 CGContextFillPath(c);
	 */
	
	// End code drawing the red cross with one rectangle drawn twice  - added Oct27
	
	
	
	// Code to idenity origin Added Oct 27
	
	/*	UIFont *font = [UIFont systemFontOfSize: 32];
	 [@"Origin" drawAtPoint: CGPointZero withFont: font]; */
	
	// End code to identiy origin Added Oct 27
	
	// Frame and bounds - added Oct27
	
	/* 
	NSLog(@"self.frame == (%g, %g), %g × %g",
		  self.frame.origin.x,
		  self.frame.origin.y,
		  self.frame.size.width,
		  self.frame.size.height
		  );
	
	NSLog(@"self.bounds == (%g, %g), %g × %g",
		  self.bounds.origin.x,
		  self.bounds.origin.y,
		  self.bounds.size.width,
		  self.bounds.size.height
		  );
	 */
	
	// End frame and bounds added Oct27
	
	
	/* CGContextRef c = UIGraphicsGetCurrentContext();
	 CGAffineTransform ctm = CGContextGetCTM(c);
	 NSLog(@"%6g%6g%6g", ctm.a,  ctm.b,  0.0);
	 NSLog(@"%6g%6g%6g", ctm.c,  ctm.d,  0.0);
	 NSLog(@"%6g%6g%6g", ctm.tx, ctm.ty, 1.0);	//translate x, translate y */
	
	// Drawing code
    // Drawing code
    //CGRect bounds = self.bounds;
    //CGFloat radius = .3 * bounds.size.width;	//in pixels
    
    /*
     Create the invisible square that will surround the circle.
     Place the upper left corner of the square at the upper left corner of
     the View.  bounds.origin.x and bounds.origin.y are the coordinates of
     the upper left corner of the View.
     */
    
	/* Old CGRect code with origin at top left
	 
	 CGRect r = CGRectMake(
	 bounds.origin.x,
	 bounds.origin.y,
	 2 * radius,
	 2 * radius
	 );
	 
	 End old CGRECT code with origin at top left added Oct27 */
	
	
	/* New CGRect code move by brute force added Oct27 */
	
	/* CGRect r = CGRectMake(
	 bounds.origin.x + bounds.size.width / 2 - radius,
	 bounds.origin.y + bounds.size.height / 2 - radius,
	 2 * radius,
	 2 * radius
	 ); */
	
	/* New CGRect code move by brute force added Oct27 */
	
	
	
	// New simplified rectangled added Oct 27
	
	/*	CGRect r = CGRectMake(
	 -radius,
	 -radius,
	 2 * radius,
	 2 * radius
	 );  */
	
	// End New simplified rectangle added Oct 27
	
    //CGContextRef c = UIGraphicsGetCurrentContext();
    
	// Transformation added Oct27 //
	//CGContextTranslateCTM(c, bounds.size.width / 2, bounds.size.height / 2);
	// End transformation added Oct27 //
	
	// Transformation to double the size of what you draw added Oct27
	
	//CGContextScaleCTM(c, 2, 2);	//horizontal scale, vertical scale
	
	// End transformation to double the size of what you draw added Oct27
	
	// Transformation to double size of what you draw different method added Oct 27
	
	//CGAffineTransform scale = CGAffineTransformMakeScale(2, 2);
	//CGContextConcatCTM(c, scale);
	
	// End transformation to double size of what you draw different method added Oct 27
	
	
	//Put the origin at the center of the UIView.
	/* CGContextTranslateCTM(c, self.bounds.size.width / 2, self.bounds.size.height / 2); */
	
	//Make the Y axis point up.
	/*	CGContextScaleCTM(c, 1, -1); */
	
	// Another transformation added Oct27 //
	
	/*	CGAffineTransform translate = CGAffineTransformMakeTranslation(
	 bounds.size.width / 2,
	 bounds.size.height / 2
	 );
	 
	 CGContextConcatCTM(c, translate); */
	
	// End another transformation added Oct27 //
	
	//CGContextBeginPath(c); //unnecessary here: the path is already empty.
    //CGContextAddEllipseInRect(c, r);
    //CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 1.0);	//red, opaque
    //CGContextFillPath(c);
}

@end
