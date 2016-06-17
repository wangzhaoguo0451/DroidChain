.class public final Ldmy;
.super Lhic;
.source "DownloadSubtitlePresenter.java"


# instance fields
.field private a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lhic;-><init>()V

    .line 66
    return-void
.end method

.method private a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p0}, Ldmy;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 82
    :cond_0
    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p0}, Ldmy;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-super {p0}, Lhic;->a()V

    .line 34
    invoke-direct {p0, v0, v0}, Ldmy;->a(II)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Ldmy;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 36
    return-void
.end method

.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 27
    const v0, 0x7f0c001b

    invoke-virtual {p1, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iput-object v0, p0, Ldmy;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 28
    iget-object v4, p0, Ldmy;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    const v0, 0x7f0a00c5

    sget-object v1, Ldmz;->a:[I

    iget-object v3, v4, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v3}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    move v1, v2

    move v3, v2

    :goto_0
    sget-object v0, Lham;->f:Lham;

    const-string v5, "install"

    invoke-virtual {v0, v5}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfr;

    iget-object v0, v0, Lhfr;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v5, v4, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v3, v4, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ldmy;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lham;->f:Lham;

    const-string v1, "install"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfr;

    iget-object v0, v0, Lhfr;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v0, v0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->c:Lcom/wandoujia/gamepacket/UnZipManager;

    invoke-virtual {v0, v3}, Lcom/wandoujia/gamepacket/UnZipManager;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Ldmy;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e05c2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    :cond_1
    :goto_1
    return-void

    .line 28
    :pswitch_0
    invoke-static {v4}, Ld;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v4}, Ld;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0e0394

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_2
    const v1, 0x7f0e0659

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v1, v4, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->VIDEO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v1, v3, :cond_4

    iget-object v1, v4, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->o:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v4, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/wandoujia/p4/video/model/VideoType;->valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/VideoType;->getNameResId()I

    move-result v1

    move v3, v1

    move v1, v0

    goto/16 :goto_0

    :cond_4
    const v1, 0x7f0e0574

    move v3, v1

    move v1, v0

    goto/16 :goto_0

    :pswitch_1
    const v1, 0x7f0e0572

    const v0, 0x7f0a0185

    move v3, v1

    move v1, v0

    goto/16 :goto_0

    :pswitch_2
    const v1, 0x7f0e0573

    move v3, v1

    move v1, v0

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, v1, v3}, Ldmy;->a(II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
