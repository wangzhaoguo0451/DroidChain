.class public final Lbyo;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# static fields
.field public static final a:Lbxp;


# instance fields
.field public final b:Lbxh;

.field public c:Lbwy;

.field public d:Lbwp;

.field public e:Lbyx;

.field public f:Lbxq;

.field public final g:Lbxn;

.field public h:Lcom/squareup/okhttp/internal/http/Transport;

.field public i:J

.field public j:Z

.field public final k:Z

.field public final l:Lbxj;

.field public m:Lbxj;

.field public n:Lbxn;

.field public o:Lbxn;

.field public p:Lhtg;

.field public final q:Z

.field public final r:Z

.field public s:Lcom/squareup/okhttp/internal/http/CacheRequest;

.field public t:Lbyd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lbyp;

    invoke-direct {v0}, Lbyp;-><init>()V

    sput-object v0, Lbyo;->a:Lbxp;

    return-void
.end method

.method public constructor <init>(Lbxh;Lbxj;ZZZLbwy;Lbyx;Lbxn;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbyo;->i:J

    .line 191
    iput-object p1, p0, Lbyo;->b:Lbxh;

    .line 192
    iput-object p2, p0, Lbyo;->l:Lbxj;

    .line 193
    iput-boolean p3, p0, Lbyo;->k:Z

    .line 194
    iput-boolean p4, p0, Lbyo;->q:Z

    .line 195
    iput-boolean p5, p0, Lbyo;->r:Z

    .line 196
    iput-object p6, p0, Lbyo;->c:Lbwy;

    .line 197
    iput-object p7, p0, Lbyo;->e:Lbyx;

    .line 198
    iput-object v2, p0, Lbyo;->p:Lhtg;

    .line 199
    iput-object p8, p0, Lbyo;->g:Lbxn;

    .line 201
    if-eqz p6, :cond_0

    .line 202
    sget-object v0, Lbxr;->b:Lbxr;

    invoke-virtual {v0, p6, p0}, Lbxr;->b(Lbwy;Lbyo;)V

    .line 203
    iget-object v0, p6, Lbwy;->b:Lbxq;

    iput-object v0, p0, Lbyo;->f:Lbxq;

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    iput-object v2, p0, Lbyo;->f:Lbxq;

    goto :goto_0
.end method

.method public static a(Lbxh;Lbxj;)Lbwp;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1054
    invoke-virtual {p1}, Lbxj;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1055
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1056
    :cond_0
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Lbxj;->a()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1062
    :cond_1
    invoke-virtual {p1}, Lbxj;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    iget-object v4, p0, Lbxh;->n:Ljavax/net/ssl/SSLSocketFactory;

    .line 1064
    iget-object v5, p0, Lbxh;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 1065
    iget-object v6, p0, Lbxh;->p:Lbwv;

    .line 1068
    :goto_0
    new-instance v0, Lbwp;

    invoke-virtual {p1}, Lbxj;->a()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lbya;->a(Ljava/net/URL;)I

    move-result v2

    .line 1069
    iget-object v3, p0, Lbxh;->m:Ljavax/net/SocketFactory;

    .line 1070
    iget-object v7, p0, Lbxh;->q:Lcom/squareup/okhttp/Authenticator;

    iget-object v8, p0, Lbxh;->e:Ljava/net/Proxy;

    iget-object v9, p0, Lbxh;->f:Ljava/util/List;

    .line 1071
    iget-object v10, p0, Lbxh;->g:Ljava/util/List;

    iget-object v11, p0, Lbxh;->j:Ljava/net/ProxySelector;

    invoke-direct/range {v0 .. v11}, Lbwp;-><init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lbwv;Lcom/squareup/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0

    :cond_2
    move-object v5, v6

    move-object v4, v6

    goto :goto_0
.end method

.method static synthetic a(Lbyo;)Lbwy;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lbyo;->c:Lbwy;

    return-object v0
.end method

.method public static a(Lbxf;Lbxf;)Lbxf;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 938
    new-instance v2, Lbxg;

    invoke-direct {v2}, Lbxg;-><init>()V

    .line 940
    iget-object v1, p0, Lbxf;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v3, v1, 0x2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 941
    invoke-virtual {p0, v1}, Lbxf;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 942
    invoke-virtual {p0, v1}, Lbxf;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 943
    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 944
    :cond_0
    invoke-static {v4}, Lbyt;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lbxf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 947
    :cond_1
    invoke-virtual {v2, v4, v5}, Lbxg;->a(Ljava/lang/String;Ljava/lang/String;)Lbxg;

    .line 940
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 951
    :cond_3
    iget-object v1, p1, Lbxf;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_1
    if-ge v0, v1, :cond_5

    .line 952
    invoke-virtual {p1, v0}, Lbxf;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 953
    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 954
    invoke-static {v3}, Lbyt;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 957
    invoke-virtual {p1, v0}, Lbxf;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbxg;->a(Ljava/lang/String;Ljava/lang/String;)Lbxg;

    .line 951
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 961
    :cond_5
    invoke-virtual {v2}, Lbxg;->a()Lbxf;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lbxn;)Lbxn;
    .locals 2
    .parameter

    .prologue
    .line 305
    if-eqz p0, :cond_0

    iget-object v0, p0, Lbxn;->g:Lbxp;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lbxn;->a()Lbxo;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lbxo;->g:Lbxp;

    invoke-virtual {v0}, Lbxo;->a()Lbxn;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/net/URL;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 657
    invoke-static {p0}, Lbya;->a(Ljava/net/URL;)I

    move-result v0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbya;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lbxn;Lbxn;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 914
    iget v1, p1, Lbxn;->c:I

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    .line 930
    :cond_0
    :goto_0
    return v0

    .line 921
    :cond_1
    iget-object v1, p0, Lbxn;->f:Lbxf;

    const-string v2, "Last-Modified"

    invoke-virtual {v1, v2}, Lbxf;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 922
    if-eqz v1, :cond_2

    .line 923
    iget-object v2, p1, Lbxn;->f:Lbxf;

    const-string v3, "Last-Modified"

    invoke-virtual {v2, v3}, Lbxf;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 924
    if-eqz v2, :cond_2

    .line 925
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 930
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lbyo;)Lcom/squareup/okhttp/internal/http/Transport;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    return-object v0
.end method

.method static synthetic c(Lbyo;)Lbxn;
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0}, Lbyo;->g()Lbxn;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lbxn;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 591
    iget-object v2, p0, Lbxn;->a:Lbxj;

    iget-object v2, v2, Lbxj;->b:Ljava/lang/String;

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v0

    .line 595
    :cond_1
    iget v2, p0, Lbxn;->c:I

    .line 596
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_3

    const/16 v3, 0x130

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 599
    goto :goto_0

    .line 605
    :cond_3
    invoke-static {p0}, Lbyt;->a(Lbxn;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    .line 606
    invoke-virtual {p0, v3}, Lbxn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 607
    goto :goto_0
.end method


# virtual methods
.method public final a()Lbwy;
    .locals 8

    .prologue
    .line 335
    iget-object v0, p0, Lbyo;->b:Lbxh;

    iget-object v6, v0, Lbxh;->r:Lbwz;

    .line 338
    :goto_0
    iget-object v0, p0, Lbyo;->d:Lbwp;

    invoke-virtual {v6, v0}, Lbwz;->a(Lbwp;)Lbwy;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v1, p0, Lbyo;->m:Lbxj;

    iget-object v1, v1, Lbxj;->b:Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lbxr;->b:Lbxr;

    invoke-virtual {v1, v0}, Lbxr;->c(Lbwy;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    :cond_0
    :goto_1
    return-object v0

    .line 342
    :cond_1
    iget-object v0, v0, Lbwy;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 344
    :cond_2
    iget-object v7, p0, Lbyo;->e:Lbyx;

    :goto_2
    invoke-virtual {v7}, Lbyx;->d()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v7}, Lbyx;->b()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v7}, Lbyx;->a()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v7}, Lbyx;->e()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_3
    iget-object v0, v7, Lbyx;->m:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxq;

    .line 345
    :cond_4
    new-instance v1, Lbwy;

    invoke-direct {v1, v6, v0}, Lbwy;-><init>(Lbwz;Lbxq;)V

    move-object v0, v1

    goto :goto_1

    .line 344
    :cond_5
    invoke-virtual {v7}, Lbyx;->a()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No route to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lbyx;->a:Lbwp;

    iget-object v2, v2, Lbwp;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lbyx;->g:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, v7, Lbyx;->g:Ljava/util/List;

    iget v1, v7, Lbyx;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v7, Lbyx;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-virtual {v7, v0}, Lbyx;->a(Ljava/net/Proxy;)V

    iput-object v0, v7, Lbyx;->d:Ljava/net/Proxy;

    :cond_7
    invoke-virtual {v7}, Lbyx;->b()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No route to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lbyx;->a:Lbwp;

    iget-object v2, v2, Lbwp;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lbyx;->i:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, v7, Lbyx;->i:Ljava/util/List;

    iget v1, v7, Lbyx;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v7, Lbyx;->j:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v7}, Lbyx;->c()V

    iput-object v0, v7, Lbyx;->e:Ljava/net/InetSocketAddress;

    :cond_9
    iget-object v0, v7, Lbyx;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v1, Ljava/net/UnknownServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "No route to "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Lbyx;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lbyx;->b:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v7, Lbyx;->a:Lbwp;

    iget-object v2, v2, Lbwp;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; no connection specs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const-string v0, "//"

    goto :goto_3

    :cond_b
    invoke-virtual {v7}, Lbyx;->d()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "No route to "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Lbyx;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lbyx;->b:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v7, Lbyx;->a:Lbwp;

    iget-object v2, v2, Lbwp;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; exhausted connection specs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v7, Lbyx;->k:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    const-string v0, "//"

    goto :goto_4

    :cond_d
    iget-object v0, v7, Lbyx;->k:Ljava/util/List;

    iget v1, v7, Lbyx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v7, Lbyx;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxb;

    iput-object v0, v7, Lbyx;->f:Lbxb;

    iget-object v0, v7, Lbyx;->f:Lbxb;

    invoke-virtual {v7, v0}, Lbyx;->a(Lbxb;)Z

    move-result v5

    new-instance v0, Lbxq;

    iget-object v1, v7, Lbyx;->a:Lbwp;

    iget-object v2, v7, Lbyx;->d:Ljava/net/Proxy;

    iget-object v3, v7, Lbyx;->e:Ljava/net/InetSocketAddress;

    iget-object v4, v7, Lbyx;->f:Lbxb;

    invoke-direct/range {v0 .. v5}, Lbxq;-><init>(Lbwp;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Lbxb;Z)V

    iget-object v1, v7, Lbyx;->c:Lbxz;

    invoke-virtual {v1, v0}, Lbxz;->c(Lbxq;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v7, Lbyx;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public final a(Lbxf;)V
    .locals 3
    .parameter

    .prologue
    .line 965
    iget-object v0, p0, Lbyo;->b:Lbxh;

    iget-object v0, v0, Lbxh;->k:Ljava/net/CookieHandler;

    .line 966
    if-eqz v0, :cond_0

    .line 967
    iget-object v1, p0, Lbyo;->l:Lbxj;

    invoke-virtual {v1}, Lbxj;->b()Ljava/net/URI;

    move-result-object v1

    invoke-static {p1}, Lbyt;->b(Lbxf;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 969
    :cond_0
    return-void
.end method

.method public final b(Lbxn;)Lbxn;
    .locals 4
    .parameter

    .prologue
    .line 566
    iget-boolean v0, p0, Lbyo;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "gzip"

    iget-object v1, p0, Lbyo;->o:Lbxn;

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lbxn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-object p1

    .line 570
    :cond_1
    iget-object v0, p1, Lbxn;->g:Lbxp;

    if-eqz v0, :cond_0

    .line 574
    new-instance v0, Lhsv;

    iget-object v1, p1, Lbxn;->g:Lbxp;

    invoke-virtual {v1}, Lbxp;->b()Lhss;

    move-result-object v1

    invoke-direct {v0, v1}, Lhsv;-><init>(Lhth;)V

    .line 575
    iget-object v1, p1, Lbxn;->f:Lbxf;

    invoke-virtual {v1}, Lbxf;->a()Lbxg;

    move-result-object v1

    const-string v2, "Content-Encoding"

    .line 576
    invoke-virtual {v1, v2}, Lbxg;->a(Ljava/lang/String;)Lbxg;

    move-result-object v1

    const-string v2, "Content-Length"

    .line 577
    invoke-virtual {v1, v2}, Lbxg;->a(Ljava/lang/String;)Lbxg;

    move-result-object v1

    .line 578
    invoke-virtual {v1}, Lbxg;->a()Lbxf;

    move-result-object v1

    .line 579
    invoke-virtual {p1}, Lbxn;->a()Lbxo;

    move-result-object v2

    .line 580
    invoke-virtual {v2, v1}, Lbxo;->a(Lbxf;)Lbxo;

    move-result-object v2

    new-instance v3, Lbyv;

    .line 581
    invoke-static {v0}, Lhsx;->a(Lhth;)Lhss;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lbyv;-><init>(Lbxf;Lhss;)V

    iput-object v3, v2, Lbxo;->g:Lbxp;

    .line 582
    invoke-virtual {v2}, Lbxo;->a()Lbxn;

    move-result-object p1

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 353
    iget-wide v0, p0, Lbyo;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 354
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbyo;->i:J

    .line 355
    return-void
.end method

.method public final b(Ljava/net/URL;)Z
    .locals 3
    .parameter

    .prologue
    .line 1046
    iget-object v0, p0, Lbyo;->l:Lbxj;

    invoke-virtual {v0}, Lbxj;->a()Ljava/net/URL;

    move-result-object v0

    .line 1047
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    invoke-static {v0}, Lbya;->a(Ljava/net/URL;)I

    move-result v1

    invoke-static {p1}, Lbya;->a(Ljava/net/URL;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1049
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lbyo;->l:Lbxj;

    iget-object v0, v0, Lbxj;->b:Ljava/lang/String;

    invoke-static {v0}, Ld;->o(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final d()Lbxn;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lbyo;->o:Lbxn;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 388
    :cond_0
    iget-object v0, p0, Lbyo;->o:Lbxn;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbyo;->c:Lbwy;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/Transport;->releaseConnectionOnIdle()V

    .line 495
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbyo;->c:Lbwy;

    .line 496
    return-void
.end method

.method public final f()Lbwy;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 518
    iget-object v1, p0, Lbyo;->p:Lhtg;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lbyo;->p:Lhtg;

    invoke-static {v1}, Lbya;->a(Ljava/io/Closeable;)V

    .line 526
    :cond_0
    iget-object v1, p0, Lbyo;->o:Lbxn;

    if-nez v1, :cond_2

    .line 527
    iget-object v1, p0, Lbyo;->c:Lbwy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbyo;->c:Lbwy;

    iget-object v1, v1, Lbwy;->c:Ljava/net/Socket;

    invoke-static {v1}, Lbya;->a(Ljava/net/Socket;)V

    .line 528
    :cond_1
    iput-object v0, p0, Lbyo;->c:Lbwy;

    .line 549
    :goto_0
    return-object v0

    .line 533
    :cond_2
    iget-object v1, p0, Lbyo;->o:Lbxn;

    iget-object v1, v1, Lbxn;->g:Lbxp;

    invoke-static {v1}, Lbya;->a(Ljava/io/Closeable;)V

    .line 536
    iget-object v1, p0, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lbyo;->c:Lbwy;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/http/Transport;->canReuseConnection()Z

    move-result v1

    if-nez v1, :cond_3

    .line 537
    iget-object v1, p0, Lbyo;->c:Lbwy;

    iget-object v1, v1, Lbwy;->c:Ljava/net/Socket;

    invoke-static {v1}, Lbya;->a(Ljava/net/Socket;)V

    .line 538
    iput-object v0, p0, Lbyo;->c:Lbwy;

    goto :goto_0

    .line 543
    :cond_3
    iget-object v1, p0, Lbyo;->c:Lbwy;

    if-eqz v1, :cond_4

    sget-object v1, Lbxr;->b:Lbxr;

    iget-object v2, p0, Lbyo;->c:Lbwy;

    invoke-virtual {v1, v2}, Lbxr;->a(Lbwy;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 544
    iput-object v0, p0, Lbyo;->c:Lbwy;

    .line 547
    :cond_4
    iget-object v1, p0, Lbyo;->c:Lbwy;

    .line 548
    iput-object v0, p0, Lbyo;->c:Lbwy;

    move-object v0, v1

    .line 549
    goto :goto_0
.end method

.method public final g()Lbxn;
    .locals 4

    .prologue
    .line 828
    iget-object v0, p0, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/Transport;->finishRequest()V

    .line 830
    iget-object v0, p0, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/Transport;->readResponseHeaders()Lbxo;

    move-result-object v0

    iget-object v1, p0, Lbyo;->m:Lbxj;

    .line 831
    iput-object v1, v0, Lbxo;->a:Lbxj;

    iget-object v1, p0, Lbyo;->c:Lbwy;

    .line 832
    iget-object v1, v1, Lbwy;->i:Lbxe;

    iput-object v1, v0, Lbxo;->e:Lbxe;

    sget-object v1, Lbyt;->a:Ljava/lang/String;

    iget-wide v2, p0, Lbyo;->i:J

    .line 833
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbxo;->a(Ljava/lang/String;Ljava/lang/String;)Lbxo;

    move-result-object v0

    sget-object v1, Lbyt;->b:Ljava/lang/String;

    .line 834
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbxo;->a(Ljava/lang/String;Ljava/lang/String;)Lbxo;

    move-result-object v0

    .line 835
    invoke-virtual {v0}, Lbxo;->a()Lbxn;

    move-result-object v0

    .line 837
    iget-boolean v1, p0, Lbyo;->r:Z

    if-nez v1, :cond_0

    .line 838
    invoke-virtual {v0}, Lbxn;->a()Lbxo;

    move-result-object v1

    iget-object v2, p0, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    .line 839
    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/http/Transport;->openResponseBody(Lbxn;)Lbxp;

    move-result-object v0

    iput-object v0, v1, Lbxo;->g:Lbxp;

    .line 840
    invoke-virtual {v1}, Lbxo;->a()Lbxn;

    move-result-object v0

    .line 843
    :cond_0
    sget-object v1, Lbxr;->b:Lbxr;

    iget-object v2, p0, Lbyo;->c:Lbwy;

    iget-object v3, v0, Lbxn;->b:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v1, v2, v3}, Lbxr;->a(Lbwy;Lcom/squareup/okhttp/Protocol;)V

    .line 844
    return-object v0
.end method
