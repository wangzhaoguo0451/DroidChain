.class public Ldkf;
.super Ljava/lang/Object;
.source "NotificationClickHandler.java"

# interfaces
.implements Lgzw;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Ldkf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldkf;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    .line 29
    const-string v0, "push2_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "launch_from"

    const-string v2, "notification_push"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v1, "launch_keyword"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v0

    iget-object v0, v0, Lgzu;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Ld;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const-string v0, "phoenix.intent.action.NAVIGATE_TO_PAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/wandoujia/p4/campaign/CampaignActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 42
    const-string v3, "phoenix.intent.extra.URL"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v0, "phoenix.intent.extra.TITLE"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/push2/protocol/Download;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-virtual {p1}, Lcom/wandoujia/push2/protocol/Download;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Ldkf;->a:Ljava/lang/String;

    const-string v1, "download type is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :goto_0
    return-void

    .line 58
    :cond_0
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    .line 60
    new-instance v3, Lhby;

    invoke-direct {v3}, Lhby;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/wandoujia/push2/protocol/Download;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lhby;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wandoujia/push2/protocol/Download;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lhby;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wandoujia/push2/protocol/Download;->getIcon()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lhby;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wandoujia/push2/protocol/Download;->isPreDownload()Z

    move-result v1

    iput-boolean v1, v3, Lhby;->r:Z

    invoke-virtual {p1}, Lcom/wandoujia/push2/protocol/Download;->allowInMobile()Z

    move-result v1

    iput-boolean v1, v3, Lhby;->q:Z

    .line 67
    invoke-virtual {p1}, Lcom/wandoujia/push2/protocol/Download;->getType()Ljava/lang/String;

    move-result-object v4

    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 79
    sget-object v0, Ldkf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "download type "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/wandoujia/push2/protocol/Download;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not support"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :pswitch_0
    const-string v5, "app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    goto :goto_1

    .line 69
    :pswitch_1
    invoke-virtual {p1}, Lcom/wandoujia/push2/protocol/Download;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 70
    sget-object v0, Ldkf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "download package name is null, type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/wandoujia/push2/protocol/Download;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 73
    :cond_2
    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v1, v3, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v1, Lcom/wandoujia/download2/DownloadRequestParam$Type;->APP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v1, v3, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    invoke-virtual {p1}, Lcom/wandoujia/push2/protocol/Download;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lhby;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wandoujia/push2/protocol/Download;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lhby;->g:Ljava/lang/String;

    .line 83
    invoke-virtual {v3}, Lhby;->a()Lhbx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    goto/16 :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x17a21
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
