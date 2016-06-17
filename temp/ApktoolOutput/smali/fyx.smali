.class public final Lfyx;
.super Ljava/lang/Object;
.source "JupiterDownloadInfo.java"

# interfaces
.implements Lcom/wandoujia/launcher_base/download/DownloadInfo;


# instance fields
.field private a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfyx;->b:Ljava/util/HashMap;

    .line 23
    iput-object p1, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 24
    const-string v0, "game_packet"

    iget-object v1, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v1, "src_path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lfyx;->b:Ljava/util/HashMap;

    const-string v2, "extra.packet.dst.path"

    const-string v3, "src_path"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    const-string v1, "dst_path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    iget-object v1, p0, Lfyx;->b:Ljava/util/HashMap;

    const-string v2, "extra.packet.src.path"

    const-string v3, "dst_path"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lfyx;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->CANCELED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    .line 122
    :goto_0
    return-object v0

    .line 101
    :cond_1
    sget-object v0, Lfyy;->a:[I

    iget-object v1, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 122
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->CANCELED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    goto :goto_0

    .line 103
    :pswitch_0
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->SUCCESS:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    goto :goto_0

    .line 105
    :pswitch_1
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->FAILED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    goto :goto_0

    .line 107
    :pswitch_2
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->DELETED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    goto :goto_0

    .line 109
    :pswitch_3
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->CANCELED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    goto :goto_0

    .line 111
    :pswitch_4
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->PENDING:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    goto :goto_0

    .line 116
    :pswitch_5
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->PAUSED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    goto :goto_0

    .line 118
    :pswitch_6
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    goto :goto_0

    .line 120
    :pswitch_7
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final i()Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->APP:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lfyx;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-boolean v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->h:Z

    return v0
.end method
