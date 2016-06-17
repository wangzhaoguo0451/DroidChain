.class public final Lcom/wandoujia/net/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"


# instance fields
.field public final a:Landroid/net/Uri;

.field final b:Lcom/wandoujia/net/AsyncHttpRequest$Method;

.field public final c:Lepv;

.field public d:Leqh;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    sget-object v0, Lcom/wandoujia/net/AsyncHttpRequest$Method;->GET:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/net/AsyncHttpRequest;-><init>(Landroid/net/Uri;Lcom/wandoujia/net/AsyncHttpRequest$Method;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/wandoujia/net/AsyncHttpRequest$Method;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/wandoujia/net/AsyncHttpRequest;->a:Landroid/net/Uri;

    .line 36
    iput-object p2, p0, Lcom/wandoujia/net/AsyncHttpRequest;->b:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    .line 37
    new-instance v0, Lepv;

    invoke-direct {v0}, Lepv;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    .line 38
    iget-object v0, p0, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Lepv;->a(Ljava/lang/String;Ljava/lang/String;)Lepv;

    iget-object v0, p0, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    const-string v1, "Accept-Language"

    const-string v2, "en-US,en;q=0.8,zh-CN;q=0.6,zh;q=0.4,ja;q=0.2"

    invoke-virtual {v0, v1, v2}, Lepv;->a(Ljava/lang/String;Ljava/lang/String;)Lepv;

    iget-object v0, p0, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {v0, v1, v2}, Lepv;->a(Ljava/lang/String;Ljava/lang/String;)Lepv;

    iget-object v0, p0, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mozilla/5.0 (Linux; Android "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AppleWebKit/535.19 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/535.19"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lepv;->a(Ljava/lang/String;Ljava/lang/String;)Lepv;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    invoke-virtual {v0, p1, p2}, Lepv;->a(Ljava/lang/String;Ljava/lang/String;)Lepv;

    .line 55
    return-void
.end method
