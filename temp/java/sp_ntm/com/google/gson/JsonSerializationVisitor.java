// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.Array;
import java.lang.reflect.Type;

// Referenced classes of package com.google.gson:
//            ObjectTypePair, JsonElement, JsonNull, JsonArray, 
//            ObjectNavigatorFactory, FieldNamingStrategy2, JsonObject, Preconditions, 
//            Pair, JsonSerializer, FieldAttributes, ObjectNavigator, 
//            MemoryRefStack, CircularReferenceException, TypeInfoFactory, TypeInfoArray, 
//            JsonPrimitive, JsonSerializationContext, ParameterizedTypeHandlerMap

final class JsonSerializationVisitor
    implements ObjectNavigator.Visitor
{

    JsonSerializationVisitor(ObjectNavigatorFactory objectnavigatorfactory, boolean flag, ParameterizedTypeHandlerMap parameterizedtypehandlermap, JsonSerializationContext jsonserializationcontext, MemoryRefStack memoryrefstack)
    {
        factory = objectnavigatorfactory;
        serializeNulls = flag;
        serializers = parameterizedtypehandlermap;
        context = jsonserializationcontext;
        ancestors = memoryrefstack;
    }

    private void addAsArrayElement(ObjectTypePair objecttypepair)
    {
        if(objecttypepair.getObject() == null)
        {
            root.getAsJsonArray().add(JsonNull.createJsonNull());
        } else
        {
            JsonElement jsonelement = getJsonElementForChild(objecttypepair);
            root.getAsJsonArray().add(jsonelement);
        }
    }

    private void addAsChildOfObject(FieldAttributes fieldattributes, ObjectTypePair objecttypepair)
    {
        addChildAsElement(fieldattributes, getJsonElementForChild(objecttypepair));
    }

    private void addChildAsElement(FieldAttributes fieldattributes, JsonElement jsonelement)
    {
        FieldNamingStrategy2 fieldnamingstrategy2 = factory.getFieldNamingPolicy();
        root.getAsJsonObject().add(fieldnamingstrategy2.translateName(fieldattributes), jsonelement);
    }

    private void assignToRoot(JsonElement jsonelement)
    {
        Preconditions.checkNotNull(jsonelement);
        root = jsonelement;
    }

    private JsonElement findAndInvokeCustomSerializer(ObjectTypePair objecttypepair)
    {
        Pair pair = objecttypepair.getMatchingHandler(serializers);
        if(pair != null) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L4:
        return ((JsonElement) (obj));
_L2:
        JsonSerializer jsonserializer;
        ObjectTypePair objecttypepair1;
        jsonserializer = (JsonSerializer)pair.first;
        objecttypepair1 = (ObjectTypePair)pair.second;
        start(objecttypepair1);
        JsonNull jsonnull;
        obj = jsonserializer.serialize(objecttypepair1.getObject(), objecttypepair1.getType(), context);
        if(obj != null)
            break MISSING_BLOCK_LABEL_78;
        jsonnull = JsonNull.createJsonNull();
        obj = jsonnull;
        end(objecttypepair1);
        if(true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        end(objecttypepair1);
        throw exception;
    }

    private Object getFieldValue(FieldAttributes fieldattributes, Object obj)
    {
        Object obj1;
        try
        {
            obj1 = fieldattributes.get(obj);
        }
        catch(IllegalAccessException illegalaccessexception)
        {
            throw new RuntimeException(illegalaccessexception);
        }
        return obj1;
    }

    private JsonElement getJsonElementForChild(ObjectTypePair objecttypepair)
    {
        ObjectNavigator objectnavigator = factory.create(objecttypepair);
        JsonSerializationVisitor jsonserializationvisitor = new JsonSerializationVisitor(factory, serializeNulls, serializers, context, ancestors);
        objectnavigator.accept(jsonserializationvisitor);
        return jsonserializationvisitor.getJsonElement();
    }

    private boolean isFieldNull(FieldAttributes fieldattributes, Object obj)
    {
        boolean flag;
        if(getFieldValue(fieldattributes, obj) == null)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public void end(ObjectTypePair objecttypepair)
    {
        if(objecttypepair != null)
            ancestors.pop();
    }

    public JsonElement getJsonElement()
    {
        return root;
    }

    public Object getTarget()
    {
        return null;
    }

    public void start(ObjectTypePair objecttypepair)
    {
        if(objecttypepair != null)
        {
            if(ancestors.contains(objecttypepair))
                throw new CircularReferenceException(objecttypepair);
            ancestors.push(objecttypepair);
        }
    }

    public void startVisitingObject(Object obj)
    {
        assignToRoot(new JsonObject());
    }

    public void visitArray(Object obj, Type type)
    {
        assignToRoot(new JsonArray());
        int i = Array.getLength(obj);
        Type type1 = TypeInfoFactory.getTypeInfoForArray(type).getSecondLevelType();
        for(int j = 0; j < i; j++)
            addAsArrayElement(new ObjectTypePair(Array.get(obj, j), type1, false));

    }

    public void visitArrayField(FieldAttributes fieldattributes, Type type, Object obj)
    {
        try
        {
            if(isFieldNull(fieldattributes, obj))
            {
                if(serializeNulls)
                    addChildAsElement(fieldattributes, JsonNull.createJsonNull());
            } else
            {
                addAsChildOfObject(fieldattributes, new ObjectTypePair(getFieldValue(fieldattributes, obj), type, false));
            }
        }
        catch(CircularReferenceException circularreferenceexception)
        {
            throw circularreferenceexception.createDetailedException(fieldattributes);
        }
    }

    public boolean visitFieldUsingCustomHandler(FieldAttributes fieldattributes, Type type, Object obj)
    {
        boolean flag;
label0:
        {
            flag = true;
            try
            {
                Preconditions.checkState(root.isJsonObject());
                Object obj1 = fieldattributes.get(obj);
                if(obj1 == null)
                {
                    if(serializeNulls)
                        addChildAsElement(fieldattributes, JsonNull.createJsonNull());
                    break label0;
                }
                JsonElement jsonelement = findAndInvokeCustomSerializer(new ObjectTypePair(obj1, type, false));
                if(jsonelement != null)
                {
                    addChildAsElement(fieldattributes, jsonelement);
                    break label0;
                }
            }
            catch(IllegalAccessException illegalaccessexception)
            {
                throw new RuntimeException();
            }
            catch(CircularReferenceException circularreferenceexception)
            {
                throw circularreferenceexception.createDetailedException(fieldattributes);
            }
            flag = false;
        }
        return flag;
    }

    public void visitObjectField(FieldAttributes fieldattributes, Type type, Object obj)
    {
        try
        {
            if(isFieldNull(fieldattributes, obj))
            {
                if(serializeNulls)
                    addChildAsElement(fieldattributes, JsonNull.createJsonNull());
            } else
            {
                addAsChildOfObject(fieldattributes, new ObjectTypePair(getFieldValue(fieldattributes, obj), type, false));
            }
        }
        catch(CircularReferenceException circularreferenceexception)
        {
            throw circularreferenceexception.createDetailedException(fieldattributes);
        }
    }

    public void visitPrimitive(Object obj)
    {
        Object obj1;
        if(obj == null)
            obj1 = JsonNull.createJsonNull();
        else
            obj1 = new JsonPrimitive(obj);
        assignToRoot(((JsonElement) (obj1)));
    }

    public boolean visitUsingCustomHandler(ObjectTypePair objecttypepair)
    {
        boolean flag;
label0:
        {
            flag = true;
            try
            {
                if(objecttypepair.getObject() == null)
                {
                    if(serializeNulls)
                        assignToRoot(JsonNull.createJsonNull());
                    break label0;
                }
                JsonElement jsonelement = findAndInvokeCustomSerializer(objecttypepair);
                if(jsonelement != null)
                {
                    assignToRoot(jsonelement);
                    break label0;
                }
            }
            catch(CircularReferenceException circularreferenceexception)
            {
                throw circularreferenceexception.createDetailedException(null);
            }
            flag = false;
        }
        return flag;
    }

    private final MemoryRefStack ancestors;
    private final JsonSerializationContext context;
    private final ObjectNavigatorFactory factory;
    private JsonElement root;
    private final boolean serializeNulls;
    private final ParameterizedTypeHandlerMap serializers;
}
