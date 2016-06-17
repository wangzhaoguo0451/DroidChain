.class public final Lbyf;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# instance fields
.field final a:Lbwz;

.field final b:Lbwy;

.field public final c:Lhss;

.field final d:Lhsr;

.field e:I

.field f:I

.field private final g:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lbwz;Lbwy;Ljava/net/Socket;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v0, p0, Lbyf;->e:I

    .line 82
    iput v0, p0, Lbyf;->f:I

    .line 86
    iput-object p1, p0, Lbyf;->a:Lbwz;

    .line 87
    iput-object p2, p0, Lbyf;->b:Lbwy;

    .line 88
    iput-object p3, p0, Lbyf;->g:Ljava/net/Socket;

    .line 89
    invoke-static {p3}, Lhsx;->b(Ljava/net/Socket;)Lhth;

    move-result-object v0

    invoke-static {v0}, Lhsx;->a(Lhth;)Lhss;

    move-result-object v0

    iput-object v0, p0, Lbyf;->c:Lhss;

    .line 90
    invoke-static {p3}, Lhsx;->a(Ljava/net/Socket;)Lhtg;

    move-result-object v0

    invoke-static {v0}, Lhsx;->a(Lhtg;)Lhsr;

    move-result-object v0

    iput-object v0, p0, Lbyf;->d:Lhsr;

    .line 91
    return-void
.end method


# virtual methods
.method public final a(J)Lhth;
    .locals 3
    .parameter

    .prologue
    .line 243
    iget v0, p0, Lbyf;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lbyf;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lbyf;->e:I

    .line 245
    new-instance v0, Lbyk;

    invoke-direct {v0, p0, p1, p2}, Lbyk;-><init>(Lbyf;J)V

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lbyf;->d:Lhsr;

    invoke-interface {v0}, Lhsr;->flush()V

    .line 141
    return-void
.end method

.method public final a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lbyf;->c:Lhss;

    invoke-interface {v0}, Lhss;->a()Lhti;

    move-result-object v0

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lhti;->a(JLjava/util/concurrent/TimeUnit;)Lhti;

    .line 97
    :cond_0
    if-eqz p2, :cond_1

    .line 98
    iget-object v0, p0, Lbyf;->d:Lhsr;

    invoke-interface {v0}, Lhsr;->a()Lhti;

    move-result-object v0

    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lhti;->a(JLjava/util/concurrent/TimeUnit;)Lhti;

    .line 100
    :cond_1
    return-void
.end method

.method public final a(Lbxf;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 170
    iget v0, p0, Lbyf;->e:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lbyf;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lbyf;->d:Lhsr;

    invoke-interface {v0, p2}, Lhsr;->b(Ljava/lang/String;)Lhsr;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lhsr;->b(Ljava/lang/String;)Lhsr;

    .line 172
    const/4 v0, 0x0

    iget-object v1, p1, Lbxf;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_0
    if-ge v0, v1, :cond_1

    .line 173
    iget-object v2, p0, Lbyf;->d:Lhsr;

    invoke-virtual {p1, v0}, Lbxf;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lhsr;->b(Ljava/lang/String;)Lhsr;

    move-result-object v2

    const-string v3, ": "

    .line 174
    invoke-interface {v2, v3}, Lhsr;->b(Ljava/lang/String;)Lhsr;

    move-result-object v2

    .line 175
    invoke-virtual {p1, v0}, Lbxf;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lhsr;->b(Ljava/lang/String;)Lhsr;

    move-result-object v2

    const-string v3, "\r\n"

    .line 176
    invoke-interface {v2, v3}, Lhsr;->b(Ljava/lang/String;)Lhsr;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lbyf;->d:Lhsr;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lhsr;->b(Ljava/lang/String;)Lhsr;

    .line 179
    const/4 v0, 0x1

    iput v0, p0, Lbyf;->e:I

    .line 180
    return-void
.end method

.method public final a(Lbxg;)V
    .locals 2
    .parameter

    .prologue
    .line 219
    :goto_0
    iget-object v0, p0, Lbyf;->c:Lhss;

    invoke-interface {v0}, Lhss;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    sget-object v1, Lbxr;->b:Lbxr;

    invoke-virtual {v1, p1, v0}, Lbxr;->a(Lbxg;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 151
    :try_start_0
    iget-object v2, p0, Lbyf;->g:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 153
    :try_start_1
    iget-object v2, p0, Lbyf;->g:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 154
    iget-object v2, p0, Lbyf;->c:Lhss;

    invoke-interface {v2}, Lhss;->c()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    :try_start_2
    iget-object v2, p0, Lbyf;->g:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 164
    :goto_0
    return v0

    .line 157
    :cond_0
    iget-object v2, p0, Lbyf;->g:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v4, p0, Lbyf;->g:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 162
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 164
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final c()Lbxo;
    .locals 5

    .prologue
    .line 184
    iget v0, p0, Lbyf;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lbyf;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lbyf;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbyf;->c:Lhss;

    invoke-interface {v0}, Lhss;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbyz;->a(Ljava/lang/String;)Lbyz;

    move-result-object v0

    .line 192
    new-instance v1, Lbxo;

    invoke-direct {v1}, Lbxo;-><init>()V

    iget-object v2, v0, Lbyz;->a:Lcom/squareup/okhttp/Protocol;

    .line 193
    iput-object v2, v1, Lbxo;->b:Lcom/squareup/okhttp/Protocol;

    iget v2, v0, Lbyz;->b:I

    .line 194
    iput v2, v1, Lbxo;->c:I

    iget-object v2, v0, Lbyz;->c:Ljava/lang/String;

    .line 195
    iput-object v2, v1, Lbxo;->d:Ljava/lang/String;

    .line 197
    new-instance v2, Lbxg;

    invoke-direct {v2}, Lbxg;-><init>()V

    .line 198
    invoke-virtual {p0, v2}, Lbyf;->a(Lbxg;)V

    .line 199
    sget-object v3, Lbyt;->c:Ljava/lang/String;

    iget-object v4, v0, Lbyz;->a:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbxg;->a(Ljava/lang/String;Ljava/lang/String;)Lbxg;

    .line 200
    invoke-virtual {v2}, Lbxg;->a()Lbxf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbxo;->a(Lbxf;)Lbxo;

    .line 202
    iget v0, v0, Lbyz;->b:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    .line 203
    const/4 v0, 0x4

    iput v0, p0, Lbyf;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 209
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected end of stream on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lbyf;->b:Lbwy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (recycle count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lbxr;->b:Lbxr;

    iget-object v4, p0, Lbyf;->b:Lbwy;

    .line 210
    invoke-virtual {v3, v4}, Lbxr;->b(Lbwy;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 212
    throw v1
.end method
