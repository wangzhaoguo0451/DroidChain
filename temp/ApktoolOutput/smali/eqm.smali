.class public final Leqm;
.super Ljava/lang/Object;
.source "LengthDelimitedDecoder.java"

# interfaces
.implements Leqj;


# instance fields
.field private a:J

.field private b:J

.field private c:Leqk;


# direct methods
.method public constructor <init>(Leqk;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Leqm;->c:Leqk;

    .line 18
    iput-wide p2, p0, Leqm;->b:J

    .line 19
    iput-wide p4, p0, Leqm;->a:J

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 6
    .parameter

    .prologue
    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 25
    iget-wide v2, p0, Leqm;->a:J

    iget-wide v4, p0, Leqm;->b:J

    sub-long/2addr v2, v4

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 26
    if-le v0, v1, :cond_0

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 30
    :cond_0
    :try_start_0
    iget-object v0, p0, Leqm;->c:Leqk;

    invoke-interface {v0, p1}, Leqk;->a(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    iget-wide v2, p0, Leqm;->b:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Leqm;->b:J

    .line 35
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->DOWNLOAD_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final a()Z
    .locals 4

    .prologue
    .line 39
    iget-wide v0, p0, Leqm;->b:J

    iget-wide v2, p0, Leqm;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

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
    .line 44
    iget-wide v0, p0, Leqm;->b:J

    return-wide v0
.end method
