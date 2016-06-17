.class public final Ldwy;
.super Lhhl;
.source "OperationGuideCardView.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/view/OperationGuideCardView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/view/OperationGuideCardView;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Ldwy;->a:Lcom/wandoujia/jupiter/view/OperationGuideCardView;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 82
    iget-object v0, p0, Ldwy;->a:Lcom/wandoujia/jupiter/view/OperationGuideCardView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/view/OperationGuideCardView;->a(Lcom/wandoujia/jupiter/view/OperationGuideCardView;)Ldwz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Ldwy;->a:Lcom/wandoujia/jupiter/view/OperationGuideCardView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/view/OperationGuideCardView;->a(Lcom/wandoujia/jupiter/view/OperationGuideCardView;)Ldwz;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->u()V

    invoke-static {}, Leha;->a()Leha;

    const-string v1, "gl_guide_action"

    const-string v2, "apk"

    invoke-static {v1, v2}, Ld;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "native"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    const-string v1, "com.wandoujia.game_launcher"

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lg;->d(Z)V

    invoke-static {}, Ledn;->a()V

    :goto_0
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->ME_APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v5, "generate_gl_shortcut"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;

    .line 85
    :cond_0
    :goto_1
    return v7

    .line 83
    :cond_1
    invoke-static {v7}, Lebw;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Ldwz;->a:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->c(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)Lhjo;

    move-result-object v0

    invoke-static {}, Ld;->q()Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhjo;->a(Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-static {}, Ldxo;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lhby;

    invoke-direct {v1}, Lhby;-><init>()V

    const-string v2, "com.wandoujia.game_launcher"

    iput-object v2, v1, Lhby;->g:Ljava/lang/String;

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhby;->d:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v2, v1, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e03ac

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhby;->h:Ljava/lang/String;

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhby;->i:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/download2/DownloadRequestParam$Type;->APP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v2, v1, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    const-string v2, "com.wandoujia.game_launcher"

    iput-object v2, v1, Lhby;->j:Ljava/lang/String;

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->e()I

    move-result v2

    iput v2, v1, Lhby;->k:I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v0, v1, Lhby;->e:Ljava/lang/String;

    :cond_3
    sget-object v0, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v1}, Lhby;->a()Lhbx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->ME_APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v5, "install_apk_gl"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;

    goto :goto_1
.end method
