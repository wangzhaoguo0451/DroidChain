.class public final Lbys;
.super Ljava/lang/Object;
.source "HttpTransport.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/Transport;


# instance fields
.field private final a:Lbyo;

.field private final b:Lbyf;


# direct methods
.method public constructor <init>(Lbyo;Lbyf;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lbys;->a:Lbyo;

    .line 33
    iput-object p2, p0, Lbys;->b:Lbyf;

    .line 34
    return-void
.end method


# virtual methods
.method public final canReuseConnection()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 93
    const-string v2, "close"

    iget-object v3, p0, Lbys;->a:Lbyo;

    iget-object v3, v3, Lbyo;->l:Lbxj;

    const-string v4, "Connection"

    invoke-virtual {v3, v4}, Lbxj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    const-string v2, "close"

    iget-object v3, p0, Lbys;->a:Lbyo;

    invoke-virtual {v3}, Lbyo;->d()Lbxn;

    move-result-object v3

    const-string v4, "Connection"

    invoke-virtual {v3, v4}, Lbxn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    iget-object v2, p0, Lbys;->b:Lbyf;

    iget v2, v2, Lbyf;->e:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_1
    if-nez v2, :cond_0

    move v0, v1

    .line 106
    goto :goto_0

    :cond_2
    move v2, v0

    .line 102
    goto :goto_1
.end method

.method public final createRequestBody(Lbxj;J)Lhtg;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lbxj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v1, p0, Lbys;->b:Lbyf;

    iget v0, v1, Lbyf;->e:I

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lbyf;->e:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v4, v1, Lbyf;->e:I

    new-instance v0, Lbyh;

    invoke-direct {v0, v1, v2}, Lbyh;-><init>(Lbyf;B)V

    .line 44
    :goto_0
    return-object v0

    .line 42
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3

    .line 44
    iget-object v1, p0, Lbys;->b:Lbyf;

    iget v0, v1, Lbyf;->e:I

    if-eq v0, v3, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lbyf;->e:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput v4, v1, Lbyf;->e:I

    new-instance v0, Lbyj;

    invoke-direct {v0, v1, p2, p3, v2}, Lbyj;-><init>(Lbyf;JB)V

    goto :goto_0

    .line 47
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final disconnect(Lbyo;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lbys;->b:Lbyf;

    sget-object v1, Lbxr;->b:Lbxr;

    iget-object v0, v0, Lbyf;->b:Lbwy;

    invoke-virtual {v1, v0, p1}, Lbxr;->a(Lbwy;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public final finishRequest()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbys;->b:Lbyf;

    invoke-virtual {v0}, Lbyf;->a()V

    .line 53
    return-void
.end method

.method public final openResponseBody(Lbxn;)Lbxp;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 110
    invoke-static {p1}, Lbyo;->c(Lbxn;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbys;->b:Lbyf;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lbyf;->a(J)Lhth;

    move-result-object v0

    .line 111
    :goto_0
    new-instance v1, Lbyv;

    iget-object v2, p1, Lbxn;->f:Lbxf;

    invoke-static {v0}, Lhsx;->a(Lhth;)Lhss;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lbyv;-><init>(Lbxf;Lhss;)V

    return-object v1

    .line 110
    :cond_0
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lbxn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lbys;->b:Lbyf;

    iget-object v2, p0, Lbys;->a:Lbyo;

    iget v0, v1, Lbyf;->e:I

    if-eq v0, v4, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lbyf;->e:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v5, v1, Lbyf;->e:I

    new-instance v0, Lbyi;

    invoke-direct {v0, v1, v2}, Lbyi;-><init>(Lbyf;Lbyo;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lbyt;->a(Lbxn;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lbys;->b:Lbyf;

    invoke-virtual {v2, v0, v1}, Lbyf;->a(J)Lhth;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lbys;->b:Lbyf;

    iget v0, v1, Lbyf;->e:I

    if-eq v0, v4, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lbyf;->e:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput v5, v1, Lbyf;->e:I

    new-instance v0, Lbyl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbyl;-><init>(Lbyf;B)V

    goto :goto_0
.end method

.method public final readResponseHeaders()Lbxo;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbys;->b:Lbyf;

    invoke-virtual {v0}, Lbyf;->c()Lbxo;

    move-result-object v0

    return-object v0
.end method

.method public final releaseConnectionOnIdle()V
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lbys;->canReuseConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lbys;->b:Lbyf;

    const/4 v1, 0x1

    iput v1, v0, Lbyf;->f:I

    iget v1, v0, Lbyf;->e:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lbyf;->f:I

    sget-object v1, Lbxr;->b:Lbxr;

    iget-object v2, v0, Lbyf;->a:Lbwz;

    iget-object v0, v0, Lbyf;->b:Lbwy;

    invoke-virtual {v1, v2, v0}, Lbxr;->a(Lbwz;Lbwy;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lbys;->b:Lbyf;

    const/4 v1, 0x2

    iput v1, v0, Lbyf;->f:I

    iget v1, v0, Lbyf;->e:I

    if-nez v1, :cond_0

    const/4 v1, 0x6

    iput v1, v0, Lbyf;->e:I

    iget-object v0, v0, Lbyf;->b:Lbwy;

    iget-object v0, v0, Lbwy;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0
.end method

.method public final writeRequestBody(Lbyw;)V
    .locals 4
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lbys;->b:Lbyf;

    iget v1, v0, Lbyf;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lbyf;->e:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Lbyf;->e:I

    iget-object v0, v0, Lbyf;->d:Lhsr;

    invoke-virtual {p1, v0}, Lbyw;->a(Lhtg;)V

    .line 57
    return-void
.end method

.method public final writeRequestHeaders(Lbxj;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x20

    .line 72
    iget-object v0, p0, Lbys;->a:Lbyo;

    invoke-virtual {v0}, Lbyo;->b()V

    .line 73
    iget-object v0, p0, Lbys;->a:Lbyo;

    .line 74
    iget-object v0, v0, Lbyo;->c:Lbwy;

    iget-object v0, v0, Lbwy;->b:Lbxq;

    iget-object v0, v0, Lbxq;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    iget-object v1, p0, Lbys;->a:Lbyo;

    .line 75
    iget-object v1, v1, Lbyo;->c:Lbwy;

    iget-object v1, v1, Lbwy;->g:Lcom/squareup/okhttp/Protocol;

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lbxj;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbxj;->e()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbxj;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ld;->a(Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lbys;->b:Lbyf;

    iget-object v2, p1, Lbxj;->c:Lbxf;

    invoke-virtual {v1, v2, v0}, Lbyf;->a(Lbxf;Ljava/lang/String;)V

    .line 77
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lbxj;->a()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Ld;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
