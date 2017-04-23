package cn.gaokao.refen.service.impl;

import org.springframework.stereotype.Service;

import cn.gaokao.refen.Entity.Occur;
import cn.gaokao.refen.service.OccuTestService;

@Service("mbtiService")
public class MbtiTestServiceImpl implements OccuTestService {

	@Override
	public Occur getTestReslt(String param) {
		System.out.println(param);
		String mbti = "";
		int e = 0, i = 0, s = 0, n = 0, f = 0, t = 0, j = 0, p = 0;
		param = param.substring(0, param.length() - 1);
		String[] paramList = param.split(",");
		for (String str : paramList) {
			switch (str) {
			case "E":
				e++;
				break;
			case "I":
				i++;
				break;
			case "S":
				s++;
				break;
			case "N":
				n++;
				break;
			case "T":
				t++;
				break;
			case "F":
				f++;
				break;
			case "J":
				j++;
				break;
			case "P":
				p++;
				break;
			}
		}
		if (e > i) {
			mbti = mbti + "E";
		}
		else {
			mbti = mbti + "I";
		}
		if (s > n) {
			mbti = mbti + "S";
		}
		else {
			mbti = mbti + "N";
		}
		if (t > f) {
			mbti = mbti + "T";
		}
		else {
			mbti = mbti + "F";
		}
		if (j > p) {
			mbti = mbti + "J";
		}
		else {
			mbti = mbti + "P";
		}
		
		return new Occur(mbti);
	}

}
