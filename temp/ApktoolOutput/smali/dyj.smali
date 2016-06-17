.class public final Ldyj;
.super Ljava/lang/Object;
.source "OpenGiftDetailAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private final a:Lcom/wandoujia/launcher/gift/http/model/GiftModel;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/gift/http/model/GiftModel;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Ldyj;->a:Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    .line 22
    iput-object p2, p0, Ldyj;->b:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 6

    .prologue
    .line 28
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 29
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    const-string v1, "http://apis.wandoujia.com/apps/v1/%s/gift/%s?format=proto"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ldyj;->a:Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    invoke-virtual {v4}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ldyj;->a:Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    invoke-virtual {v4}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 32
    const-string v2, "page_api_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wdj://games/gifts/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ldyj;->a:Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 34
    iget-object v1, p0, Ldyj;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Ld;->c(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Ldyj;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    :goto_0
    return-void

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wdj://detail/app/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ldyj;->a:Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Ldyj;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method
