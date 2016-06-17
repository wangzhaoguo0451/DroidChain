// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.util.Iterator;
import java.util.Stack;

// Referenced classes of package com.google.gson:
//            ObjectTypePair, Preconditions

final class MemoryRefStack
{

    MemoryRefStack()
    {
    }

    public boolean contains(ObjectTypePair objecttypepair)
    {
        boolean flag = false;
        if(objecttypepair != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        Iterator iterator = stack.iterator();
        ObjectTypePair objecttypepair1;
        do
        {
            if(!iterator.hasNext())
                continue; /* Loop/switch isn't completed */
            objecttypepair1 = (ObjectTypePair)iterator.next();
        } while(objecttypepair1.getObject() != objecttypepair.getObject() || !objecttypepair1.type.equals(objecttypepair.type));
        flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public boolean isEmpty()
    {
        return stack.isEmpty();
    }

    public ObjectTypePair peek()
    {
        return (ObjectTypePair)stack.peek();
    }

    public ObjectTypePair pop()
    {
        return (ObjectTypePair)stack.pop();
    }

    public ObjectTypePair push(ObjectTypePair objecttypepair)
    {
        Preconditions.checkNotNull(objecttypepair);
        return (ObjectTypePair)stack.push(objecttypepair);
    }

    private final Stack stack = new Stack();
}
