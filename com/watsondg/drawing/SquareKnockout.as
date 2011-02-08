﻿package com.watsondg.drawing{	import flash.display.Sprite;	import com.watsondg.drawing.SquareArea;					public class SquareKnockout extends SquareOutline	{		//	properties		private var _container:Sprite		private var _area:Sprite						//	constructor		public function SquareKnockout(fullWidth:int, fullHeight:int, knockoutWidth:int, knockoutHeight:int, knockoutX:int, knockoutY:int, color:Number = 0x000000):void		{			var borderWidth:int		= fullWidth - knockoutWidth			var borderHeight:int	= fullHeight - knockoutHeight						super(10, 10, 1, 1, color)						if(borderWidth > 0 && borderHeight > 0){				_top.width 		= fullWidth				_top.height 	= int(borderHeight * .5);				_top.x 			= 0;				_top.y 			= 0;								_left.width 	= int(borderWidth * .5);				_left.height 	= fullHeight - borderHeight				_left.x 		= 0;				_left.y 		= _top.height;								_bottom.width 	= fullWidth				_bottom.height 	= int(borderHeight * .5);				_bottom.x 		= 0;				_bottom.y 		= _left.y + _left.height;								_right.width 	= int(borderWidth * .5);				_right.height 	= fullHeight - borderHeight				_right.x 		= int(_top.width - (borderWidth * .5));				_right.y 		= _top.height;								_container = new Sprite();				_container.addChild(_top)				_container.addChild(_right)				_container.addChild(_bottom)				_container.addChild(_left)								_container.x = -int(borderWidth * .5) +  knockoutX				_container.y = -int(borderHeight* .5) +  knockoutY								addChild(_container)								_area = new SquareArea(30, 30, false, 0xff0000)				_area.alpha = .5				addChild(_area)											}else{				if(borderWidth < 0)		trace(	'*********NOTE fullWidth needs to be larger than the knockoutWidth'		);				if(borderHeight < 0) 	trace(	'*********NOTE fullHeight needs to be larger than the knockoutHeight'	);			}								}			}}