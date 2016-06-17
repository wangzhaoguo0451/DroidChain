// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.*;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log

public final class FilesCopy
{

    private FilesCopy()
    {
    }

    public static boolean copy(String s, String s1, boolean flag)
    {
        boolean flag1;
        File file;
        flag1 = false;
        file = new File(s);
        if(file.exists()) goto _L2; else goto _L1
_L1:
        return flag1;
_L2:
        File file1;
        file1 = new File(s1);
        if(!file.isFile())
            break; /* Loop/switch isn't completed */
        if(!file1.isFile() && file1.exists())
            continue; /* Loop/switch isn't completed */
        copyFile(s, s1);
        if(flag)
            file.delete();
_L5:
        flag1 = true;
        if(true) goto _L1; else goto _L3
_L3:
        if(!file.isDirectory()) goto _L5; else goto _L4
_L4:
        if(!file1.exists())
            file1.mkdir();
        if(!file1.isDirectory()) goto _L1; else goto _L6
_L6:
        String as[] = file.list();
        while(flag1 < as.length) 
        {
            copy((new StringBuilder()).append(s).append("/").append(as[flag1]).toString(), (new StringBuilder()).append(s1).append("/").append(as[flag1]).toString(), flag);
            flag1++;
        }
          goto _L5
    }

    public static boolean copyAssets(Context context, String s, String s1)
    {
        FileOutputStream fileoutputstream;
        InputStream inputstream;
        inputstream = context.getAssets().open(s);
        fileoutputstream = new FileOutputStream(s1);
        byte abyte0[] = new byte[16384];
        do
        {
            int i = inputstream.read(abyte0);
            if(i == -1)
                break;
            fileoutputstream.write(abyte0, 0, i);
        } while(true);
          goto _L1
        Exception exception;
        exception;
_L6:
        exception.printStackTrace();
        if(fileoutputstream == null)
            break MISSING_BLOCK_LABEL_261;
        fileoutputstream.close();
        boolean flag = false;
_L2:
        return flag;
_L1:
        long l;
        long l1;
        File file = new File(s1);
        inputstream.close();
        int j = context.getAssets().open(s).available();
        if(!file.exists())
            break MISSING_BLOCK_LABEL_172;
        l = j;
        l1 = file.length();
        if(l != l1)
            break MISSING_BLOCK_LABEL_172;
        flag = true;
_L3:
        try
        {
            fileoutputstream.close();
        }
        catch(IOException ioexception2)
        {
            Object aobj2[] = new Object[1];
            aobj2[0] = ioexception2;
            Log.e("FilesCopy", null, aobj2);
            flag = false;
        }
          goto _L2
        flag = false;
          goto _L3
        IOException ioexception1;
        ioexception1;
        Object aobj1[] = new Object[1];
        aobj1[0] = ioexception1;
        Log.e("FilesCopy", null, aobj1);
        flag = false;
          goto _L2
        Exception exception1;
        exception1;
        fileoutputstream = null;
_L5:
        if(fileoutputstream != null)
            try
            {
                fileoutputstream.close();
            }
            catch(IOException ioexception)
            {
                Object aobj[] = new Object[1];
                aobj[0] = ioexception;
                Log.e("FilesCopy", null, aobj);
            }
        throw exception1;
        exception1;
        if(true) goto _L5; else goto _L4
_L4:
        exception;
        fileoutputstream = null;
          goto _L6
        flag = false;
          goto _L2
    }

    public static boolean copyFile(String s, String s1)
    {
        FileInputStream fileinputstream = null;
        FileInputStream fileinputstream1 = new FileInputStream(s);
        FileOutputStream fileoutputstream;
        Exception exception;
        Exception exception1;
        boolean flag;
        IOException ioexception2;
        try
        {
            fileoutputstream = new FileOutputStream(s1);
            break MISSING_BLOCK_LABEL_21;
        }
        // Misplaced declaration of an exception variable
        catch(Exception exception1)
        {
            fileoutputstream = null;
            fileinputstream = fileinputstream1;
        }
        finally
        {
            fileoutputstream = null;
            continue; /* Loop/switch isn't completed */
        }
          goto _L1
        exception1;
        fileinputstream = fileinputstream1;
_L1:
        exception1.printStackTrace();
        IOException ioexception4;
        IOException ioexception5;
        if(fileinputstream != null)
            try
            {
                fileinputstream.close();
            }
            catch(IOException ioexception3)
            {
                ioexception3.printStackTrace();
            }
        if(fileoutputstream == null)
            break MISSING_BLOCK_LABEL_239;
        fileoutputstream.close();
        flag = false;
_L2:
        return flag;
        byte abyte0[] = new byte[16384];
        do
        {
            int i = fileinputstream1.read(abyte0);
            if(i == -1)
                break;
            fileoutputstream.write(abyte0, 0, i);
        } while(true);
        flag = true;
        try
        {
            fileinputstream1.close();
        }
        // Misplaced declaration of an exception variable
        catch(IOException ioexception4)
        {
            ioexception4.printStackTrace();
            flag = false;
        }
        try
        {
            fileoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch(IOException ioexception5)
        {
            ioexception5.printStackTrace();
            flag = false;
        }
          goto _L2
        ioexception2;
        ioexception2.printStackTrace();
        flag = false;
          goto _L2
        exception;
        fileoutputstream = null;
        fileinputstream1 = null;
_L4:
        if(fileinputstream1 != null)
            try
            {
                fileinputstream1.close();
            }
            catch(IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        if(fileoutputstream != null)
            try
            {
                fileoutputstream.close();
            }
            catch(IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        throw exception;
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        fileinputstream1 = fileinputstream;
        if(true) goto _L4; else goto _L3
_L3:
        exception1;
        fileoutputstream = null;
          goto _L1
        flag = false;
          goto _L2
    }
}
