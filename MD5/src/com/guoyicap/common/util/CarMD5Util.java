package com.guoyicap.common.util;

import java.security.MessageDigest;
import java.util.*;

public class CarMD5Util {

  public static final String salt = "20180928";

  public static void main(String[] args) {
	  
	String appkey="BITEPIPEI";
	long timestamp=System.currentTimeMillis();
	System.out.println(timestamp);
	String sign=appkey+timestamp;
	System.out.println(sign);
    String sn = CarMD5Util.md5(sign);
    System.out.println(sn);
  }

  public static final String md5(String content) {
    // ���ڼ��ܵ��ַ�
    char[] md5String = {
      '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'
    };
    try {
      // ʹ��ƽ̨��Ĭ���ַ������� String ����Ϊ byte���У���������洢��һ���µ� byte������
      StringBuilder sb = new StringBuilder();
      sb.append(content).append(salt);
      byte[] btInput = sb.toString().getBytes();

      // ��ϢժҪ�ǰ�ȫ�ĵ����ϣ�����������������С�����ݣ�������̶����ȵĹ�ϣֵ��
      MessageDigest mdInst = MessageDigest.getInstance("MD5");

      // MessageDigest����ͨ��ʹ�� update�����������ݣ� ʹ��ָ����byte�������ժҪ
      mdInst.update(btInput);

      // ժҪ����֮��ͨ������digest����ִ�й�ϣ���㣬�������
      byte[] md = mdInst.digest();

      // ������ת����ʮ�����Ƶ��ַ�����ʽ
      int j = md.length;
      char[] str = new char[j * 2];
      int k = 0;
      for (int i = 0; i < j; i++) { //  i = 0
        byte byte0 = md[i]; // 95
        str[k++] = md5String[byte0 >>> 4 & 0xf]; //    5
        str[k++] = md5String[byte0 & 0xf]; //   F
      }

      // ���ؾ������ܺ���ַ���
      return new String(str);

    } catch (Exception e) {
      return null;
    }
  }
}

