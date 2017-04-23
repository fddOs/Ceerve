/*package cn.gaokao.refen.service.impl;

import org.omg.Messaging.SyncScopeHelper;
import org.springframework.stereotype.Service;

import cn.gaokao.refen.Entity.Occur;
import cn.gaokao.refen.service.OccuTestService;

@Service("hlandeService")
public class HlandeTestServiceImpl implements OccuTestService {

	@Override
	public Occur getTestReslt(String param) {
		System.out.println(param);
		String hlande = "";
		
		int max = Math.max(r, Math.max(i, Math.max(a, Math.max(s, Math.max(e, c)))));
		if(r==max){
			hlande = hlande+"R";
		}
		if(i==max){
			hlande = hlande+"I";
		}
		if(a==max){
			hlande = hlande+"A";
		}
		if(s==max){
			hlande = hlande+"S";
		}
		if(e==max){
			hlande = hlande+"E";
		}
		if(c==max){
			hlande = hlande+"C";
		}
		System.out.println(hlande);
		return new Occur(hlande);
	}

}
*/