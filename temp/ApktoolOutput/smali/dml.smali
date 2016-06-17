.class final Ldml;
.super Lhhl;
.source "DownloadButtonPresenter.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;

.field private synthetic b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

.field private synthetic c:Ldmi;


# direct methods
.method constructor <init>(Ldmi;Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Ldml;->c:Ldmi;

    iput-object p2, p0, Ldml;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iput-object p3, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 102
    iget-object v0, p0, Ldml;->a:Lcom/wandoujia/ripple_framework/model/Model;

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v6

    .line 105
    :cond_1
    iget-object v0, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Ldmm;->b:[I

    iget-object v1, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    iget-object v0, p0, Ldml;->c:Ldmi;

    iget-object v0, v0, Ldmi;->e:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->APP:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v0, p0, Ldml;->c:Ldmi;

    iget-object v0, v0, Ldmi;->e:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v0, p0, Ldml;->c:Ldmi;

    iget-object v0, v0, Ldmi;->e:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-virtual {v0, v1, v6}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Z)V

    goto :goto_0

    .line 124
    :pswitch_3
    iget-object v0, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-static {v0}, Ld;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 125
    iget-object v0, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-static {v0}, Ld;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ldml;->c:Ldmi;

    iget-object v0, v0, Ldmi;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 129
    iget-object v0, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v0, v1, :cond_6

    .line 130
    const-string v0, "game_packet"

    iget-object v1, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    iget-object v0, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->p:Ljava/lang/String;

    invoke-static {v0}, Ld;->D(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 133
    sget-object v0, Lham;->f:Lham;

    const-string v1, "install"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfr;

    iget-object v3, v0, Lhfr;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v0, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v4, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    iget-object v0, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v5, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v0, "src_path"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_1
    if-eqz v2, :cond_4

    const-string v0, "dst_path"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v4, v5, v1, v0}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, ""

    move-object v1, v0

    goto :goto_1

    :cond_4
    const-string v0, ""

    goto :goto_2

    .line 141
    :cond_5
    sget-object v0, Lham;->f:Lham;

    const-string v1, "install"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfr;

    iget-object v1, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-static {v1}, Ld;->ak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhfr;->a(Ljava/lang/String;)V

    iget-object v3, v0, Lhfr;->c:Landroid/os/Handler;

    new-instance v4, Lhfs;

    invoke-direct {v4, v0, v1, v2}, Lhfs;-><init>(Lhfr;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 145
    :cond_6
    iget-object v0, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->PATCH:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v0, v1, :cond_0

    .line 146
    sget-object v0, Lham;->f:Lham;

    const-string v1, "install"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfr;

    iget-object v1, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    iget-object v2, p0, Ldml;->c:Ldmi;

    iget-object v2, v2, Ldmi;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lhfr;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_7
    iget-object v0, p0, Ldml;->c:Ldmi;

    iget-object v0, v0, Ldmi;->e:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    iget-object v1, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :cond_8
    iget-object v0, p0, Ldml;->c:Ldmi;

    iget-object v0, v0, Ldmi;->e:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-virtual {v0, v1, v6}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Z)V

    goto/16 :goto_0

    .line 159
    :cond_9
    iget-object v0, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->VIDEO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Ld;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 161
    iget-object v0, p0, Ldml;->a:Lcom/wandoujia/ripple_framework/model/Model;

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    .line 163
    invoke-virtual {v4}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->getDownloadedEpisodeModelList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lgma;

    iget-object v1, p0, Ldml;->c:Ldmi;

    invoke-virtual {v1}, Lerg;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, v4, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->videoId:J

    invoke-virtual {v4}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->getDownloadedEpisodeModelList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    iget-wide v4, v4, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    invoke-direct/range {v0 .. v5}, Lgma;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v0}, Lgma;->execute()V

    goto/16 :goto_0

    .line 168
    :cond_a
    iget-object v0, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->VIDEO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    sget-object v1, Lcom/wandoujia/download2/DownloadRequestParam$Type;->PLAY_EXP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    if-ne v0, v1, :cond_b

    .line 170
    iget-object v0, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->p:Ljava/lang/String;

    invoke-static {v0}, Ld;->L(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "videoEpisodeId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 172
    new-instance v0, Lgma;

    iget-object v1, p0, Ldml;->c:Ldmi;

    invoke-virtual {v1}, Lerg;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v2, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->n:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct/range {v0 .. v5}, Lgma;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v0}, Lgma;->execute()V

    goto/16 :goto_0

    .line 175
    :cond_b
    iget-object v0, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 177
    :try_start_0
    iget-object v0, p0, Ldml;->c:Ldmi;

    invoke-virtual {v0}, Lerg;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Ldml;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v2, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :cond_c
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 179
    :cond_d
    iget-object v0, p0, Ldml;->c:Ldmi;

    invoke-virtual {v0}, Lerg;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e03c0

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    goto/16 :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
