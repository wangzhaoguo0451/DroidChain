.class public Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "GameVideoPlayActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const-string v0, ""

    .line 55
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_0
    const-string v1, "wdj://play/game/video?url=%1$s&title=%2$s&pn=%3$s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 v0, 0x2

    aput-object p2, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x400

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 66
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->setVolumeControlStream(I)V

    .line 67
    invoke-virtual {p0}, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v4, "url"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->a:Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v4, "title"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->b:Ljava/lang/String;

    const-string v4, "pn"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->c:Ljava/lang/String;

    const/16 v4, 0xb

    invoke-static {v4}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "portrait"

    invoke-virtual {v2, v4, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_6

    :goto_2
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "page_api_url"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->a:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 69
    iget-object v0, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->d:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    .line 70
    invoke-virtual {p0}, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->d:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    const-string v3, "play"

    invoke-virtual {v0, v1, v2, v3}, Lag;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->b()I

    .line 74
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wdj://games/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/videos/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/content/Context;)V

    .line 81
    :goto_3
    return-void

    .line 67
    :cond_3
    const-string v4, "portrait"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto/16 :goto_1

    :cond_5
    const-string v2, "phoenix.intent.extra.URL"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->a:Ljava/lang/String;

    const-string v2, "phoenix.intent.extra.TITLE"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->b:Ljava/lang/String;

    const-string v2, "phoenix.intent.extra.PACKAGE_NAME"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->c:Ljava/lang/String;

    const-string v2, "phoenix.intent.extra.IS_PORTRAIT"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_2

    .line 78
    :cond_7
    invoke-virtual {p0}, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e04dd

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 79
    invoke-virtual {p0}, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->finish()V

    goto :goto_3

    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method
