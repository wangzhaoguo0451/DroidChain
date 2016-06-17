.class public final Ldmi;
.super Lhic;
.source "DownloadButtonPresenter.java"


# instance fields
.field a:Lcom/wandoujia/ripple_framework/model/Model;

.field b:Ljava/lang/String;

.field c:Landroid/os/Handler;

.field d:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field e:Lcom/wandoujia/ripple_framework/download/DownloadManager;

.field private j:Z

.field private k:Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

.field private final l:Lhfq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lhic;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldmi;->c:Landroid/os/Handler;

    .line 54
    new-instance v0, Ldmj;

    invoke-direct {v0, p0}, Ldmj;-><init>(Ldmi;)V

    iput-object v0, p0, Ldmi;->l:Lhfq;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-super {p0}, Lhic;->a()V

    .line 203
    iget-boolean v0, p0, Ldmi;->j:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Ldmi;->k:Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    iget-object v1, p0, Ldmi;->b:Ljava/lang/String;

    iget-object v2, p0, Ldmi;->l:Lhfq;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->b(Ljava/lang/String;Lhfq;)V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldmi;->j:Z

    .line 207
    :cond_0
    iput-object v3, p0, Ldmi;->b:Ljava/lang/String;

    .line 208
    iput-object v3, p0, Ldmi;->d:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 209
    iput-object v3, p0, Ldmi;->a:Lcom/wandoujia/ripple_framework/model/Model;

    .line 210
    return-void
.end method

.method final a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 9
    .parameter

    .prologue
    const v5, 0x7f0a0148

    const v4, 0x7f020343

    const v2, 0x7f020342

    const/4 v1, 0x0

    .line 229
    if-nez p1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const v6, 0x7f0a0153

    .line 234
    const v3, 0x7f020340

    .line 235
    const/4 v0, 0x1

    .line 236
    iget-object v7, p0, Ldmi;->d:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    sget-object v8, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INSTALL_START:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    if-ne v7, v8, :cond_5

    .line 237
    const v0, 0x7f0e0395

    move v2, v4

    move v3, v6

    move v4, v0

    .line 289
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ldmi;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 290
    if-eqz v3, :cond_3

    .line 291
    invoke-virtual {p0}, Ldmi;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    :cond_3
    if-eqz v2, :cond_4

    .line 294
    invoke-virtual {p0}, Ldmi;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 296
    :cond_4
    if-eqz v4, :cond_0

    .line 297
    invoke-virtual {p0}, Ldmi;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 241
    :cond_5
    sget-object v7, Ldmm;->b:[I

    iget-object v8, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v8}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    move v2, v1

    move v3, v1

    move v4, v1

    move v1, v0

    .line 282
    :goto_2
    sget-object v0, Lham;->f:Lham;

    const-string v5, "install"

    invoke-virtual {v0, v5}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfr;

    iget-object v0, v0, Lhfr;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v5, p0, Ldmi;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    const v4, 0x7f0e05bf

    goto :goto_1

    .line 247
    :pswitch_0
    const v1, 0x7f0e04ce

    move v3, v5

    move v4, v1

    move v1, v0

    .line 248
    goto :goto_2

    .line 253
    :pswitch_1
    const v1, 0x7f0e00d4

    move v2, v3

    move v4, v1

    move v3, v6

    move v1, v0

    .line 254
    goto :goto_2

    .line 256
    :pswitch_2
    const v1, 0x7f0e0516

    move v2, v3

    move v4, v1

    move v3, v6

    move v1, v0

    .line 257
    goto :goto_2

    .line 259
    :pswitch_3
    invoke-static {p1}, Ld;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {p1}, Ld;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 261
    const v1, 0x7f0e0385

    move v2, v3

    move v4, v1

    move v3, v6

    move v1, v0

    goto :goto_2

    .line 262
    :cond_6
    iget-object v7, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v8, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->VIDEO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v7, v8, :cond_7

    .line 263
    const v1, 0x7f0e04d2

    move v2, v3

    move v4, v1

    move v3, v6

    move v1, v0

    goto :goto_2

    .line 265
    :cond_7
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    iget-object v3, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-static {v3}, Lcom/wandoujia/appmanager/AppManager;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_8

    .line 266
    const v0, 0x7f0e0394

    move v2, v4

    move v3, v6

    move v4, v0

    .line 268
    goto :goto_2

    .line 272
    :cond_8
    const v1, 0x7f0e047a

    move v3, v5

    move v4, v1

    move v1, v0

    .line 275
    goto :goto_2

    .line 241
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

.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 4
    .parameter

    .prologue
    .line 85
    const v0, 0x7f0c001b

    invoke-virtual {p1, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 86
    iget-object v1, p0, Ldmi;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldmi;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {p0}, Ldmi;->a()V

    .line 90
    :cond_0
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    iput-object v1, p0, Ldmi;->b:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Ldmi;->a:Lcom/wandoujia/ripple_framework/model/Model;

    .line 92
    sget-object v1, Lham;->f:Lham;

    const-string v2, "app_task"

    invoke-virtual {v1, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    iput-object v1, p0, Ldmi;->k:Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    .line 94
    sget-object v1, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iput-object v1, p0, Ldmi;->e:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    .line 96
    iget-object v1, p0, Ldmi;->k:Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    iget-object v2, p0, Ldmi;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->d:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    :goto_0
    iput-object v1, p0, Ldmi;->d:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 98
    invoke-virtual {p0, v0}, Ldmi;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 99
    invoke-virtual {p0}, Ldmi;->e()Landroid/view/View;

    move-result-object v1

    new-instance v2, Ldml;

    invoke-direct {v2, p0, p1, v0}, Ldml;-><init>(Ldmi;Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Ldmi;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldmi;->j:Z

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Ldmi;->k:Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    iget-object v1, p0, Ldmi;->b:Ljava/lang/String;

    iget-object v2, p0, Ldmi;->l:Lhfq;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Ljava/lang/String;Lhfq;)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldmi;->j:Z

    .line 198
    :cond_1
    return-void

    .line 96
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
