.class public final Lcom/wandoujia/net/codec/ChunkDecoder;
.super Ljava/lang/Object;
.source "ChunkDecoder.java"

# interfaces
.implements Leqj;


# instance fields
.field private a:Leqk;

.field private b:Ljava/lang/StringBuilder;

.field private c:Lcom/wandoujia/net/codec/ChunkDecoder$State;

.field private d:I

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>(Leqk;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->a:Leqk;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->b:Ljava/lang/StringBuilder;

    .line 31
    sget-object v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;->CHUNK_LEN:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    iput-object v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->c:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xa

    .line 37
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    sget-object v0, Leqi;->a:[I

    iget-object v1, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->c:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    invoke-virtual {v1}, Lcom/wandoujia/net/codec/ChunkDecoder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 41
    if-ne v0, v5, :cond_1

    .line 42
    sget-object v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;->CHUNK_LEN_CR:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    iput-object v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->c:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->b:Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 48
    :pswitch_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 49
    if-ne v0, v4, :cond_2

    .line 50
    sget-object v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;->CHUNK:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    iput-object v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->c:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->d:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    iget v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->d:I

    iput v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->e:I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->b:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->CHUNK_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_2
    new-instance v0, Lcom/wandoujia/net/HttpException;

    sget-object v1, Lcom/wandoujia/net/HttpException$Type;->CHUNK_ERROR:Lcom/wandoujia/net/HttpException$Type;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "chunk need lf"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    throw v0

    .line 64
    :pswitch_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 65
    iget v1, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->e:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 66
    iget v2, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->e:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->e:I

    .line 67
    iget v2, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->e:I

    if-nez v2, :cond_3

    .line 68
    sget-object v2, Lcom/wandoujia/net/codec/ChunkDecoder$State;->CHUNK_CR:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    iput-object v2, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->c:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    .line 70
    :cond_3
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 73
    if-le v0, v1, :cond_4

    .line 74
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 77
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->a:Leqk;

    invoke-interface {v3, p1}, Leqk;->a(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    if-le v0, v1, :cond_5

    .line 82
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 84
    :cond_5
    iget-wide v2, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->f:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->f:J

    goto/16 :goto_0

    .line 78
    :catch_1
    move-exception v0

    .line 79
    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->DOWNLOAD_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    throw v1

    .line 87
    :pswitch_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 88
    if-ne v0, v5, :cond_6

    .line 89
    sget-object v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;->CHUNK_CRLF:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    iput-object v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->c:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    goto/16 :goto_0

    .line 91
    :cond_6
    new-instance v0, Lcom/wandoujia/net/HttpException;

    sget-object v1, Lcom/wandoujia/net/HttpException$Type;->CHUNK_ERROR:Lcom/wandoujia/net/HttpException$Type;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "chunk need cr"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    throw v0

    .line 96
    :pswitch_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 97
    if-ne v0, v4, :cond_9

    .line 98
    iget v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->d:I

    if-lez v0, :cond_7

    .line 99
    sget-object v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;->CHUNK_LEN:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    iput-object v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->c:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->d:I

    goto/16 :goto_0

    .line 101
    :cond_7
    sget-object v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;->COMPLETE:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    iput-object v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->c:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    .line 112
    :cond_8
    return-void

    .line 106
    :cond_9
    new-instance v0, Lcom/wandoujia/net/HttpException;

    sget-object v1, Lcom/wandoujia/net/HttpException$Type;->CHUNK_ERROR:Lcom/wandoujia/net/HttpException$Type;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "chunk need lf"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    throw v0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->c:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    sget-object v1, Lcom/wandoujia/net/codec/ChunkDecoder$State;->COMPLETE:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/wandoujia/net/codec/ChunkDecoder;->f:J

    return-wide v0
.end method
