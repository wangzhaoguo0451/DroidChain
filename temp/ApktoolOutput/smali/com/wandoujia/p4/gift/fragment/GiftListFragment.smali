.class public Lcom/wandoujia/p4/gift/fragment/GiftListFragment;
.super Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;
.source "GiftListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment",
        "<",
        "Lfvq;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)Lcom/wandoujia/p4/views/ContentListView;
    .locals 4
    .parameter

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a(Landroid/view/View;)Lcom/wandoujia/p4/views/ContentListView;

    move-result-object v1

    .line 113
    const v0, 0x7f03016e

    invoke-static {v1, v0}, Lj;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    .line 114
    const v0, 0x7f0c0078

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0e0350

    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v0, Lfuv;

    invoke-direct {v0, p0}, Lfuv;-><init>(Lcom/wandoujia/p4/gift/fragment/GiftListFragment;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/views/ContentListView;->addHeaderView(Landroid/view/View;)V

    .line 127
    return-object v1
.end method

.method protected final a()Lfsi;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfsi",
            "<",
            "Lfvq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lfsw;

    new-instance v1, Lfvc;

    iget-object v2, p0, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->e:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    invoke-direct {v1, v2}, Lfvc;-><init>(Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;)V

    new-instance v2, Lfvs;

    sget-object v3, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_LIST:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    invoke-direct {v2, v3}, Lfvs;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V

    invoke-direct {v0, v1, v2}, Lfsw;-><init>(Lfsi;Lfza;)V

    return-object v0
.end method

.method protected final a(IILfss;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lfss",
            "<",
            "Lfvq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a(IILfss;)V

    .line 49
    :cond_0
    return-void
.end method

.method protected final b()Leun;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leun",
            "<",
            "Lfvq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lfuu;

    invoke-direct {v0}, Lfuu;-><init>()V

    return-object v0
.end method

.method protected final c()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method protected final n()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    const-string v0, "contentType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->e:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    .line 87
    const-string v0, "giftType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->f:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->e:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->f:Ljava/lang/String;

    const-string v1, "game"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->GAME:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->e:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    .line 92
    :cond_0
    return-void
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0479

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->e:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->e:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    sget-object v1, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->APP:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    if-ne v0, v1, :cond_1

    .line 101
    :cond_0
    const-string v0, "wdj://apps/gifts"

    .line 105
    :goto_0
    sget-object v1, Lham;->f:Lham;

    iget-object v1, v1, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/content/Context;)V

    .line 108
    return-void

    .line 103
    :cond_1
    const-string v0, "wdj://games/gifts"

    goto :goto_0
.end method
