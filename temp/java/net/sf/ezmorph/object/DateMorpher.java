// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.object;

import java.text.*;
import java.util.Date;
import java.util.Locale;
import net.sf.ezmorph.MorphException;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.object:
//            AbstractObjectMorpher

public final class DateMorpher extends AbstractObjectMorpher
{

    public DateMorpher(String as[])
    {
        this(as, Locale.getDefault(), false);
    }

    public DateMorpher(String as[], Date date)
    {
        this(as, date, Locale.getDefault(), false);
    }

    public DateMorpher(String as[], Date date, Locale locale1, boolean flag)
    {
        super(true);
        if(as == null || as.length == 0)
            throw new MorphException("invalid array of formats");
        formats = as;
        if(locale1 == null)
            locale = Locale.getDefault();
        else
            locale = locale1;
        lenient = flag;
        setDefaultValue(date);
    }

    public DateMorpher(String as[], Locale locale1)
    {
        this(as, locale1, false);
    }

    public DateMorpher(String as[], Locale locale1, boolean flag)
    {
        if(as == null || as.length == 0)
            throw new MorphException("invalid array of formats");
        formats = as;
        if(locale1 == null)
            locale = Locale.getDefault();
        else
            locale = locale1;
        lenient = flag;
    }

    public DateMorpher(String as[], boolean flag)
    {
        this(as, Locale.getDefault(), flag);
    }

    public boolean equals(Object obj)
    {
        boolean flag = false;
        if(this != obj) goto _L2; else goto _L1
_L1:
        flag = true;
_L4:
        return flag;
_L2:
        if(obj != null && (obj instanceof DateMorpher))
        {
            DateMorpher datemorpher = (DateMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            equalsbuilder.append(formats, datemorpher.formats);
            equalsbuilder.append(locale, datemorpher.locale);
            equalsbuilder.append(lenient, datemorpher.lenient);
            if(isUseDefault() && datemorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), datemorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !datemorpher.isUseDefault())
                flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public Date getDefaultValue()
    {
        return (Date)defaultValue.clone();
    }

    public int hashCode()
    {
        HashCodeBuilder hashcodebuilder = new HashCodeBuilder();
        hashcodebuilder.append(formats);
        hashcodebuilder.append(locale);
        hashcodebuilder.append(lenient);
        if(isUseDefault())
            hashcodebuilder.append(getDefaultValue());
        return hashcodebuilder.toHashCode();
    }

    public Object morph(Object obj)
    {
        Date date1;
        if(obj == null)
        {
            date1 = null;
        } else
        {
label0:
            {
                Class class1 = class$0;
                if(class1 == null)
                {
                    Class class2;
                    try
                    {
                        class2 = Class.forName("java.util.Date");
                    }
                    catch(ClassNotFoundException classnotfoundexception)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception.getMessage());
                    }
                    class1 = class2;
                    class$0 = class1;
                }
                if(!class1.isAssignableFrom(obj.getClass()))
                    break label0;
                date1 = (Date)obj;
            }
        }
_L1:
        return date1;
        String s;
        SimpleDateFormat simpledateformat;
        int i;
        if(!supports(obj.getClass()))
            throw new MorphException(obj.getClass() + " is not supported");
        s = (String)obj;
        simpledateformat = null;
        i = 0;
_L2:
label1:
        {
            if(i < formats.length)
                break label1;
            ParseException parseexception;
            Date date;
            if(isUseDefault())
                date1 = defaultValue;
            else
                throw new MorphException("Unable to parse the date " + obj);
        }
          goto _L1
        if(simpledateformat == null)
            simpledateformat = new SimpleDateFormat(formats[i], locale);
        else
            simpledateformat.applyPattern(formats[i]);
        simpledateformat.setLenient(lenient);
        date = simpledateformat.parse(s.toLowerCase());
        date1 = date;
          goto _L1
        parseexception;
        i++;
          goto _L2
    }

    public Class morphsTo()
    {
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            try
            {
                class2 = Class.forName("java.util.Date");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class1 = class2;
            class$0 = class1;
        }
        return class1;
    }

    public void setDefaultValue(Date date)
    {
        defaultValue = (Date)date.clone();
    }

    public boolean supports(Class class1)
    {
        Class class2 = class$1;
        if(class2 == null)
        {
            Class class3;
            try
            {
                class3 = Class.forName("java.lang.String");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class2 = class3;
            class$1 = class2;
        }
        return class2.isAssignableFrom(class1);
    }

    static Class class$0;
    static Class class$1;
    private Date defaultValue;
    private String formats[];
    private boolean lenient;
    private Locale locale;
}
