.class final Ldny;
.super Ljava/lang/Object;
.source "GuessTriggerPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/view/StatefulButton;

.field private synthetic b:Lcom/wandoujia/ripple_framework/model/Model;

.field private synthetic c:Ldnx;


# direct methods
.method constructor <init>(Ldnx;Lcom/wandoujia/ripple_framework/view/StatefulButton;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Ldny;->c:Ldnx;

    iput-object p2, p0, Ldny;->a:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    iput-object p3, p0, Ldny;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 46
    iget-object v0, p0, Ldny;->c:Ldnx;

    invoke-virtual {v0}, Lerg;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Ldny;->a:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0e0385

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v2, p0, Ldny;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v5

    iget-object v5, v5, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v5

    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->version_code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    if-eqz v5, :cond_3

    iget-object v2, v5, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isSucceed()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v5, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v2, v2, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v2, v2, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v5, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->m:I

    if-ne v2, v0, :cond_3

    move v0, v3

    :goto_2
    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Ldny;->c:Ldnx;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, -0x1

    .line 63
    iget-object v2, p0, Ldny;->c:Ldnx;

    iget-object v2, v2, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v2, v2, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v2, :cond_5

    .line 64
    iget-object v0, p0, Ldny;->c:Ldnx;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    iget-boolean v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->e:Z

    if-eqz v0, :cond_4

    .line 65
    iget-object v0, p0, Ldny;->c:Ldnx;

    invoke-virtual {v0}, Lhic;->g()Lhas;

    move-result-object v0

    iget-object v0, v0, Lhas;->a:Leqw;

    iget-object v2, p0, Ldny;->c:Ldnx;

    iget-object v2, v2, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0, v2}, Ld;->a(Leqw;Lcom/wandoujia/ripple_framework/model/Model;)I

    move-result v2

    .line 66
    iget-object v0, p0, Ldny;->c:Ldnx;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    .line 76
    :goto_3
    if-ltz v2, :cond_0

    iget-object v5, p0, Ldny;->c:Ldnx;

    invoke-virtual {v5}, Lhic;->g()Lhas;

    move-result-object v5

    iget-object v5, v5, Lhas;->a:Leqw;

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 77
    iget-object v5, p0, Ldny;->c:Ldnx;

    invoke-virtual {v5}, Ldnx;->e()Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lj;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 78
    if-eqz v5, :cond_2

    .line 79
    const v6, 0x7f0c0011

    sget-object v7, Lcom/wandoujia/jupiter/anim/ChangeAnimType;->FLIP_LEFT:Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 81
    :cond_2
    iget-object v6, v0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    .line 82
    const/4 v7, 0x2

    iput v7, v6, Lhht;->a:I

    .line 83
    iget-object v7, p0, Ldny;->c:Ldnx;

    iget-object v7, v7, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v7}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v7

    iget-object v7, v7, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iput-object v7, v6, Lhht;->c:Ljava/lang/String;

    .line 84
    iget-object v7, p0, Ldny;->c:Ldnx;

    iget-object v7, v7, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v8, Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v9, v7, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    invoke-direct {v8, v9}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e035c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, v7, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v7, v7, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    aput-object v7, v3, v4

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SECTION_GUESS:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v8, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->description(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    new-instance v3, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v8}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    iput-object v3, v6, Lhht;->b:Lcom/wandoujia/ripple_framework/model/Model;

    .line 85
    iget-object v3, v6, Lhht;->b:Lcom/wandoujia/ripple_framework/model/Model;

    const v4, 0x7f0c0020

    invoke-virtual {v3, v4, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 86
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, v6, Lhht;->d:I

    .line 87
    iget-object v3, p0, Ldny;->c:Ldnx;

    invoke-virtual {v3}, Lhic;->g()Lhas;

    move-result-object v3

    iget-object v3, v3, Lhas;->a:Leqw;

    invoke-virtual {v3, v2, v0}, Leqw;->a(ILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Ldny;->a:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    iget-object v2, p0, Ldny;->c:Ldnx;

    iget-object v2, v2, Ldnx;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->b(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Ldny;->c:Ldnx;

    iput-object v1, v0, Ldnx;->a:Landroid/view/View$OnClickListener;

    goto/16 :goto_0

    :cond_3
    move v0, v4

    .line 53
    goto/16 :goto_2

    .line 68
    :cond_4
    iget-object v0, p0, Ldny;->c:Ldnx;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    .line 69
    iget-object v2, p0, Ldny;->c:Ldnx;

    invoke-virtual {v2}, Lhic;->g()Lhas;

    move-result-object v2

    iget-object v2, v2, Lhas;->a:Leqw;

    invoke-static {v2, v0}, Ld;->a(Leqw;Lcom/wandoujia/ripple_framework/model/Model;)I

    move-result v2

    goto/16 :goto_3

    .line 72
    :cond_5
    iget-object v2, p0, Ldny;->c:Ldnx;

    iget-object v2, v2, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v2, v2, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 73
    iget-object v0, p0, Ldny;->c:Ldnx;

    invoke-virtual {v0}, Lhic;->g()Lhas;

    move-result-object v0

    iget-object v0, v0, Lhas;->a:Leqw;

    iget-object v2, p0, Ldny;->c:Ldnx;

    iget-object v2, v2, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0, v2}, Ld;->a(Leqw;Lcom/wandoujia/ripple_framework/model/Model;)I

    move-result v2

    .line 74
    iget-object v0, p0, Ldny;->c:Ldnx;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    goto/16 :goto_3

    :cond_6
    move v2, v0

    move-object v0, v1

    goto/16 :goto_3

    :cond_7
    move v0, v4

    goto/16 :goto_1
.end method
