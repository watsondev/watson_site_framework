﻿package com.watsondg.drawing{	import flash.display.Shape;	import flash.display.Sprite;	public class CircularArea extends Sprite	{		private var _area:Sprite;				public function CircularArea(radius:Number = 50, color:Number = 0x000000, alignCenter:Boolean = true):void		{			var posx:Number = 0;			var posy:Number = 0;						if (!alignCenter)			{				posx =  radius;				posy =  radius;			}			_area = new Sprite  ;			_area.graphics.beginFill(color,1);			_area.graphics.drawCircle(posx,posy,radius);			_area.graphics.endFill();						addChild(_area);		}		//	getters & setters		public function get area():Sprite		{			return _area;		}	}}