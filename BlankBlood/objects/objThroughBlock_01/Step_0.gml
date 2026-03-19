with(objCharaSet){
	if(y+48>other.y || (down&&!global.fdown&&!global.retry) || global.bind){
		with(other){
			instance_change(objThroughBlock_02,false);
		}
	}
}
