.class public final Lbyr;
.super Ljava/lang/Object;
.source "HttpEngine.java"

# interfaces
.implements Lcom/squareup/okhttp/Interceptor$Chain;


# instance fields
.field private final a:I

.field private final b:Lbxj;

.field private c:I

.field private synthetic d:Lbyo;


# direct methods
.method public constructor <init>(Lbyo;ILbxj;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 765
    iput-object p1, p0, Lbyr;->d:Lbyo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iput p2, p0, Lbyr;->a:I

    .line 767
    iput-object p3, p0, Lbyr;->b:Lbxj;

    .line 768
    return-void
.end method


# virtual methods
.method public final connection()Lbwy;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lbyr;->d:Lbyo;

    invoke-static {v0}, Lbyo;->a(Lbyo;)Lbwy;

    move-result-object v0

    return-object v0
.end method

.method public final proceed(Lbxj;)Lbxn;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 779
    iget v0, p0, Lbyr;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbyr;->c:I

    .line 781
    iget v0, p0, Lbyr;->a:I

    if-lez v0, :cond_2

    .line 782
    iget-object v0, p0, Lbyr;->d:Lbyo;

    iget-object v0, v0, Lbyo;->b:Lbxh;

    iget-object v0, v0, Lbxh;->i:Ljava/util/List;

    iget v1, p0, Lbyr;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Interceptor;

    .line 783
    invoke-virtual {p0}, Lbyr;->connection()Lbwy;

    move-result-object v1

    iget-object v1, v1, Lbwy;->b:Lbxq;

    iget-object v1, v1, Lbxq;->a:Lbwp;

    .line 786
    invoke-virtual {p1}, Lbxj;->a()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lbwp;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    invoke-virtual {p1}, Lbxj;->a()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lbya;->a(Ljava/net/URL;)I

    move-result v2

    iget v1, v1, Lbwp;->c:I

    if-eq v2, v1, :cond_1

    .line 788
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must retain the same host and port"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 793
    :cond_1
    iget v1, p0, Lbyr;->c:I

    if-le v1, v4, :cond_2

    .line 794
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 799
    :cond_2
    iget v0, p0, Lbyr;->a:I

    iget-object v1, p0, Lbyr;->d:Lbyo;

    iget-object v1, v1, Lbyo;->b:Lbxh;

    iget-object v1, v1, Lbxh;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 801
    new-instance v2, Lbyr;

    iget-object v0, p0, Lbyr;->d:Lbyo;

    iget v1, p0, Lbyr;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v0, v1, p1}, Lbyr;-><init>(Lbyo;ILbxj;)V

    .line 802
    iget-object v0, p0, Lbyr;->d:Lbyo;

    iget-object v0, v0, Lbyo;->b:Lbxh;

    iget-object v0, v0, Lbxh;->i:Ljava/util/List;

    iget v1, p0, Lbyr;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Interceptor;

    .line 803
    invoke-interface {v0, v2}, Lcom/squareup/okhttp/Interceptor;->intercept(Lcom/squareup/okhttp/Interceptor$Chain;)Lbxn;

    move-result-object v1

    .line 806
    iget v2, v2, Lbyr;->c:I

    if-eq v2, v4, :cond_3

    .line 807
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v0, v1

    .line 823
    :goto_0
    return-object v0

    .line 814
    :cond_4
    iget-object v0, p0, Lbyr;->d:Lbyo;

    invoke-static {v0}, Lbyo;->b(Lbyo;)Lcom/squareup/okhttp/internal/http/Transport;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/internal/http/Transport;->writeRequestHeaders(Lbxj;)V

    .line 816
    iget-object v0, p0, Lbyr;->d:Lbyo;

    invoke-virtual {v0}, Lbyo;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lbxj;->d:Lbxl;

    if-eqz v0, :cond_5

    .line 817
    iget-object v0, p0, Lbyr;->d:Lbyo;

    invoke-static {v0}, Lbyo;->b(Lbyo;)Lcom/squareup/okhttp/internal/http/Transport;

    move-result-object v0

    iget-object v1, p1, Lbxj;->d:Lbxl;

    invoke-virtual {v1}, Lbxl;->a()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lcom/squareup/okhttp/internal/http/Transport;->createRequestBody(Lbxj;J)Lhtg;

    move-result-object v0

    .line 818
    invoke-static {v0}, Lhsx;->a(Lhtg;)Lhsr;

    move-result-object v0

    .line 819
    iget-object v1, p1, Lbxj;->d:Lbxl;

    invoke-virtual {v1, v0}, Lbxl;->a(Lhsr;)V

    .line 820
    invoke-interface {v0}, Lhsr;->close()V

    .line 823
    :cond_5
    iget-object v0, p0, Lbyr;->d:Lbyo;

    invoke-static {v0}, Lbyo;->c(Lbyo;)Lbxn;

    move-result-object v0

    goto :goto_0
.end method

.method public final request()Lbxj;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lbyr;->b:Lbxj;

    return-object v0
.end method
