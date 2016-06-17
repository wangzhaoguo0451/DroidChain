.class public Lcom/wandoujia/ripple_framework/download/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 86
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lham;->o:Ljava/lang/Class;

    .line 94
    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 97
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 33
    if-nez p2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, "ripple_framework.intent.action.ACTION_REDIRECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 38
    const-string v1, "ripple_framework.intent.action.ACTION_OPEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "ripple_framework.intent.extra.DOWNLOAD_IDENTITY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-static {p1}, Lcom/wandoujia/ripple_framework/download/DownloadReceiver;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 45
    :cond_2
    sget-object v0, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v2

    .line 48
    if-nez v2, :cond_3

    .line 49
    invoke-static {p1}, Lcom/wandoujia/ripple_framework/download/DownloadReceiver;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 52
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v1, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 54
    sget v0, Lcom/wandoujia/ripple_framework/R$string;->download_open_file_not_exist:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    invoke-static {p1}, Lcom/wandoujia/ripple_framework/download/DownloadReceiver;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 58
    :cond_4
    sget-object v0, Lhbw;->a:[I

    iget-object v1, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    :cond_5
    invoke-static {p1}, Lcom/wandoujia/ripple_framework/download/DownloadReceiver;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 60
    :pswitch_0
    const-string v0, "game_packet"

    iget-object v1, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 61
    iget-object v0, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->p:Ljava/lang/String;

    invoke-static {v0}, Ld;->D(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 63
    sget-object v0, Lham;->f:Lham;

    const-string v1, "install"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfr;

    iget-object v4, v0, Lhfr;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v5, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    iget-object v0, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v6, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    if-eqz v3, :cond_6

    const-string v0, "src_path"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_1
    if-eqz v3, :cond_7

    const-string v0, "dst_path"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-virtual {v4, v5, v6, v1, v0}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lham;->f:Lham;

    const-string v1, "install"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfr;

    iget-object v0, v0, Lhfr;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v1, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p1}, Lcom/wandoujia/ripple_framework/download/DownloadReceiver;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 63
    :cond_6
    const-string v0, ""

    move-object v1, v0

    goto :goto_1

    :cond_7
    const-string v0, ""

    goto :goto_2

    .line 74
    :cond_8
    sget-object v0, Lham;->f:Lham;

    const-string v1, "install"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfr;

    iget-object v1, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    iget-object v2, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lhfr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    :pswitch_1
    sget-object v0, Lham;->f:Lham;

    const-string v1, "install"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfr;

    iget-object v1, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    iget-object v2, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lhfr;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
