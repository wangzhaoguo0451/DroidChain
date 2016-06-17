.class public final Lbxj;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lbxf;

.field public final d:Lbxl;

.field final e:Ljava/lang/Object;

.field volatile f:Ljava/net/URL;

.field private volatile g:Ljava/net/URI;

.field private volatile h:Lbwq;


# direct methods
.method private constructor <init>(Lbxk;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object v0, p1, Lbxk;->a:Ljava/lang/String;

    iput-object v0, p0, Lbxj;->a:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lbxk;->c:Ljava/lang/String;

    iput-object v0, p0, Lbxj;->b:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lbxk;->d:Lbxg;

    invoke-virtual {v0}, Lbxg;->a()Lbxf;

    move-result-object v0

    iput-object v0, p0, Lbxj;->c:Lbxf;

    .line 47
    iget-object v0, p1, Lbxk;->e:Lbxl;

    iput-object v0, p0, Lbxj;->d:Lbxl;

    .line 48
    iget-object v0, p1, Lbxk;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbxk;->f:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lbxj;->e:Ljava/lang/Object;

    .line 49
    iget-object v0, p1, Lbxk;->b:Ljava/net/URL;

    iput-object v0, p0, Lbxj;->f:Ljava/net/URL;

    .line 50
    return-void

    :cond_0
    move-object v0, p0

    .line 48
    goto :goto_0
.end method

.method synthetic constructor <init>(Lbxk;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lbxj;-><init>(Lbxk;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lbxj;->c:Lbxf;

    invoke-virtual {v0, p1}, Lbxf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/net/URL;
    .locals 4

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lbxj;->f:Ljava/net/URL;

    .line 55
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lbxj;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbxj;->f:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lbxj;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()Ljava/net/URI;
    .locals 2

    .prologue
    .line 63
    :try_start_0
    iget-object v0, p0, Lbxj;->g:Ljava/net/URI;

    .line 64
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lbxv;->a()Lbxv;

    invoke-virtual {p0}, Lbxj;->a()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lbxv;->a(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lbxj;->g:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()Lbxk;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lbxk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbxk;-><init>(Lbxj;B)V

    return-object v0
.end method

.method public final d()Lbwq;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lbxj;->h:Lbwq;

    .line 108
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbxj;->c:Lbxf;

    invoke-static {v0}, Lbwq;->a(Lbxf;)Lbwq;

    move-result-object v0

    iput-object v0, p0, Lbxj;->h:Lbwq;

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lbxj;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbxj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbxj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lbxj;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lbxj;->e:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
