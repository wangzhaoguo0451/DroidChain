.class public final Lbwp;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field public final a:Ljava/net/Proxy;

.field public final b:Ljava/lang/String;

.field public final c:I

.field final d:Ljavax/net/SocketFactory;

.field final e:Ljavax/net/ssl/SSLSocketFactory;

.field final f:Ljavax/net/ssl/HostnameVerifier;

.field final g:Lbwv;

.field final h:Lcom/squareup/okhttp/Authenticator;

.field final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbxb;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/net/ProxySelector;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lbwv;Lcom/squareup/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lbwv;",
            "Lcom/squareup/okhttp/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lbxb;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uriHost == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uriPort <= 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    if-nez p7, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    if-nez p9, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    if-nez p11, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_4
    iput-object p8, p0, Lbwp;->a:Ljava/net/Proxy;

    .line 61
    iput-object p1, p0, Lbwp;->b:Ljava/lang/String;

    .line 62
    iput p2, p0, Lbwp;->c:I

    .line 63
    iput-object p3, p0, Lbwp;->d:Ljavax/net/SocketFactory;

    .line 64
    iput-object p4, p0, Lbwp;->e:Ljavax/net/ssl/SSLSocketFactory;

    .line 65
    iput-object p5, p0, Lbwp;->f:Ljavax/net/ssl/HostnameVerifier;

    .line 66
    iput-object p6, p0, Lbwp;->g:Lbwv;

    .line 67
    iput-object p7, p0, Lbwp;->h:Lcom/squareup/okhttp/Authenticator;

    .line 68
    invoke-static {p9}, Lbya;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbwp;->i:Ljava/util/List;

    .line 69
    invoke-static {p10}, Lbya;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbwp;->j:Ljava/util/List;

    .line 70
    iput-object p11, p0, Lbwp;->k:Ljava/net/ProxySelector;

    .line 71
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 143
    instance-of v1, p1, Lbwp;

    if-eqz v1, :cond_0

    .line 144
    check-cast p1, Lbwp;

    .line 145
    iget-object v1, p0, Lbwp;->a:Ljava/net/Proxy;

    iget-object v2, p1, Lbwp;->a:Ljava/net/Proxy;

    invoke-static {v1, v2}, Lbya;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbwp;->b:Ljava/lang/String;

    iget-object v2, p1, Lbwp;->b:Ljava/lang/String;

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lbwp;->c:I

    iget v2, p1, Lbwp;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lbwp;->e:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Lbwp;->e:Ljavax/net/ssl/SSLSocketFactory;

    .line 148
    invoke-static {v1, v2}, Lbya;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbwp;->f:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Lbwp;->f:Ljavax/net/ssl/HostnameVerifier;

    .line 149
    invoke-static {v1, v2}, Lbya;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbwp;->g:Lbwv;

    iget-object v2, p1, Lbwp;->g:Lbwv;

    .line 150
    invoke-static {v1, v2}, Lbya;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbwp;->h:Lcom/squareup/okhttp/Authenticator;

    iget-object v2, p1, Lbwp;->h:Lcom/squareup/okhttp/Authenticator;

    .line 151
    invoke-static {v1, v2}, Lbya;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbwp;->i:Ljava/util/List;

    iget-object v2, p1, Lbwp;->i:Ljava/util/List;

    .line 152
    invoke-static {v1, v2}, Lbya;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbwp;->j:Ljava/util/List;

    iget-object v2, p1, Lbwp;->j:Ljava/util/List;

    .line 153
    invoke-static {v1, v2}, Lbya;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbwp;->k:Ljava/net/ProxySelector;

    iget-object v2, p1, Lbwp;->k:Ljava/net/ProxySelector;

    .line 154
    invoke-static {v1, v2}, Lbya;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 156
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v0, p0, Lbwp;->a:Ljava/net/Proxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbwp;->a:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 162
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lbwp;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 163
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lbwp;->c:I

    add-int/2addr v0, v2

    .line 164
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lbwp;->e:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbwp;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 165
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lbwp;->f:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbwp;->f:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 166
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lbwp;->g:Lbwv;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lbwp;->g:Lbwv;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 167
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbwp;->h:Lcom/squareup/okhttp/Authenticator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbwp;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbwp;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbwp;->k:Ljava/net/ProxySelector;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    return v0

    :cond_1
    move v0, v1

    .line 160
    goto :goto_0

    :cond_2
    move v0, v1

    .line 164
    goto :goto_1

    :cond_3
    move v0, v1

    .line 165
    goto :goto_2
.end method
