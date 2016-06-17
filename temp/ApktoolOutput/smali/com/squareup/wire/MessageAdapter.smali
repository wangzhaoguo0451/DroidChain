.class public final Lcom/squareup/wire/MessageAdapter;
.super Ljava/lang/Object;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TM;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/squareup/wire/Wire;

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/squareup/wire/Message$Builder",
            "<TM;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/wire/MessageAdapter$FieldInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/wire/Wire;Ljava/lang/Class;)V
    .locals 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Wire;",
            "Ljava/lang/Class",
            "<TM;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/squareup/wire/MessageAdapter;->d:Ljava/util/Map;

    .line 119
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/squareup/wire/MessageAdapter;->e:Ljava/util/Map;

    .line 124
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/squareup/wire/MessageAdapter;->b:Lcom/squareup/wire/Wire;

    .line 125
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/squareup/wire/MessageAdapter;->a:Ljava/lang/Class;

    .line 126
    invoke-static/range {p2 .. p2}, Lcom/squareup/wire/MessageAdapter;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/wire/MessageAdapter;->c:Ljava/lang/Class;

    .line 128
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    array-length v12, v11

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v12, :cond_6

    aget-object v7, v11, v10

    .line 130
    const-class v1, Lcom/squareup/wire/ProtoField;

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/squareup/wire/ProtoField;

    .line 131
    if-eqz v5, :cond_1

    .line 132
    invoke-interface {v5}, Lcom/squareup/wire/ProtoField;->tag()I

    move-result v2

    .line 134
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 135
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v6, 0x0

    .line 137
    invoke-interface {v5}, Lcom/squareup/wire/ProtoField;->type()Lcom/squareup/wire/Message$Datatype;

    move-result-object v4

    .line 138
    sget-object v1, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne v4, v1, :cond_4

    .line 139
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    :cond_0
    :goto_1
    iget-object v13, p0, Lcom/squareup/wire/MessageAdapter;->e:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    invoke-interface {v5}, Lcom/squareup/wire/ProtoField;->label()Lcom/squareup/wire/Message$Label;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {p0, v3, v8}, Lcom/squareup/wire/MessageAdapter;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/squareup/wire/MessageAdapter$FieldInfo;-><init>(ILjava/lang/String;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Message$Label;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcaw;)V

    invoke-interface {v13, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_1
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0

    .line 139
    :cond_2
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v6, 0x0

    aget-object v6, v1, v6

    instance-of v1, v6, Ljava/lang/Class;

    if-eqz v1, :cond_3

    const-class v8, Ljava/lang/Enum;

    move-object v1, v6

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v8, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast v6, Ljava/lang/Class;

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 140
    :cond_4
    sget-object v1, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;

    if-ne v4, v1, :cond_0

    .line 141
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v1, Lcom/squareup/wire/Message;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v6, 0x0

    aget-object v6, v1, v6

    instance-of v1, v6, Ljava/lang/Class;

    if-eqz v1, :cond_5

    const-class v8, Lcom/squareup/wire/Message;

    move-object v1, v6

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v8, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast v6, Ljava/lang/Class;

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 147
    :cond_6
    return-void
.end method

.method private a(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 393
    invoke-static {p1}, Lcom/squareup/wire/WireOutput;->varintTagSize(I)I

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/squareup/wire/MessageAdapter;->a(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private a(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 401
    sget-object v1, Lcaw;->a:[I

    invoke-virtual {p2}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 434
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 403
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->int32Size(I)I

    move-result v0

    .line 432
    :goto_0
    return v0

    .line 406
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireOutput;->varint64Size(J)I

    move-result v0

    goto :goto_0

    .line 408
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v0

    goto :goto_0

    .line 410
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->zigZag32(I)I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v0

    goto :goto_0

    .line 412
    :pswitch_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireOutput;->zigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireOutput;->varint64Size(J)I

    move-result v0

    goto :goto_0

    .line 414
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    .line 416
    :pswitch_6
    check-cast p1, Lcom/squareup/wire/ProtoEnum;

    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->b:Lcom/squareup/wire/Wire;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcap;

    invoke-static {p1}, Lcap;->a(Lcom/squareup/wire/ProtoEnum;)I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v0

    goto :goto_0

    .line 418
    :pswitch_7
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_2

    .line 419
    :cond_3
    invoke-static {v1}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    .line 421
    :pswitch_8
    check-cast p1, Lcom/squareup/wire/ByteString;

    invoke-virtual {p1}, Lcom/squareup/wire/ByteString;->size()I

    move-result v0

    .line 422
    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_0

    .line 424
    :pswitch_9
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_0

    .line 428
    :pswitch_a
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 432
    :pswitch_b
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private a(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")I"
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 258
    invoke-direct {p0, p2, v2, p3}, Lcom/squareup/wire/MessageAdapter;->a(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v2

    add-int/2addr v0, v2

    .line 259
    goto :goto_0

    .line 260
    :cond_0
    return v0
.end method

.method private a(I)Lcom/squareup/wire/Extension;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/wire/Extension",
            "<",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 757
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->b:Lcom/squareup/wire/Wire;

    iget-object v0, v0, Lcom/squareup/wire/Wire;->registry:Lcas;

    .line 758
    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->a:Ljava/lang/Class;

    iget-object v0, v0, Lcas;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Extension;

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TM;>;)",
            "Ljava/lang/Class",
            "<",
            "Lcom/squareup/wire/Message$Builder",
            "<TM;>;>;"
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$Builder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 154
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No builder class found for message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcbh;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 635
    sget-object v3, Lcaw;->a:[I

    invoke-virtual {p3}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 674
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 638
    :pswitch_0
    invoke-virtual {p1}, Lcbh;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 672
    :goto_0
    return-object v0

    .line 641
    :pswitch_1
    invoke-virtual {p1}, Lcbh;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 643
    :pswitch_2
    invoke-virtual {p1}, Lcbh;->c()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 645
    :pswitch_3
    invoke-virtual {p1}, Lcbh;->d()J

    move-result-wide v2

    ushr-long v0, v2, v0

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    neg-long v2, v2

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 647
    :pswitch_4
    invoke-virtual {p1}, Lcbh;->c()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 649
    :pswitch_5
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->b:Lcom/squareup/wire/Wire;

    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    if-nez v0, :cond_2

    move-object v0, v2

    :goto_2
    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/squareup/wire/MessageAdapter;->a(I)Lcom/squareup/wire/Extension;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/squareup/wire/Extension;->getEnumType()Ljava/lang/Class;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcap;

    move-result-object v0

    .line 650
    invoke-virtual {p1}, Lcbh;->c()I

    move-result v1

    .line 652
    :try_start_0
    invoke-virtual {v0, v1}, Lcap;->a(I)Lcom/squareup/wire/ProtoEnum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 649
    :cond_2
    iget-object v0, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumType:Ljava/lang/Class;

    goto :goto_2

    .line 655
    :catch_0
    move-exception v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 658
    :pswitch_6
    invoke-virtual {p1}, Lcbh;->c()I

    move-result v1

    invoke-virtual {p1}, Lcbh;->b()I

    move-result v0

    if-lt v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v2, p1, Lcbh;->a:[B

    iget v3, p1, Lcbh;->b:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, p1, Lcbh;->b:I

    add-int/2addr v1, v2

    iput v1, p1, Lcbh;->b:I

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcbh;->d(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto/16 :goto_0

    .line 660
    :pswitch_7
    invoke-virtual {p1}, Lcbh;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcbh;->b(I)Lcom/squareup/wire/ByteString;

    move-result-object v0

    goto/16 :goto_0

    .line 662
    :pswitch_8
    invoke-virtual {p1}, Lcbh;->c()I

    move-result v0

    iget v3, p1, Lcbh;->d:I

    const/16 v4, 0x40

    if-lt v3, v4, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wire recursion limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p1, v0}, Lcbh;->c(I)I

    move-result v3

    iget v0, p1, Lcbh;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcbh;->d:I

    iget-object v4, p0, Lcom/squareup/wire/MessageAdapter;->b:Lcom/squareup/wire/Wire;

    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    if-nez v0, :cond_6

    move-object v0, v2

    :goto_3
    if-nez v0, :cond_5

    invoke-direct {p0, p2}, Lcom/squareup/wire/MessageAdapter;->a(I)Lcom/squareup/wire/Extension;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/squareup/wire/Extension;->getMessageType()Ljava/lang/Class;

    move-result-object v0

    :cond_5
    invoke-virtual {v4, v0}, Lcom/squareup/wire/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/wire/MessageAdapter;->a(Lcbh;)Lcom/squareup/wire/Message;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcbh;->a(I)V

    iget v1, p1, Lcbh;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcbh;->d:I

    iput v3, p1, Lcbh;->c:I

    goto/16 :goto_0

    :cond_6
    iget-object v0, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageType:Ljava/lang/Class;

    goto :goto_3

    .line 665
    :pswitch_9
    invoke-virtual {p1}, Lcbh;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 668
    :pswitch_a
    invoke-virtual {p1}, Lcbh;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 670
    :pswitch_b
    invoke-virtual {p1}, Lcbh;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    .line 672
    :pswitch_c
    invoke-virtual {p1}, Lcbh;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method static a(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/squareup/wire/MessageAdapter$FieldInfo;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 95
    #getter for: Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageField:Ljava/lang/reflect/Field;
    invoke-static {p1}, Lcom/squareup/wire/MessageAdapter$FieldInfo;->access$000(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Field is not of type \"Message\""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 99
    :cond_0
    :try_start_0
    #getter for: Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageField:Ljava/lang/reflect/Field;
    invoke-static {p1}, Lcom/squareup/wire/MessageAdapter$FieldInfo;->access$000(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->c:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No builder method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->c:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private a(Lcom/squareup/wire/Message$Builder;ILjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Message$Builder",
            "<TM;>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    #getter for: Lcom/squareup/wire/MessageAdapter$FieldInfo;->builderMethod:Ljava/lang/reflect/Method;
    invoke-static {v0}, Lcom/squareup/wire/MessageAdapter$FieldInfo;->access$100(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 110
    :catch_1
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private a(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    invoke-virtual {p4}, Lcom/squareup/wire/Message$Datatype;->wireType()Lcom/squareup/wire/WireType;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 471
    invoke-direct {p0, p1, p3, p4}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/WireOutput;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    .line 472
    return-void
.end method

.method private a(Lcom/squareup/wire/WireOutput;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 479
    sget-object v0, Lcaw;->a:[I

    invoke-virtual {p3}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 530
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 481
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeSignedVarint32(I)V

    .line 528
    :goto_0
    return-void

    .line 485
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/WireOutput;->writeVarint64(J)V

    goto :goto_0

    .line 488
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    goto :goto_0

    .line 491
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->zigZag32(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    goto :goto_0

    .line 494
    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireOutput;->zigZag64(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/WireOutput;->writeVarint64(J)V

    goto :goto_0

    .line 497
    :pswitch_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 500
    :pswitch_6
    check-cast p2, Lcom/squareup/wire/ProtoEnum;

    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->b:Lcom/squareup/wire/Wire;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcap;

    invoke-static {p2}, Lcap;->a(Lcom/squareup/wire/ProtoEnum;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    goto :goto_0

    .line 503
    :pswitch_7
    check-cast p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 504
    array-length v1, v0

    invoke-virtual {p1, v1}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 505
    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeRawBytes([B)V

    goto :goto_0

    .line 508
    :pswitch_8
    check-cast p2, Lcom/squareup/wire/ByteString;

    .line 509
    invoke-virtual {p2}, Lcom/squareup/wire/ByteString;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 510
    invoke-virtual {p2}, Lcom/squareup/wire/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeRawBytes([B)V

    goto :goto_0

    .line 513
    :pswitch_9
    check-cast p2, Lcom/squareup/wire/Message;

    invoke-virtual {p2}, Lcom/squareup/wire/Message;->getSerializedSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->b:Lcom/squareup/wire/Wire;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V

    goto/16 :goto_0

    .line 517
    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeFixed32(I)V

    goto/16 :goto_0

    .line 521
    :pswitch_b
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/WireOutput;->writeFixed64(J)V

    goto/16 :goto_0

    .line 524
    :pswitch_c
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeFixed32(I)V

    goto/16 :goto_0

    .line 527
    :pswitch_d
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/WireOutput;->writeFixed64(J)V

    goto/16 :goto_0

    .line 479
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method private a(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireOutput;",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    .prologue
    .line 327
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 328
    invoke-direct {p0, p1, p3, v1, p4}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_0

    .line 330
    :cond_0
    return-void
.end method

.method private b(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")I"
        }
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 266
    invoke-direct {p0, v2, p3}, Lcom/squareup/wire/MessageAdapter;->a(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v2

    add-int/2addr v0, v2

    .line 267
    goto :goto_0

    .line 269
    :cond_0
    sget-object v1, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-static {p2, v1}, Lcom/squareup/wire/WireOutput;->makeTag(ILcom/squareup/wire/WireType;)I

    move-result v1

    invoke-static {v1}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v1

    .line 270
    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 271
    add-int/2addr v0, v1

    .line 272
    return v0
.end method

.method private b(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireOutput;",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 335
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 336
    invoke-direct {p0, v2, p4}, Lcom/squareup/wire/MessageAdapter;->a(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v2

    add-int/2addr v0, v2

    .line 337
    goto :goto_0

    .line 338
    :cond_0
    sget-object v1, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-virtual {p1, p3, v1}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 339
    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 340
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 341
    invoke-direct {p0, p1, v1, p4}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/WireOutput;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_1

    .line 343
    :cond_1
    return-void
.end method


# virtual methods
.method final a(Lcom/squareup/wire/Message;)I
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/squareup/wire/MessageAdapter;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 206
    invoke-static {p1, v0}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_0

    .line 208
    iget v5, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->tag:I

    .line 211
    iget-object v6, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 212
    iget-object v0, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->label:Lcom/squareup/wire/Message$Label;

    .line 214
    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 215
    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 216
    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v5, v6}, Lcom/squareup/wire/MessageAdapter;->b(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    .line 218
    :cond_1
    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, v5, v6}, Lcom/squareup/wire/MessageAdapter;->a(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    .line 221
    :cond_2
    invoke-direct {p0, v5, v1, v6}, Lcom/squareup/wire/MessageAdapter;->a(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    .line 223
    goto :goto_0

    .line 225
    :cond_3
    instance-of v0, p1, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v0, :cond_7

    move-object v0, p1

    .line 226
    check-cast v0, Lcom/squareup/wire/ExtendableMessage;

    .line 227
    iget-object v1, v0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    if-eqz v1, :cond_7

    .line 228
    iget-object v4, v0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    invoke-virtual {v4}, Lcar;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Extension;

    invoke-virtual {v4, v0}, Lcar;->a(Lcom/squareup/wire/Extension;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getTag()I

    move-result v6

    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getDatatype()Lcom/squareup/wire/Message$Datatype;

    move-result-object v7

    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getLabel()Lcom/squareup/wire/Message$Label;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v6, v7}, Lcom/squareup/wire/MessageAdapter;->b(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_1

    :cond_4
    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, v6, v7}, Lcom/squareup/wire/MessageAdapter;->a(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_1

    :cond_5
    invoke-direct {p0, v6, v1, v7}, Lcom/squareup/wire/MessageAdapter;->a(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_1

    :cond_6
    add-int/2addr v2, v3

    .line 231
    :cond_7
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getUnknownFieldsSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    .line 232
    return v0
.end method

.method final a(Lcbh;)Lcom/squareup/wire/Message;
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcbh;",
            ")TM;"
        }
    .end annotation

    .prologue
    .line 553
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/wire/MessageAdapter;->c:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/Message$Builder;

    .line 554
    new-instance v7, Lcax;

    const/4 v3, 0x0

    invoke-direct {v7, v3}, Lcax;-><init>(B)V

    .line 557
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v5, 0x0

    .line 558
    invoke-virtual/range {p1 .. p1}, Lcbh;->a()I

    move-result v3

    .line 559
    shr-int/lit8 v8, v3, 0x3

    .line 560
    invoke-static {v3}, Lcom/squareup/wire/WireType;->valueOf(I)Lcom/squareup/wire/WireType;

    move-result-object v9

    .line 561
    if-nez v8, :cond_3

    .line 563
    iget-object v3, v7, Lcax;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/wire/MessageAdapter;->e:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 565
    if-eqz v3, :cond_1

    .line 566
    invoke-virtual {v7, v5}, Lcax;->a(I)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v3}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message$Builder;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 627
    :catch_0
    move-exception v2

    .line 628
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 568
    :cond_1
    :try_start_1
    move-object v0, v2

    check-cast v0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;

    move-object v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/squareup/wire/MessageAdapter;->a(I)Lcom/squareup/wire/Extension;

    move-result-object v6

    invoke-virtual {v7, v5}, Lcax;->a(I)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->setExtension(Lcom/squareup/wire/Extension;Ljava/lang/Object;)Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 629
    :catch_1
    move-exception v2

    .line 630
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 572
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/squareup/wire/Message$Builder;->build()Lcom/squareup/wire/Message;

    move-result-object v2

    return-object v2

    .line 577
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/wire/MessageAdapter;->e:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 578
    if-eqz v3, :cond_4

    .line 579
    iget-object v4, v3, Lcom/squareup/wire/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 580
    iget-object v3, v3, Lcom/squareup/wire/MessageAdapter$FieldInfo;->label:Lcom/squareup/wire/Message$Label;

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    .line 592
    :goto_2
    invoke-virtual {v4}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    if-ne v9, v3, :cond_8

    .line 594
    invoke-virtual/range {p1 .. p1}, Lcbh;->c()I

    move-result v4

    .line 595
    invoke-virtual/range {p1 .. p1}, Lcbh;->g()J

    move-result-wide v10

    .line 596
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcbh;->c(I)I

    move-result v6

    .line 597
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcbh;->g()J

    move-result-wide v12

    int-to-long v14, v4

    add-long/2addr v14, v10

    cmp-long v3, v12, v14

    if-gez v3, :cond_7

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v5}, Lcom/squareup/wire/MessageAdapter;->a(Lcbh;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;

    move-result-object v3

    .line 599
    sget-object v9, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne v5, v9, :cond_6

    instance-of v9, v3, Ljava/lang/Integer;

    if-eqz v9, :cond_6

    .line 601
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v12, v3

    invoke-virtual {v2, v8, v12, v13}, Lcom/squareup/wire/Message$Builder;->addVarint(IJ)V

    goto :goto_3

    .line 582
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/squareup/wire/MessageAdapter;->a(I)Lcom/squareup/wire/Extension;

    move-result-object v5

    .line 583
    if-nez v5, :cond_5

    .line 584
    sget-object v3, Lcaw;->b:[I

    invoke-virtual {v9}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported wire type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcbh;->d()J

    move-result-wide v4

    invoke-virtual {v2, v8, v4, v5}, Lcom/squareup/wire/Message$Builder;->addVarint(IJ)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcbh;->e()I

    move-result v3

    invoke-virtual {v2, v8, v3}, Lcom/squareup/wire/Message$Builder;->addFixed32(II)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcbh;->f()J

    move-result-wide v4

    invoke-virtual {v2, v8, v4, v5}, Lcom/squareup/wire/Message$Builder;->addFixed64(IJ)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcbh;->c()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcbh;->b(I)Lcom/squareup/wire/ByteString;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/squareup/wire/Message$Builder;->addLengthDelimited(ILcom/squareup/wire/ByteString;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcbh;->h()V

    goto/16 :goto_0

    .line 585
    :cond_5
    invoke-virtual {v5}, Lcom/squareup/wire/Extension;->getDatatype()Lcom/squareup/wire/Message$Datatype;

    move-result-object v4

    .line 588
    invoke-virtual {v5}, Lcom/squareup/wire/Extension;->getLabel()Lcom/squareup/wire/Message$Label;

    move-result-object v3

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_2

    .line 603
    :cond_6
    invoke-virtual {v7, v8, v3}, Lcax;->a(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 606
    :cond_7
    move-object/from16 v0, p1

    iput v6, v0, Lcbh;->c:I

    .line 607
    invoke-virtual/range {p1 .. p1}, Lcbh;->g()J

    move-result-wide v8

    int-to-long v4, v4

    add-long/2addr v4, v10

    cmp-long v3, v8, v4

    if-eqz v3, :cond_0

    .line 608
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Packed data had wrong length!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 612
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v5}, Lcom/squareup/wire/MessageAdapter;->a(Lcbh;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;

    move-result-object v3

    .line 613
    sget-object v9, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne v5, v9, :cond_9

    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_9

    .line 615
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v8, v4, v5}, Lcom/squareup/wire/Message$Builder;->addVarint(IJ)V

    goto/16 :goto_0

    .line 617
    :cond_9
    invoke-virtual {v4}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 618
    invoke-virtual {v7, v8, v3}, Lcax;->a(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 619
    :cond_a
    if-eqz v6, :cond_b

    .line 620
    move-object v0, v2

    check-cast v0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;

    move-object v4, v0

    invoke-virtual {v4, v6, v3}, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->setExtension(Lcom/squareup/wire/Extension;Ljava/lang/Object;)Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;

    goto/16 :goto_0

    .line 622
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v3}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message$Builder;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 584
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method final a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/squareup/wire/MessageAdapter$FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/squareup/wire/WireOutput;",
            ")V"
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/squareup/wire/MessageAdapter;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 278
    invoke-static {p1, v0}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_0

    .line 280
    iget v3, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->tag:I

    .line 283
    iget-object v4, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 284
    iget-object v0, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->label:Lcom/squareup/wire/Message$Label;

    .line 286
    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 287
    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 288
    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p2, v0, v3, v4}, Lcom/squareup/wire/MessageAdapter;->b(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_0

    .line 290
    :cond_1
    check-cast v1, Ljava/util/List;

    invoke-direct {p0, p2, v1, v3, v4}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_0

    .line 293
    :cond_2
    invoke-direct {p0, p2, v3, v1, v4}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_0

    .line 297
    :cond_3
    instance-of v0, p1, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 298
    check-cast v0, Lcom/squareup/wire/ExtendableMessage;

    .line 299
    iget-object v1, v0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    if-eqz v1, :cond_6

    .line 300
    iget-object v2, v0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    invoke-virtual {v2}, Lcar;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Extension;

    invoke-virtual {v2, v0}, Lcar;->a(Lcom/squareup/wire/Extension;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getTag()I

    move-result v4

    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getDatatype()Lcom/squareup/wire/Message$Datatype;

    move-result-object v5

    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getLabel()Lcom/squareup/wire/Message$Label;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p2, v0, v4, v5}, Lcom/squareup/wire/MessageAdapter;->b(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_1

    :cond_4
    check-cast v1, Ljava/util/List;

    invoke-direct {p0, p2, v1, v4, v5}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, p2, v4, v1, v5}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_1

    .line 303
    :cond_6
    invoke-virtual {p1, p2}, Lcom/squareup/wire/Message;->writeUnknownFieldMap(Lcom/squareup/wire/WireOutput;)V

    .line 304
    return-void
.end method

.method final b(Lcom/squareup/wire/Message;)[B
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)[B"
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message;)I

    move-result v0

    new-array v0, v0, [B

    .line 351
    :try_start_0
    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->newInstance([B)Lcom/squareup/wire/WireOutput;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    return-object v0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
