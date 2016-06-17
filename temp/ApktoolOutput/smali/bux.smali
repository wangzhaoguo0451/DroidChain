.class public Lbux;
.super Ljava/lang/Object;
.source "WebAuthHandler.java"


# instance fields
.field public a:Lbut;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lbux;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbut;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lbux;->b:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lbux;->a:Lbut;

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Lbuv;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    if-eqz p1, :cond_1

    new-instance v0, Lbvy;

    iget-object v3, p0, Lbux;->a:Lbut;

    iget-object v3, v3, Lbut;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Lbvy;-><init>(Ljava/lang/String;)V

    const-string v3, "client_id"

    iget-object v4, p0, Lbux;->a:Lbut;

    iget-object v4, v4, Lbut;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lbvy;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "redirect_uri"

    iget-object v4, p0, Lbux;->a:Lbut;

    iget-object v4, v4, Lbut;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lbvy;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "scope"

    iget-object v4, p0, Lbux;->a:Lbut;

    iget-object v4, v4, Lbut;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lbvy;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "response_type"

    const-string v4, "code"

    invoke-virtual {v0, v3, v4}, Lbvy;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "version"

    const-string v4, "0030105000"

    invoke-virtual {v0, v3, v4}, Lbvy;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lbux;->b:Landroid/content/Context;

    iget-object v4, p0, Lbux;->a:Lbut;

    iget-object v4, v4, Lbut;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Ld;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "aid"

    invoke-virtual {v0, v4, v3}, Lbvy;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "packagename"

    iget-object v4, p0, Lbux;->a:Lbut;

    iget-object v4, v4, Lbut;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lbvy;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_hash"

    iget-object v4, p0, Lbux;->a:Lbut;

    iget-object v4, v4, Lbut;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lbvy;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://open.weibo.cn/oauth2/authorize?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbvy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lbux;->b:Landroid/content/Context;

    invoke-static {v3}, Ld;->g(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, p0, Lbux;->b:Landroid/content/Context;

    const-string v3, "Error"

    const-string v4, "Application requires permission to access the Internet"

    invoke-static {v0, v3, v4}, Ld;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lbux;->b:Landroid/content/Context;

    iget-object v3, p0, Lbux;->a:Lbut;

    iget-object v3, v3, Lbut;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lbue;->a(Landroid/content/Context;Ljava/lang/String;)Lbue;

    move-result-object v3

    iget-object v0, v3, Lbue;->b:Landroid/content/Context;

    invoke-static {v0}, Lbui;->a(Landroid/content/Context;)Lbui;

    move-result-object v0

    invoke-virtual {v0}, Lbui;->a()Lbuj;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lbuj;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v0, v3, Lbue;->e:Z

    if-eqz v0, :cond_2

    iput-boolean v1, v3, Lbue;->e:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, v3, Lbue;->c:Ljava/util/concurrent/CountDownLatch;

    iget-object v0, v3, Lbue;->d:Ljava/lang/String;

    iget-object v1, v3, Lbue;->b:Landroid/content/Context;

    new-instance v2, Lbug;

    invoke-direct {v2, v3}, Lbug;-><init>(Lbue;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ld;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lbvy;

    invoke-direct {v6, v0}, Lbvy;-><init>(Ljava/lang/String;)V

    const-string v7, "appkey"

    invoke-virtual {v6, v7, v0}, Lbvy;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "packagename"

    invoke-virtual {v6, v0, v4}, Lbvy;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_hash"

    invoke-virtual {v6, v0, v5}, Lbvy;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lbvs;

    invoke-direct {v0, v1}, Lbvs;-><init>(Landroid/content/Context;)V

    const-string v1, "http://api.weibo.cn/2/client/common_config"

    const-string v4, "GET"

    invoke-virtual {v0, v1, v6, v4, v2}, Lbvs;->a(Ljava/lang/String;Lbvy;Ljava/lang/String;Lbvx;)V

    sget-object v0, Lbue;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lbuf;

    invoke-direct {v2, v3, v0}, Lbuf;-><init>(Lbue;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 65
    :cond_2
    return-void

    .line 64
    :cond_3
    new-instance v3, Lbuy;

    iget-object v4, p0, Lbux;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lbuy;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lbux;->a:Lbut;

    iput-object v4, v3, Lbuy;->a:Lbut;

    iput-object p1, v3, Lbuy;->b:Lbuv;

    invoke-virtual {v3, v0}, Lbuy;->a(Ljava/lang/String;)V

    const-string v0, "\u5fae\u535a\u767b\u5f55"

    iput-object v0, v3, Lbvb;->g:Ljava/lang/String;

    invoke-virtual {v3}, Lbuy;->a()Landroid/os/Bundle;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lbux;->b:Landroid/content/Context;

    const-class v5, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lbux;->b:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method
