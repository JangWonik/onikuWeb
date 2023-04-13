package com.oniku.util.common;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class CommonUtils {
	
	private static final Logger log = LoggerFactory.getLogger(CommonUtils.class);
	
	/**
	 * by top3009
	 * 난수생성 함수
	 * @param len : 생성할 난수의 길이
     * @param dupCd : 중복 허용 여부 (1: 중복허용, 2:중복제거)
	 */
	public static String numberGen(int len, int dupCd ) {
        
        Random rand = new Random();
        String numStr = ""; //난수가 저장될 변수
        
        for(int i=0;i<len;i++) {
            
            //0~9 까지 난수 생성
            String ran = Integer.toString(rand.nextInt(10));
            
            if(dupCd==1) {
                //중복 허용시 numStr에 append
                numStr += ran;
            }else if(dupCd==2) {
                //중복을 허용하지 않을시 중복된 값이 있는지 검사한다
                if(!numStr.contains(ran)) {
                    //중복된 값이 없으면 numStr에 append
                    numStr += ran;
                }else {
                    //생성된 난수가 중복되면 루틴을 다시 실행한다
                    i-=1;
                }
            }
        }
        return numStr;
    }
	
	
	/**
	 * by top3009
	 * 클라이언트 아이피 가져오기
	 * @return 
	 */
	public static String getClientIP(HttpServletRequest request) {
	    String ip = request.getHeader("X-Forwarded-For");
	    log.info("> X-FORWARDED-FOR : " + ip);

	    if (ip == null) {
	        ip = request.getHeader("Proxy-Client-IP");
	        log.info("> Proxy-Client-IP : " + ip);
	    }
	    if (ip == null) {
	        ip = request.getHeader("WL-Proxy-Client-IP");
	        log.info(">  WL-Proxy-Client-IP : " + ip);
	    }
	    if (ip == null) {
	        ip = request.getHeader("HTTP_CLIENT_IP");
	        log.info("> HTTP_CLIENT_IP : " + ip);
	    }
	    if (ip == null) {
	        ip = request.getHeader("HTTP_X_FORWARDED_FOR");
	        log.info("> HTTP_X_FORWARDED_FOR : " + ip);
	    }
	    if (ip == null) {
	        ip = request.getRemoteAddr();
	        log.info("> getRemoteAddr : "+ip);
	    }
	    log.info("> Result : IP Address : "+ip);

	    return ip;
	}
	
	public static String getRandomString(){
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
	public static void printMap(Map<String,Object> map){
		Iterator<Entry<String,Object>> iterator = map.entrySet().iterator();
		Entry<String,Object> entry = null;
		log.info("--------------------printMap--------------------\n");
		while(iterator.hasNext()){
			entry = iterator.next();
			log.info("key : "+entry.getKey()+",\tvalue : "+entry.getValue());
		}
		log.info("");
		log.info("------------------------------------------------\n");
	}
	
	public static void printList(List<Map<String,Object>> list){
		Iterator<Entry<String,Object>> iterator = null;
		Entry<String,Object> entry = null;
		log.info("--------------------printList--------------------\n");
		int listSize = list.size();
		for(int i=0; i<listSize; i++){
			log.info("list index : "+i);
			iterator = list.get(i).entrySet().iterator();
			while(iterator.hasNext()){
				entry = iterator.next();
				log.info("key : "+entry.getKey()+",\tvalue : "+entry.getValue());
			}
			log.info("\n");
		}
		log.info("------------------------------------------------\n");
	}	
}
