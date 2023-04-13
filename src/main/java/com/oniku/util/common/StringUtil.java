package com.oniku.util.common;

import java.security.SecureRandom;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.UUID;

/**
 * 
 * @author oniku
 *
 */
public class StringUtil {	
	
	/**
	 * float, double 지수표시 제거하여 보여주기
	 */	
	public static String NumberFormat(float fVal) {
		
		String sRet = "";
		NumberFormat f = NumberFormat.getInstance();
		f.setGroupingUsed(false);
		sRet = f.format(fVal);
		
		return sRet;
	}
	
	/**
	 * 콤마 제거 함수 int, String 둘다 처리후 return String
	 * @param sParam
	 * @return
	 */
	public static String removeComma(String sParam) {
		String sRet = "";		
		sRet = sParam.replaceAll(",","");		
		return sRet;
	}
	
	public static String removeComma(int nParam) {
		String sRet = "";
		sRet = String.valueOf(nParam).replaceAll(",","");		
		return sRet;
	}
	
	/**
	 * param inputS String
	 * return String
	 * 입력받은 값을 천단위로 콤마 찍기
	 * by oniku
	 */
	public static String toMoneyString(String inputS) {
		String sRet = "";
		String sTemp = inputS.trim();
		
		try {			
			int nChk = inputS.indexOf(".");
			
			//글자에 소숫점이 있는지 확인
			if( nChk > -1 ) {
				
				System.out.println("inputS :"+inputS);
				
				String ret1 = inputS.substring(0,nChk);
				String ret2 = inputS.substring(nChk);
				
				if(ret1.length() > 3) {						//글자수가 3자리 이상일때 처리
					DecimalFormat df = new DecimalFormat("#,###");
					sRet = df.format(Integer.parseInt(ret1))+ret2;
				}else {
					sRet =  inputS;
				}
				
			}else{
				if(sTemp.length() > 3) {						//글자수가 3자리 이상일때 처리
					DecimalFormat df = new DecimalFormat("#,###");
					sRet = df.format(Integer.parseInt(sTemp));
				}else {
					sRet =  inputS;
				}
			}
			
		} catch (Exception e) {			
			sRet =  inputS;
		}
		
		return sRet;		
	}
	
	/**
	 * param inputI Long
	 * return String
	 * 입력받은 값을 천단위로 콤마 찍기
	 * by oniku
	 */
	public static String toMoneyString(long inputI) {
		String sRet = "";		
		
		try {
			if( inputI > 999) {						//글자수가 3자리 이상일때 처리
				DecimalFormat df = new DecimalFormat("#,###");
				sRet = df.format(inputI);
			}else {
				sRet =  String.valueOf(inputI);
			}			
		} catch (Exception e) {			
			sRet =  String.valueOf(inputI);
		}
		
		return sRet;		
	}
	
	/**
	 * param inputI Integer
	 * return String
	 * 입력받은 값을 천단위로 콤마 찍기
	 * by oniku
	 */
	public static String toMoneyString(int inputI) {
		String sRet = "";		
		
		try {
			if( inputI > 999) {						//글자수가 3자리 이상일때 처리
				DecimalFormat df = new DecimalFormat("#,###");
				sRet = df.format(inputI);
			}else {
				sRet =  String.valueOf(inputI);
			}			
		} catch (Exception e) {			
			sRet =  String.valueOf(inputI);
		}
		
		return sRet;		
	}
	
    /**
     * 아이디에 prefix를 붙인다.
     *
     * Input: id=523, prefix="AAA", maxLength=15
     * Output: AAA000000000523
     *
     * @param id String
     * @param prefix String
     * @param maxLength int
     * @return String
     */
    public static String formatId(String id, String prefix, int maxLength) {
        if (!id.startsWith(prefix)) {
            int length = id.length() + prefix.length();
            for (; (maxLength - length) > 0; length++) {
                id = '0' + id;
            }
            id = prefix + id;
        }
        return id;
    }

    /**
     * 주어진 문자열이 널이면 공백으로 치환해서 반환한다.
     *
     * @param str
     * @return String
     */
    public static String null2blank(String str) {
        return ((str == null) ? "" : str);
    }
    
    /**
     * 모든 HTML 태그를 제거하고 반환한다.
     * 
     * @param html
     * @throws Exception  
     */
    public static String removeTag(String html) {
        //return html.replaceAll("\\<[^>]*>","");
        return html.replaceAll("\\<.*?\\>", "");
    	//return html.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");



    }
    
    /**
     * 내용중 일부만 반환한다.
     * @return
     */
	public static String getShortContents(String contents, int len) {
		String stripedContents = StringUtil.removeTag(contents);
		if (stripedContents.length() < len) {
			return stripedContents;
		}
		return stripedContents.substring(0, len) + "...";
	}

    /**
     * 문자열 A에서 Z사이의 랜덤 문자열을 구하는 기능을 제공 시작문자열과 종료문자열 사이의 랜덤 문자열을 구하는 기능
     *
     * @param startChr - 첫 문자
     * @param endChr - 마지막문자
     * @return 랜덤문자
     * @see
     */
    public static String getRandomStr(char startChr, char endChr) {

        int randomInt;
        String randomStr = null;

        // 시작문자 및 종료문자를 아스키숫자로 변환한다.
        int startInt = Integer.valueOf(startChr);
        int endInt = Integer.valueOf(endChr);

        // 시작문자열이 종료문자열보가 클경우
        if (startInt > endInt) {
            throw new IllegalArgumentException("Start String: " + startChr + " End String: " + endChr);
        }

        // 랜덤 객체 생성
        SecureRandom rnd = new SecureRandom();

        do {
            // 시작문자 및 종료문자 중에서 랜덤 숫자를 발생시킨다.
            randomInt = rnd.nextInt(endInt + 1);
        } while (randomInt < startInt); // 입력받은 문자 'A'(65)보다 작으면 다시 랜덤 숫자 발생.

        // 랜덤 숫자를 문자로 변환 후 스트링으로 다시 변환
        randomStr = (char) randomInt + "";

        // 랜덤문자열를 리턴
        return randomStr;
    }

    public static String getTodayString() {
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd", Locale.KOREA);

        return format.format(new Date());
    }

    public static String getMonthString() {
        SimpleDateFormat format = new SimpleDateFormat("yyyyMM", Locale.KOREA);

        return format.format(new Date());
    }

    /**
     * UUID 생성
     * @return
     */
    public static String getRandomUUID(){
        return UUID.randomUUID().toString().replaceAll("-", "");
    }
    
    /**
     * Byte 단위로 문자열 자르기
     *
     * @param str - 문자열
     * @param maxLen - 자를 길이
     * @see
     */   
    public static String getMaxByteString(String str, int maxLen)
    {
         StringBuilder sb = new StringBuilder();
         int curLen = 0;
         String curChar;
        
         for (int i = 0; i < str.length(); i++)
         {
              curChar = str.substring(i, i + 1);
              curLen += curChar.getBytes().length;
              if (curLen > maxLen)
                   break;
              else
                   sb.append(curChar);
         }
         return sb.toString();
    }
    
    /**
     * 소스 문자열에서 s1 문자열 사이의 문자열을 뽑아온다.
     * 
     * @param s - 소스 문자열
     * @param s1 - 검색 구분 문자열
     * s.indexOf(s1) + s1.length() , s.lastIndexOf(s1)
     * @return 결과 문자열 리턴. 실패하면 원본 문자열을 리턴
     */
    public static String getStringBetween(String s, String s1) {
        int i = s.indexOf(s1) + s1.length();
        int j = s.lastIndexOf(s1);
        if (i < 0 || j < 0 || i > j)
            return s;
        else
            return s.substring(i, j);
    }
    
    /**
     * 소스 문자열에서 가장 앞에 위치한 s1과 가장 앞에 위치한 s2 사이에 문자열을 뽑아온다.
     * 
     * @param s - 소스 문자열
     * @param s1 - 찾을 처음 문자열 s.indexOf(s1) + s1.length()
     * @param s2 - 찾을 마지막 문자열 s.indexOf(s2)
     * @return 결과 문자열 리턴. 실패하면 원본 문자열을 리턴한다.
     */
    public static String getStringBetween(String s, String s1, String s2) {
        try {
            int i = s.indexOf(s1) + s1.length();
            int j = s.indexOf(s2);
            if (i < 0 || j < 0 || i > j)
                // return new String();
                return s;
            else
                return s.substring(i, j);
        } catch (Exception e) {
            return s;
        }
    }
    
    /**
     * 소스 문자열에서 가장 마지막에 위치한 sChk 부터 끝까지 문자열을 리턴한다.
     * 
     * @param s - 소스 문자열
     * @param sChk - 마지막으로 찾을 문자열     * 
     * @return 결과 문자열 리턴. 실패하면 원본 문자열을 리턴한다.
     */    
    public static String getTailSubstring(String s, String sChk){
    	
    	String sRet = "";
    	
    	try {
			int i = s.length();
			int j = s.lastIndexOf(sChk)+1;			
			sRet = s.substring(j,i);
		} catch (Exception e) {
			return s;
		}    	
    	
    	return sRet;
    }

    /**
     * 소스 문자열에서 가장 앞에 위치한 s1과 가장 마지막에 위치한 s2 사이의 문자열을 뽑아온다.
     * 
     * @param s - 소스 문자열
     * @param s1 - 찾을 처음 문자열 s.indexOf(s1) + s1.length()
     * @param s2 - 찾을 마지막 문자열 s.lastIndexOf(s2)
     * @return 결과 문자열 리턴. 실패하면 원본 문자열을 리턴한다.
     */
    public static String getStringBetweenRev(String s, String s1, String s2) {
        try {
            int i = s.indexOf(s1) + s1.length();
            int j = s.lastIndexOf(s2);
            if (i < 0 || j < 0 || i > j)
                // return new String();
                return s;
            else
                return s.substring(i, j);
        } catch (Exception e) {
            return s;
        }
    }
    
    /**
     * 소스 문자열에서 가장 마지막에 위치한 s1과 가장 마지막에 위치한 s2 사이의 문자열을 뽑아온다.
     * 
     * @param s - 소스 문자열
     * @param s1 - 찾을 처음 문자열 s.lastIndexOf(s1) + s1.length()
     * @param s2 - 찾을 마지막 문자열 s.lastIndexOf(s2)
     * @return 결과 문자열 리턴. 실패하면 null을 리턴한다.
     */
    public static String getStringBetweenRev2(String s, String s1, String s2) {
        try {
            int i = s.lastIndexOf(s1) + s1.length();
            int j = s.lastIndexOf(s2);
            if (i < 0 || j < 0 || i > j)
                // return new String();
                return null;
            else
                return s.substring(i, j);
        } catch (Exception e) {
            return null;
        }
    }

    public static String[] getTokenizedString(String s) {
        ArrayList arraylist = new ArrayList();
        for (StringTokenizer stringtokenizer = new StringTokenizer(s); stringtokenizer
        .hasMoreTokens(); arraylist.add(stringtokenizer.nextToken()))
            ;
        String as[] = new String[arraylist.size()];
        arraylist.toArray(as);
        return as;
    }
    
    public static String[] getTokenizedString(String s, String s1) {
        ArrayList arraylist = new ArrayList();
        for (StringTokenizer stringtokenizer = new StringTokenizer(s, s1); stringtokenizer
        .hasMoreTokens(); arraylist.add(stringtokenizer.nextToken()))
            ;
        String as[] = new String[arraylist.size()];
        arraylist.toArray(as);
        return as;
    }
    
	/*
	 * public static void main(String[] args) { String oniku =
	 * "jdbc:mysql://localhost:3306/toplac_20191223"; String sRet = "";
	 * 
	 * StringUtil s = new StringUtil(); sRet = s.getTailSubstring(oniku, "/");
	 * System.out.println("test="+sRet);
	 * 
	 * }
	 */
    
}
