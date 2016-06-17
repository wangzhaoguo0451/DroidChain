.class public final Lbyy;
.super Ljava/lang/Object;
.source "SpdyTransport.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/Transport;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lbyo;

.field private final d:Lbzv;

.field private e:Lcah;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lokio/ByteString;

    const-string v1, "connection"

    .line 52
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 53
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    .line 54
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    .line 55
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "transfer-encoding"

    .line 56
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v6

    .line 51
    invoke-static {v0}, Lbya;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbyy;->a:Ljava/util/List;

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [Lokio/ByteString;

    const-string v1, "connection"

    .line 60
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 61
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    .line 62
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    .line 63
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "te"

    .line 64
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "transfer-encoding"

    .line 65
    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "encoding"

    .line 66
    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "upgrade"

    .line 67
    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    .line 59
    invoke-static {v0}, Lbya;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbyy;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lbyo;Lbzv;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lbyy;->c:Lbyo;

    .line 75
    iput-object p2, p0, Lbyy;->d:Lbzv;

    .line 76
    return-void
.end method

.method private static a(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 224
    sget-object v0, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_0

    .line 225
    sget-object v0, Lbyy;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 227
    :goto_0
    return v0

    .line 226
    :cond_0
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_1

    .line 227
    sget-object v0, Lbyy;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final canReuseConnection()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public final createRequestBody(Lbxj;J)Lhtg;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lbyy;->e:Lcah;

    invoke-virtual {v0}, Lcah;->d()Lhtg;

    move-result-object v0

    return-object v0
.end method

.method public final disconnect(Lbyo;)V
    .locals 2
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lbyy;->e:Lcah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbyy;->e:Lcah;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcah;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 216
    :cond_0
    return-void
.end method

.method public final finishRequest()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lbyy;->e:Lcah;

    invoke-virtual {v0}, Lcah;->d()Lhtg;

    move-result-object v0

    invoke-interface {v0}, Lhtg;->close()V

    .line 101
    return-void
.end method

.method public final openResponseBody(Lbxn;)Lbxp;
    .locals 3
    .parameter

    .prologue
    .line 208
    new-instance v0, Lbyv;

    iget-object v1, p1, Lbxn;->f:Lbxf;

    iget-object v2, p0, Lbyy;->e:Lcah;

    iget-object v2, v2, Lcah;->f:Lcaj;

    invoke-static {v2}, Lhsx;->a(Lhth;)Lhss;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbyv;-><init>(Lbxf;Lhss;)V

    return-object v0
.end method

.method public final readResponseHeaders()Lbxo;
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lbyy;->e:Lcah;

    invoke-virtual {v0}, Lcah;->c()Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lbyy;->d:Lbzv;

    iget-object v7, v0, Lbzv;->a:Lcom/squareup/okhttp/Protocol;

    const/4 v2, 0x0

    const-string v1, "HTTP/1.1"

    new-instance v8, Lbxg;

    invoke-direct {v8}, Lbxg;-><init>()V

    sget-object v0, Lbyt;->c:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Lbxg;->c(Ljava/lang/String;Ljava/lang/String;)Lbxg;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    move v5, v3

    :goto_0
    if-ge v5, v9, :cond_5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzb;

    iget-object v10, v0, Lbzb;->h:Lokio/ByteString;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzb;

    iget-object v0, v0, Lbzb;->i:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v11

    move-object v0, v1

    move v1, v3

    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {v11, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v12, -0x1

    if-ne v4, v12, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    :cond_0
    invoke-virtual {v11, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v12, Lbzb;->a:Lokio/ByteString;

    invoke-virtual {v10, v12}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v13, v2

    move-object v2, v1

    move v1, v13

    goto :goto_1

    :cond_1
    sget-object v12, Lbzb;->g:Lokio/ByteString;

    invoke-virtual {v10, v12}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_2
    invoke-static {v7, v10}, Lbyy;->a(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v10}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12, v1}, Lbxg;->a(Ljava/lang/String;Ljava/lang/String;)Lbxg;

    :cond_3
    move-object v1, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbyz;->a(Ljava/lang/String;)Lbyz;

    move-result-object v0

    new-instance v1, Lbxo;

    invoke-direct {v1}, Lbxo;-><init>()V

    iput-object v7, v1, Lbxo;->b:Lcom/squareup/okhttp/Protocol;

    iget v2, v0, Lbyz;->b:I

    iput v2, v1, Lbxo;->c:I

    iget-object v0, v0, Lbyz;->c:Ljava/lang/String;

    iput-object v0, v1, Lbxo;->d:Ljava/lang/String;

    invoke-virtual {v8}, Lbxg;->a()Lbxf;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbxo;->a(Lbxf;)Lbxo;

    move-result-object v0

    return-object v0
.end method

.method public final releaseConnectionOnIdle()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public final writeRequestBody(Lbyw;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lbyy;->e:Lcah;

    invoke-virtual {v0}, Lcah;->d()Lhtg;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbyw;->a(Lhtg;)V

    .line 97
    return-void
.end method

.method public final writeRequestHeaders(Lbxj;)V
    .locals 14
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lbyy;->e:Lcah;

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lbyy;->c:Lbyo;

    invoke-virtual {v0}, Lbyo;->b()V

    .line 86
    iget-object v0, p0, Lbyy;->c:Lbyo;

    invoke-virtual {v0}, Lbyo;->c()Z

    move-result v4

    .line 87
    iget-object v0, p0, Lbyy;->c:Lbyo;

    iget-object v0, v0, Lbyo;->c:Lbwy;

    iget-object v0, v0, Lbwy;->g:Lcom/squareup/okhttp/Protocol;

    invoke-static {v0}, Ld;->a(Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v5, p0, Lbyy;->d:Lbzv;

    iget-object v1, p0, Lbyy;->d:Lbzv;

    .line 90
    iget-object v6, v1, Lbzv;->a:Lcom/squareup/okhttp/Protocol;

    iget-object v7, p1, Lbxj;->c:Lbxf;

    new-instance v8, Ljava/util/ArrayList;

    iget-object v1, v7, Lbxf;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lbzb;

    sget-object v3, Lbzb;->b:Lokio/ByteString;

    iget-object v9, p1, Lbxj;->b:Ljava/lang/String;

    invoke-direct {v1, v3, v9}, Lbzb;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lbzb;

    sget-object v3, Lbzb;->c:Lokio/ByteString;

    invoke-virtual {p1}, Lbxj;->a()Ljava/net/URL;

    move-result-object v9

    invoke-static {v9}, Ld;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lbzb;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lbxj;->a()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lbyo;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne v3, v6, :cond_2

    new-instance v3, Lbzb;

    sget-object v9, Lbzb;->g:Lokio/ByteString;

    invoke-direct {v3, v9, v0}, Lbzb;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbzb;

    sget-object v3, Lbzb;->f:Lokio/ByteString;

    invoke-direct {v0, v3, v1}, Lbzb;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v0, Lbzb;

    sget-object v1, Lbzb;->d:Lokio/ByteString;

    invoke-virtual {p1}, Lbxj;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lbzb;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v0, v7, Lbxf;->a:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v10, v0, 0x2

    move v3, v2

    :goto_2
    if-ge v3, v10, :cond_6

    invoke-virtual {v7, v3}, Lbxf;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v11

    invoke-virtual {v7, v3}, Lbxf;->b(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v11}, Lbyy;->a(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lbzb;->b:Lokio/ByteString;

    invoke-virtual {v11, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lbzb;->c:Lokio/ByteString;

    invoke-virtual {v11, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lbzb;->d:Lokio/ByteString;

    invoke-virtual {v11, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lbzb;->e:Lokio/ByteString;

    invoke-virtual {v11, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lbzb;->f:Lokio/ByteString;

    invoke-virtual {v11, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lbzb;->g:Lokio/ByteString;

    invoke-virtual {v11, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lbzb;

    invoke-direct {v0, v11, v12}, Lbzb;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v6, :cond_3

    new-instance v0, Lbzb;

    sget-object v3, Lbzb;->e:Lokio/ByteString;

    invoke-direct {v0, v3, v1}, Lbzb;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    move v1, v2

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzb;

    iget-object v0, v0, Lbzb;->h:Lokio/ByteString;

    invoke-virtual {v0, v11}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzb;

    iget-object v0, v0, Lbzb;->i:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Lbzb;

    invoke-direct {v12, v11, v0}, Lbzb;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v8, v1, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 89
    :cond_6
    invoke-virtual {v5, v8, v4}, Lbzv;->a(Ljava/util/List;Z)Lcah;

    move-result-object v0

    iput-object v0, p0, Lbyy;->e:Lcah;

    .line 92
    iget-object v0, p0, Lbyy;->e:Lcah;

    iget-object v0, v0, Lcah;->h:Lcak;

    iget-object v1, p0, Lbyy;->c:Lbyo;

    iget-object v1, v1, Lbyo;->b:Lbxh;

    iget v1, v1, Lbxh;->x:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lhti;->a(JLjava/util/concurrent/TimeUnit;)Lhti;

    goto/16 :goto_0
.end method
