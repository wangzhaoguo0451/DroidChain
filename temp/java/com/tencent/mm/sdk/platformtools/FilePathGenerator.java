// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import com.tencent.mm.algorithm.MD5;
import java.io.File;
import java.io.IOException;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Util, FilesCopy

public class FilePathGenerator
{
    public static final class DIR_HASH_TYPE extends Enum
    {

        public static DIR_HASH_TYPE valueOf(String s)
        {
            return (DIR_HASH_TYPE)Enum.valueOf(com/tencent/mm/sdk/platformtools/FilePathGenerator$DIR_HASH_TYPE, s);
        }

        public static DIR_HASH_TYPE[] values()
        {
            return (DIR_HASH_TYPE[])x.clone();
        }

        public static final DIR_HASH_TYPE ALL_MD5;
        public static final DIR_HASH_TYPE HEAD_2_BYTE;
        private static final DIR_HASH_TYPE x[];

        static 
        {
            HEAD_2_BYTE = new DIR_HASH_TYPE("HEAD_2_BYTE", 0);
            ALL_MD5 = new DIR_HASH_TYPE("ALL_MD5", 1);
            DIR_HASH_TYPE adir_hash_type[] = new DIR_HASH_TYPE[2];
            adir_hash_type[0] = HEAD_2_BYTE;
            adir_hash_type[1] = ALL_MD5;
            x = adir_hash_type;
        }

        private DIR_HASH_TYPE(String s, int i)
        {
            super(s, i);
        }
    }


    public FilePathGenerator()
    {
    }

    private static String b(String s)
    {
        String s1;
        s1 = null;
        break MISSING_BLOCK_LABEL_2;
        if(!Util.isNullOrNil(s) && s.length() > 4)
            s1 = (new StringBuilder()).append(s.substring(0, 2)).append("/").append(s.substring(2, 4)).append("/").toString();
        return s1;
    }

    private static boolean c(String s)
    {
        File file1;
        boolean flag1;
        File file = new File(s);
        if(file.exists())
            break MISSING_BLOCK_LABEL_67;
        file.mkdirs();
        file1 = new File((new StringBuilder()).append(s).append(".nomedia").toString());
        flag1 = file1.exists();
        if(flag1)
            break MISSING_BLOCK_LABEL_67;
        file1.createNewFile();
_L1:
        boolean flag = true;
_L2:
        return flag;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
          goto _L1
        Exception exception;
        exception;
        flag = false;
          goto _L2
    }

    public static String defGenPathWithOld(String s, String s1, String s2, String s3, String s4, int i)
    {
        String s5;
        String s6;
        s5 = (new StringBuilder()).append(s).append(s2).append(s3).append(s4).toString();
        s6 = genPath(s1, s2, s3, s4, i);
        if(!Util.isNullOrNil(s5) && !Util.isNullOrNil(s6)) goto _L2; else goto _L1
_L1:
        s6 = null;
_L4:
        return s6;
_L2:
        File file = new File(s6);
        File file1 = new File(s5);
        if(!file.exists() && file1.exists())
            FilesCopy.copy(s5, s6, false);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static String genPath(String s, String s1, String s2, String s3, int i)
    {
        String s4;
        s4 = null;
        break MISSING_BLOCK_LABEL_3;
_L2:
        String s5;
        do
            return s4;
        while(Util.isNullOrNil(s) || !s.endsWith("/"));
        s5 = "";
        if(i != 1)
            break; /* Loop/switch isn't completed */
        s5 = b(s2);
_L4:
        if(!Util.isNullOrNil(s5))
        {
            String s6 = (new StringBuilder()).append(s).append(s5).toString();
            if(c(s6))
                s4 = (new StringBuilder()).append(s6).append(Util.nullAsNil(s1)).append(s2).append(Util.nullAsNil(s3)).toString();
        }
        if(true) goto _L2; else goto _L1
_L1:
        if(i != 2) goto _L4; else goto _L3
_L3:
        if(Util.isNullOrNil(s2))
            s5 = null;
        else
            s5 = b(MD5.getMessageDigest(s2.getBytes()));
          goto _L4
    }

    public static final String ANDROID_DIR_SEP = "/";
    public static final int HASH_TYPE_ALL_MD5 = 2;
    public static final int HASH_TYPE_HEAD_2_BYTE = 1;
    public static final String NO_MEDIA_FILENAME = ".nomedia";
}
