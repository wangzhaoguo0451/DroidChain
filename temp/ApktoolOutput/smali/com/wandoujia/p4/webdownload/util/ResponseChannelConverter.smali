.class public Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;
.super Ljava/lang/Object;
.source "ResponseChannelConverter.java"


# static fields
.field private static synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    .line 168
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 172
    :cond_0
    return v0
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return p1
.end method

.method private static a(Lhud;Liaj;)Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v7, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 212
    invoke-static {p0}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->b(Lhud;)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    invoke-virtual {p1}, Liaj;->b()V

    move-object v2, v1

    move-object v1, v0

    .line 218
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 219
    if-eqz v1, :cond_4

    if-eq v5, v7, :cond_1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_4

    .line 220
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    invoke-static {p0}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->b(Lhud;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 234
    if-eqz v1, :cond_2

    .line 235
    invoke-virtual {p1, v1, v0}, Liaj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    :cond_2
    instance-of v0, p1, Liaz;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Liaz;

    invoke-interface {v0}, Liaz;->g()Libc;

    move-result-object v1

    iget v1, v1, Libc;->d:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_6

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_6

    const/16 v2, 0x65

    if-ne v1, v2, :cond_3

    const-string v1, "Sec-WebSocket-Accept"

    invoke-interface {v0, v1}, Liaz;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    move v0, v3

    :goto_1
    if-eqz v0, :cond_8

    .line 242
    sget-object v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->SKIP_CONTROL_CHARS:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    .line 248
    :goto_2
    return-object v0

    .line 222
    :cond_4
    if-eqz v1, :cond_5

    .line 223
    invoke-virtual {p1, v1, v0}, Liaj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    :cond_5
    invoke-static {v2}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 226
    aget-object v1, v0, v4

    .line 227
    aget-object v0, v0, v3

    goto :goto_0

    .line 241
    :cond_6
    sparse-switch v1, :sswitch_data_0

    :cond_7
    move v0, v4

    goto :goto_1

    :sswitch_0
    move v0, v3

    goto :goto_1

    .line 243
    :cond_8
    invoke-static {p1}, Liaq;->b(Lias;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    .line 244
    sget-object v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->READ_FIXED_LENGTH_CONTENT:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    goto :goto_2

    .line 246
    :cond_9
    sget-object v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->READ_VARIABLE_LENGTH_CONTENT:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    goto :goto_2

    .line 241
    :sswitch_data_0
    .sparse-switch
        0xcc -> :sswitch_0
        0xcd -> :sswitch_0
        0x130 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Liaz;)Lhud;
    .locals 7
    .parameter

    .prologue
    const/16 v4, 0x20

    const/16 v6, 0xd

    const/16 v5, 0xa

    .line 359
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lhus;->b(Ljava/nio/ByteOrder;I)Lhud;

    move-result-object v2

    move-object v0, p0

    .line 360
    check-cast v0, Liaz;

    invoke-interface {v0}, Liaz;->e()Libd;

    move-result-object v1

    invoke-virtual {v1}, Libd;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ASCII"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v2, v1}, Lhud;->b([B)V

    invoke-interface {v2, v4}, Lhud;->i(I)V

    invoke-interface {v0}, Liaz;->g()Libc;

    move-result-object v1

    iget v1, v1, Libc;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ASCII"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v2, v1}, Lhud;->b([B)V

    invoke-interface {v2, v4}, Lhud;->i(I)V

    invoke-interface {v0}, Liaz;->g()Libc;

    move-result-object v0

    iget-object v0, v0, Libc;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v2, v0}, Lhud;->b([B)V

    invoke-interface {v2, v6}, Lhud;->i(I)V

    invoke-interface {v2, v5}, Lhud;->i(I)V

    .line 361
    :try_start_0
    invoke-interface {p0}, Lias;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "ASCII"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v2, v1}, Lhud;->b([B)V

    const/16 v1, 0x3a

    invoke-interface {v2, v1}, Lhud;->i(I)V

    const/16 v1, 0x20

    invoke-interface {v2, v1}, Lhud;->i(I)V

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v2, v0}, Lhud;->b([B)V

    const/16 v0, 0xd

    invoke-interface {v2, v0}, Lhud;->i(I)V

    const/16 v0, 0xa

    invoke-interface {v2, v0}, Lhud;->i(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 362
    :cond_0
    invoke-interface {v2, v6}, Lhud;->i(I)V

    .line 363
    invoke-interface {v2, v5}, Lhud;->i(I)V

    .line 365
    invoke-interface {p0}, Liaz;->f()Lhud;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhud;->d()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move-object v0, v2

    .line 369
    :goto_1
    return-object v0

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Lhud;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lhus;->a([Lhud;)Lhud;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Lhud;)Liaj;
    .locals 12
    .parameter

    .prologue
    const/16 v6, 0xa

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    sget-object v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->SKIP_CONTROL_CHARS:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    .line 63
    sget-object v3, Lgxk;->a:[I

    invoke-virtual {v0}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v2

    .line 108
    :goto_0
    return-object v0

    .line 65
    :cond_0
    :pswitch_1
    invoke-interface {p0}, Lhud;->k()S

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lhud;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lhud;->a(I)V

    .line 68
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :cond_1
    :goto_1
    invoke-interface {p0}, Lhud;->j()B

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    invoke-interface {p0}, Lhud;->j()B

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0, v1}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->b(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v0, v5}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->b(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v0, v6}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v10

    if-ge v7, v8, :cond_5

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v9, v11

    .line 69
    new-instance v0, Liaj;

    aget-object v1, v9, v1

    invoke-static {v1}, Libd;->a(Ljava/lang/String;)Libd;

    move-result-object v1

    new-instance v3, Libc;

    aget-object v4, v9, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v5, v9, v11

    invoke-direct {v3, v4, v5}, Libc;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1, v3}, Liaj;-><init>(Libd;Libc;)V

    .line 77
    :goto_4
    invoke-static {p0, v0}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Lhud;Liaj;)Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    move-result-object v1

    .line 78
    sget-object v3, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->SKIP_CONTROL_CHARS:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    if-ne v1, v3, :cond_6

    .line 82
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Liaj;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :cond_2
    if-ne v4, v6, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/16 v5, 0x400

    if-lt v0, v5, :cond_4

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    const-string v1, "An HTTP line is larger than 1024 bytes."

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_5
    const-string v0, ""

    goto :goto_3

    .line 85
    :cond_6
    invoke-static {v0}, Liaq;->b(Lias;)J

    move-result-wide v4

    .line 87
    sget-object v3, Lgxk;->a:[I

    invoke-virtual {v1}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_1

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :pswitch_3
    const-wide/32 v6, 0x6400000

    cmp-long v1, v4, v6

    if-gtz v1, :cond_7

    invoke-static {v0}, Liaq;->c(Lias;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    move-object v0, v2

    .line 91
    goto/16 :goto_0

    :pswitch_4
    move-object v0, v2

    .line 96
    goto/16 :goto_0

    :pswitch_5
    move-object v0, v2

    .line 103
    :cond_8
    invoke-static {v0}, Liaq;->b(Lias;)J

    move-result-wide v2

    sget-boolean v1, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a:Z

    if-nez v1, :cond_9

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    long-to-int v1, v2

    invoke-static {v1}, Lhus;->a(I)Lhud;

    move-result-object v1

    invoke-interface {p0, v1}, Lhud;->a(Lhud;)V

    invoke-virtual {v0, v1}, Liaj;->a(Lhud;)V

    goto/16 :goto_0

    :pswitch_6
    move-object v0, v2

    goto/16 :goto_4

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 87
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 157
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return p1
.end method

.method private static b(Lhud;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 255
    :goto_0
    invoke-interface {p0}, Lhud;->j()B

    move-result v0

    int-to-char v0, v0

    .line 257
    packed-switch v0, :pswitch_data_0

    .line 268
    :cond_0
    :pswitch_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 259
    :pswitch_1
    invoke-interface {p0}, Lhud;->j()B

    move-result v0

    int-to-char v0, v0

    .line 260
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 271
    :pswitch_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x3a

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 282
    invoke-static {p0, v5}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Ljava/lang/String;I)I

    move-result v2

    move v1, v2

    .line 283
    :goto_0
    if-ge v1, v3, :cond_0

    .line 284
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 285
    if-eq v0, v8, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 290
    :goto_1
    if-ge v0, v3, :cond_1

    .line 291
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_2

    .line 292
    add-int/lit8 v0, v0, 0x1

    .line 297
    :cond_1
    invoke-static {p0, v0}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Ljava/lang/String;I)I

    move-result v4

    .line 298
    if-ne v4, v3, :cond_3

    .line 299
    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    .line 306
    :goto_2
    return-object v0

    .line 290
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 305
    :cond_3
    invoke-static {p0}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Ljava/lang/String;)I

    move-result v3

    .line 306
    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_2
.end method
