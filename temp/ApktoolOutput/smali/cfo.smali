.class public final Lcfo;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/sql/Date;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:B

.field public b:B

.field private f:Lcom/unionpay/pboctransaction/c;

.field private g:Lcom/unionpay/pboctransaction/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    sput-object v0, Lcfo;->c:Ljava/sql/Date;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcfo;->c:Ljava/sql/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcfo;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcfo;->e:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/unionpay/pboctransaction/c;Lcom/unionpay/pboctransaction/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcfo;->a:B

    const/4 v0, 0x1

    iput-byte v0, p0, Lcfo;->b:B

    iput-object p1, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    iput-object p2, p0, Lcfo;->g:Lcom/unionpay/pboctransaction/d;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x3

    const/16 v8, -0x80

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v5

    move v0, v1

    :goto_1
    array-length v2, v5

    if-ge v0, v2, :cond_9

    aget-byte v2, v5, v0

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    const/16 v6, 0x1f

    if-ne v2, v6, :cond_e

    move v2, v3

    :goto_2
    new-array v6, v2, [B

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v2}, Lj;->a([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    add-int/2addr v2, v0

    aget-byte v0, v5, v2

    and-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    if-eq v0, v8, :cond_1

    aget-byte v0, v5, v2

    and-int/lit16 v0, v0, 0xff

    :goto_3
    new-array v3, v0, [B

    add-int/2addr v2, v4

    invoke-static {v5, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v0}, Lj;->a([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-byte v0, v5, v2

    and-int/lit8 v0, v0, 0x7f

    add-int/lit8 v4, v0, 0x1

    if-ne v4, v3, :cond_2

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_3

    :cond_2
    if-ne v4, v9, :cond_3

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    goto :goto_3

    :cond_3
    const/4 v0, 0x4

    if-ne v4, v0, :cond_d

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x3

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    goto :goto_3

    :cond_4
    aget-byte v6, v5, v0

    and-int/lit8 v6, v6, 0x20

    const/16 v7, 0x20

    if-ne v6, v7, :cond_5

    add-int/2addr v2, v0

    array-length v0, v5

    if-ge v2, v0, :cond_c

    aget-byte v0, v5, v2

    and-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    if-ne v0, v8, :cond_c

    aget-byte v0, v5, v2

    and-int/lit8 v0, v0, 0x7f

    add-int/lit8 v0, v0, 0x1

    :goto_4
    add-int/2addr v0, v2

    goto/16 :goto_1

    :cond_5
    add-int v6, v0, v2

    array-length v0, v5

    if-ge v6, v0, :cond_6

    aget-byte v0, v5, v6

    and-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    if-nez v0, :cond_6

    aget-byte v0, v5, v6

    and-int/lit16 v0, v0, 0xff

    move v2, v4

    :goto_5
    add-int/2addr v0, v2

    add-int/2addr v0, v6

    goto/16 :goto_1

    :cond_6
    array-length v0, v5

    if-ge v6, v0, :cond_b

    aget-byte v0, v5, v6

    and-int/lit8 v0, v0, 0x7f

    add-int/lit8 v2, v0, 0x1

    :goto_6
    if-ne v2, v3, :cond_7

    add-int/lit8 v0, v6, 0x1

    array-length v7, v5

    if-ge v0, v7, :cond_7

    add-int/lit8 v0, v6, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_5

    :cond_7
    if-ne v2, v9, :cond_8

    add-int/lit8 v0, v6, 0x2

    array-length v7, v5

    if-ge v0, v7, :cond_8

    add-int/lit8 v0, v6, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v7, v6, 0x2

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    goto :goto_5

    :cond_8
    const/4 v0, 0x4

    if-ne v2, v0, :cond_a

    add-int/lit8 v0, v6, 0x2

    array-length v7, v5

    if-ge v0, v7, :cond_a

    add-int/lit8 v0, v6, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v7, v6, 0x2

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v0, v7

    add-int/lit8 v7, v6, 0x3

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_5

    :cond_b
    move v2, v1

    goto :goto_6

    :cond_c
    move v0, v4

    goto :goto_4

    :cond_d
    move v0, v1

    goto/16 :goto_3

    :cond_e
    move v2, v4

    goto/16 :goto_2
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v4, v1

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_0

    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-byte v7, v1, v0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    if-nez p1, :cond_1

    rem-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_3

    rem-int/lit8 v0, v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    :goto_1
    new-array v4, v0, [B

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v0}, Lj;->a([BI)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    rem-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    rem-int/lit8 v4, v0, 0x8

    rsub-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    :cond_2
    new-array v4, v0, [B

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, -0x80

    aput-byte v2, v4, v1

    invoke-static {v4, v0}, Lj;->a([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private a([BLjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v0, 0x4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    invoke-static {p1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lcfo;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v1, v4, [B

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    invoke-static {v1, v4}, Lj;->a([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-byte v2, p0, Lcfo;->a:B

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v3, [B

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    aput-byte v0, v1, v2

    invoke-static {v1, v3}, Lj;->a([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "00a40400"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcfo;->a([B)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private b([B)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x0

    sget-object v0, Lcfo;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    sget-object v2, Lcfo;->d:Ljava/lang/String;

    invoke-static {v2}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v3, Lcfo;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    const/16 v2, -0x80

    aput-byte v2, v1, v0

    const/4 v0, 0x4

    array-length v2, v1

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    array-length v0, v1

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    invoke-static {p1, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v1

    invoke-static {v1, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lcfo;->a([B)Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v7, 0x4

    const/4 v0, 0x0

    const-string v1, "80"

    const-string v3, "8C"

    const-string v2, "8D"

    invoke-static {p1, v1}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v4, Lcfo;->e:Ljava/util/HashMap;

    const-string v5, "82"

    invoke-virtual {v1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "5A"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "5F34"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "9F1F"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "57"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "5F24"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "9F10"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    :try_start_0
    array-length v1, v4

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    new-array v6, v1, [B

    fill-array-data v6, :array_0

    const/4 v1, 0x4

    new-array v7, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v4, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v0, 0x4

    const/4 v0, 0x1

    aget-byte v0, v7, v0

    :goto_2
    const/4 v1, 0x2

    aget-byte v1, v7, v1

    if-gt v0, v1, :cond_3

    const/4 v1, 0x4

    const/4 v8, 0x0

    aput-byte v8, v6, v1

    const/4 v1, 0x3

    const/4 v8, 0x0

    aget-byte v8, v7, v8

    and-int/lit8 v8, v8, -0x8

    or-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    aput-byte v8, v6, v1

    const/4 v1, 0x2

    aput-byte v0, v6, v1

    add-int/lit8 v0, v0, 0x1

    int-to-byte v1, v0

    invoke-virtual {p0, v6}, Lcfo;->a([B)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v8, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    sget-object v11, Lcfo;->e:Ljava/util/HashMap;

    invoke-virtual {v11, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_4
    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "5F34"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "5F34"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :array_0
    .array-data 0x1
        0x0t
        0xb2t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static c()V
    .locals 5

    const/16 v4, 0x8

    sget-object v0, Lcfo;->d:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "9F26"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "9F27"

    const-string v3, "80"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "9F10"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "9F37"

    const-string v3, "00000000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "9F36"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "95"

    const-string v3, "0000000800"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "9A"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9C"

    const-string v2, "45"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9F02"

    const-string v2, "000000000000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "5F2A"

    const-string v2, "0156"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "82"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9F1A"

    const-string v2, "0156"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9F03"

    const-string v2, "000000000000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9F33"

    const-string v2, "A04000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9F34"

    const-string v2, "000000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9F35"

    const-string v2, "34"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9F1E"

    const-string v2, "3030303030303030"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "84"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9F09"

    const-string v2, "0001"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9F74"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9F63"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9F7A"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9F21"

    sget-object v2, Lcfo;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9F4E"

    const-string v2, "0000000000000000000000000000000000000000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "DF31"

    const-string v2, "0100000000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x1a

    const/16 v7, 0xa

    const/4 v6, 0x6

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "80AE800034"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcfo;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcfo;->a([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "9F27"

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "9F36"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "9F26"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "9F10"

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method private d()Z
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "5A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcfo;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :cond_2
    sget-object v2, Lcfo;->e:Ljava/util/HashMap;

    const-string v3, "AN1"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "00000001"

    invoke-direct {p0, v0}, Lcfo;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    sget-object v2, Lcfo;->e:Ljava/util/HashMap;

    const-string v3, "TID"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "9F02"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcfo;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    sget-object v2, Lcfo;->e:Ljava/util/HashMap;

    const-string v3, "AMT"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "156"

    invoke-direct {p0, v0}, Lcfo;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    sget-object v2, Lcfo;->e:Ljava/util/HashMap;

    const-string v3, "CUR"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "57"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    invoke-direct {p0, v0}, Lcfo;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    move v0, v1

    goto/16 :goto_1

    :cond_c
    sget-object v2, Lcfo;->e:Ljava/util/HashMap;

    const-string v3, "TD2"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "5F24"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "5F24"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_f

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "5F24"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcfo;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    move v0, v1

    goto/16 :goto_1

    :cond_e
    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "ED"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method private e()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "80A800000b8309"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "9F7A019F02065F2A02"

    invoke-static {v0}, Lcfo;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcfo;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x5

    const/4 v3, 0x0

    iget-byte v0, p0, Lcfo;->b:B

    iput-byte v0, p0, Lcfo;->a:B

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-static {p1, v3}, Lcfo;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lcfo;->b([B)V

    invoke-direct {p0, v1, v2}, Lcfo;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-byte v3, p0, Lcfo;->a:B

    return-object v0

    :array_0
    .array-data 0x1
        0x80t
        0x1at
        0x13t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x80t
        0xfat
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private f()Ljava/lang/String;
    .locals 3

    iget-byte v0, p0, Lcfo;->b:B

    iput-byte v0, p0, Lcfo;->a:B

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcfo;->a([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "CSN"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    iput-byte v1, p0, Lcfo;->a:B

    return-object v0

    nop

    :array_0
    .array-data 0x1
        0x0t
        0xb0t
        0x82t
        0x0t
        0xat
    .end array-data
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x5

    const/4 v1, 0x0

    iget-byte v0, p0, Lcfo;->b:B

    iput-byte v0, p0, Lcfo;->a:B

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x10

    if-ge v0, v6, :cond_0

    const-string v6, "F"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcfo;->b([B)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcfo;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcfo;->e:Ljava/util/HashMap;

    const-string v3, "PIN"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-byte v1, p0, Lcfo;->a:B

    return-object v0

    nop

    :array_0
    .array-data 0x1
        0x80t
        0x1at
        0x14t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x80t
        0xfat
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static g()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action_resp_code"

    const-string v2, "0000"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x1c0

    iget-byte v0, p0, Lcfo;->b:B

    iput-byte v0, p0, Lcfo;->a:B

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    invoke-static {p1, v5}, Lcfo;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1}, Lcfo;->b([B)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    const/4 v1, 0x3

    aput-byte v1, v2, v6

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcfo;->a([BLjava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    aput-byte v5, v2, v6

    invoke-direct {p0, v2, v0}, Lcfo;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    const-string v2, "MAC"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-byte v4, p0, Lcfo;->a:B

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 0x1
        0x80t
        0x1at
        0x15t
        0x1t
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x80t
        0xfat
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static h(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v5

    move v0, v1

    :goto_1
    array-length v2, v5

    if-ge v0, v2, :cond_1

    aget-byte v2, v5, v0

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    const/16 v6, 0x1f

    if-ne v2, v6, :cond_3

    const/4 v2, 0x2

    :goto_2
    new-array v6, v2, [B

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v2}, Lj;->a([BI)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v0

    array-length v0, v5

    if-ge v2, v0, :cond_2

    aget-byte v0, v5, v2

    and-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    const/16 v6, -0x80

    if-ne v0, v6, :cond_2

    aget-byte v0, v5, v2

    and-int/lit8 v0, v0, 0x7f

    add-int/lit8 v0, v0, 0x1

    :goto_3
    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/unionpay/pboctransaction/AppIdentification;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unionpay/pboctransaction/AppIdentification;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/c;->a()V

    invoke-static {}, Lcfo;->c()V

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "PIN"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9F02"

    const-string v2, "trans_amt"

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9F1A"

    const-string v2, "0156"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "5F2A"

    const-string v2, "trans currcy code"

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "9C"

    const-string v2, "trans_type"

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/unionpay/pboctransaction/AppIdentification;->a:Ljava/lang/String;

    invoke-static {}, Lcfo;->g()Landroid/os/Bundle;

    move-result-object v2

    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/sql/Date;-><init>(J)V

    sput-object v1, Lcfo;->c:Ljava/sql/Date;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcfo;->c:Ljava/sql/Date;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcfo;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    sget-object v3, Lcfo;->d:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcfo;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "action_resp_code"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000"

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lcfo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcfo;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string v0, "action_resp_code"

    const-string v1, "10020"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v0}, Lcfo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-direct {p0, v0}, Lcfo;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    invoke-direct {p0}, Lcfo;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_b
    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "PIN"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcfo;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/c;->b()V

    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0}, Lcfo;->d()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/c;->b()V

    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "9F26"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F27"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F10"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F37"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F36"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "95"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9A"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9C"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F02"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "5F2A"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "82"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F1A"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F03"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F33"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F34"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F35"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F1E"

    invoke-static {v1, v0}, Lcfo;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    const-string v3, "DCD"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "TID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "AMT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "CUR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "AN1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "CSN"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "5F34"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    :cond_10
    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/c;->b()V

    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcfo;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "TID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "TID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "AMT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "AMT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "CUR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "CUR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "AN1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "AN1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    sget-object v1, Lcfo;->e:Ljava/util/HashMap;

    const-string v4, "AN1"

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v5, "5A"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "CSN"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "CSN"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "5F34"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "5F34"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "DCD"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "DCD"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    const-string v1, ""

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v1, v0

    goto :goto_2

    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcfo;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    :cond_1a
    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/c;->b()V

    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    goto/16 :goto_1

    :cond_1b
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "v"

    const-string v3, "1.3"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cmd"

    const-string v3, "pay"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "params"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pay_type"

    const-string v4, "2"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pay_mode"

    const-string v4, "1"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "bind"

    const-string v4, "no"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "carrier_tp"

    invoke-virtual {v3, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "icc_data"

    sget-object v4, Lcfo;->e:Ljava/util/HashMap;

    const-string v5, "DCD"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "csn"

    sget-object v4, Lcfo;->e:Ljava/util/HashMap;

    const-string v5, "CSN"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "card_seq_id"

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v5, "5F34"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v5, "5F34"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "submit_time"

    sget-object v4, Lcfo;->d:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sp_id"

    const-string v4, "8889"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pin"

    sget-object v4, Lcfo;->e:Ljava/util/HashMap;

    const-string v5, "PIN"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pan"

    sget-object v4, Lcfo;->e:Ljava/util/HashMap;

    const-string v5, "AN1"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "carrier_app_tp"

    const-string v4, "2"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v4, "ED"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v0, "expire"

    sget-object v4, Lcfo;->e:Ljava/util/HashMap;

    const-string v5, "ED"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1c
    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v4, "TD2"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v0, "track2_data"

    sget-object v4, Lcfo;->e:Ljava/util/HashMap;

    const-string v5, "TD2"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1d
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    :try_start_4
    iget-object v1, p0, Lcfo;->g:Lcom/unionpay/pboctransaction/d;

    invoke-interface {v1, v0}, Lcom/unionpay/pboctransaction/d;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_resp_message"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/c;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v2

    goto/16 :goto_1

    :cond_1e
    :try_start_5
    const-string v0, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_6
    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/c;->b()V

    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v2

    goto/16 :goto_1

    :cond_1f
    move-object v0, v1

    goto/16 :goto_3
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-byte v0, p0, Lcfo;->b:B

    iput-byte v0, p0, Lcfo;->a:B

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcfo;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 0x1
        0x0t
        0xa4t
        0x4t
        0x0t
        0xft
        0xa0t
        0x0t
        0x0t
        0x3t
        0x33t
        0x43t
        0x55t
        0x50t
        0x2dt
        0x4dt
        0x4ft
        0x42t
        0x49t
        0x4ct
        0x45t
    .end array-data
.end method

.method public final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-byte v0, p0, Lcfo;->b:B

    iput-byte v0, p0, Lcfo;->a:B

    const-string v1, "80F802"

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "08"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "80"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcfo;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/unionpay/pboctransaction/AppIdentification;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Lcom/unionpay/pboctransaction/AppIdentification;->a:Ljava/lang/String;

    invoke-static {}, Lcfo;->c()V

    invoke-direct {p0, v1}, Lcfo;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcfo;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcfo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v1, "5A"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcfo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v1}, Lcom/unionpay/pboctransaction/c;->c()V

    const-string v1, "84"

    invoke-static {v0, v1}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([B)Ljava/lang/String;
    .locals 8

    const/16 v7, -0x70

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-byte v0, p1, v1

    iget-byte v3, p0, Lcfo;->a:B

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    iget-byte v3, p0, Lcfo;->a:B

    invoke-interface {v0, p1, v3}, Lcom/unionpay/pboctransaction/c;->a([BI)[B

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v0, v3

    :goto_0
    if-lt v0, v6, :cond_0

    add-int/lit8 v4, v0, -0x2

    aget-byte v4, v3, v4

    const/16 v5, 0x61

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v3, v0

    const/4 v3, 0x5

    new-array v3, v3, [B

    iget-byte v4, p0, Lcfo;->a:B

    aput-byte v4, v3, v1

    const/4 v4, 0x1

    const/16 v5, -0x40

    aput-byte v5, v3, v4

    aput-byte v1, v3, v6

    const/4 v4, 0x3

    aput-byte v1, v3, v4

    const/4 v4, 0x4

    aput-byte v0, v3, v4

    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    iget-byte v4, p0, Lcfo;->a:B

    invoke-interface {v0, v3, v4}, Lcom/unionpay/pboctransaction/c;->a([BI)[B

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v0, v3

    :cond_0
    :goto_1
    if-lt v0, v6, :cond_6

    add-int/lit8 v4, v0, -0x2

    aget-byte v4, v3, v4

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_6

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v3, v0

    aput-byte v0, p1, v4

    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    iget-byte v3, p0, Lcfo;->a:B

    invoke-interface {v0, p1, v3}, Lcom/unionpay/pboctransaction/c;->a([BI)[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    :cond_1
    :goto_2
    if-le v1, v6, :cond_4

    add-int/lit8 v3, v1, -0x2

    aget-byte v3, v0, v3

    if-ne v3, v7, :cond_4

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_4

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Lj;->a([BI)Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    if-ne v1, v6, :cond_5

    add-int/lit8 v3, v1, -0x2

    aget-byte v3, v0, v3

    if-ne v3, v7, :cond_5

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    if-nez v1, :cond_5

    invoke-static {v0, v6}, Lj;->a([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v2

    goto :goto_3

    :cond_6
    move v1, v0

    move-object v0, v3

    goto :goto_2
.end method

.method public final declared-synchronized b(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcfo;->g()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, ""

    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/c;->a()V

    invoke-virtual {p0}, Lcfo;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/c;->b()V

    const-string v0, "action_resp_code"

    const-string v2, "10019"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " ************T1="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v3, "PIN"

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcfo;->e:Ljava/util/HashMap;

    const-string v3, "PIN"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcfo;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/c;->b()V

    const-string v0, "action_resp_code"

    const-string v2, "10019"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " ************T2="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcfo;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcfo;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/c;->b()V

    const-string v0, "action_resp_code"

    const-string v2, "10019"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcfo;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/c;->b()V

    const-string v0, "action_resp_code"

    const-string v2, "10019"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_7
    const/16 v3, 0x28

    const/16 v4, 0x3c

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3c

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const/16 v6, 0xd0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd8

    const/16 v7, 0xe8

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "v"

    const-string v8, "1.3"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "cmd"

    const-string v8, "pay"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "params"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "pay_type"

    const-string v9, "2"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "pay_mode"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "bind"

    const-string v9, "no"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "carrier_tp"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "track2_data"

    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "track3_data"

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "csn"

    sget-object v5, Lcfo;->e:Ljava/util/HashMap;

    const-string v8, "CSN"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "submit_time"

    sget-object v5, Lcfo;->d:Ljava/lang/String;

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sp_id"

    const-string v5, "8889"

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "pin"

    sget-object v5, Lcfo;->e:Ljava/util/HashMap;

    const-string v8, "PIN"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "pan"

    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "dynamic_key_data"

    invoke-virtual {v7, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "carrier_app_tp"

    const-string v3, "1"

    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ************T3="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcfo;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcfo;->g:Lcom/unionpay/pboctransaction/d;

    invoke-interface {v2, v0}, Lcom/unionpay/pboctransaction/d;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "action_resp_message"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/c;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/pboctransaction/model/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/c;->c()V

    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/c;->a()V

    iget-object v0, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v0, p0}, Lcom/unionpay/pboctransaction/c;->a(Lcfo;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcfo;->f:Lcom/unionpay/pboctransaction/c;

    invoke-interface {v1}, Lcom/unionpay/pboctransaction/c;->b()V

    return-object v0
.end method
