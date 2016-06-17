.class public Lcom/wandoujia/base/utils/ProtobufUtils;
.super Ljava/lang/Object;
.source "ProtobufUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFieldTag(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "protoClass should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 22
    const-class v1, Lcom/squareup/wire/ProtoField;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoField;

    .line 23
    if-nez v0, :cond_1

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the field do not have ProtoField annotation, field name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 27
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/squareup/wire/ProtoField;->tag()I
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    return v0
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/Class;)Lcom/squareup/wire/Message;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/Message;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-static {p0}, Lcom/wandoujia/base/utils/ProtobufUtils;->readRawVarint32(Ljava/io/InputStream;)I

    move-result v0

    .line 69
    new-array v0, v0, [B

    .line 70
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 71
    new-instance v2, Lcom/squareup/wire/Wire;

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    invoke-virtual {v2, v0, v4, v1, p1}, Lcom/squareup/wire/Wire;->parseFrom([BIILjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    return-object v0
.end method

.method public static readRawVarint32(Ljava/io/InputStream;)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 34
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 35
    if-ne v0, v4, :cond_0

    .line 36
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 38
    :cond_0
    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_2

    .line 61
    :cond_1
    :goto_0
    return v0

    .line 42
    :cond_2
    and-int/lit8 v0, v0, 0x7f

    .line 43
    const/4 v1, 0x7

    .line 44
    :goto_1
    const/16 v2, 0x20

    if-ge v1, v2, :cond_5

    .line 45
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 46
    if-ne v2, v4, :cond_3

    .line 47
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 49
    :cond_3
    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    .line 50
    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 44
    add-int/lit8 v1, v1, 0x7

    goto :goto_1

    .line 55
    :cond_4
    add-int/lit8 v1, v1, 0x7

    :cond_5
    const/16 v2, 0x40

    if-ge v1, v2, :cond_7

    .line 56
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 57
    if-ne v2, v4, :cond_6

    .line 58
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 60
    :cond_6
    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_4

    goto :goto_0

    .line 64
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public static write(Ljava/io/OutputStream;Lcom/squareup/wire/Message;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/Message;",
            ">(",
            "Ljava/io/OutputStream;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getSerializedSize()I

    move-result v0

    .line 88
    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/ProtobufUtils;->writeRawVarint32(Ljava/io/OutputStream;I)V

    .line 89
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 90
    return-void
.end method

.method public static writeRawVarint32(Ljava/io/OutputStream;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 77
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 78
    return-void

    .line 80
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 81
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
