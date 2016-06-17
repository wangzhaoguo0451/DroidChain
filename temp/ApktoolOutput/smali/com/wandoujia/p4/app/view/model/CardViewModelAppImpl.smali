.class public final Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;
.super Ljava/lang/Object;
.source "CardViewModelAppImpl.java"

# interfaces
.implements Lcom/wandoujia/p4/card/models/CardViewModel;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/wandoujia/mvc/Action;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Landroid/view/View;)Lcom/wandoujia/mvc/Action;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->f:Lcom/wandoujia/mvc/Action;

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    sget-object v1, Lexl;->b:[I

    invoke-virtual {v0}, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iput-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->f:Lcom/wandoujia/mvc/Action;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->f:Lcom/wandoujia/mvc/Action;

    return-object v0

    .line 106
    :pswitch_1
    invoke-static {}, Ld;->w()Ljava/lang/String;

    new-instance v0, Leva;

    invoke-direct {v0}, Leva;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 60
    iget-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->b:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 61
    sget-object v0, Lexl;->a:[I

    invoke-virtual {v4}, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->SEARCH:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    if-nez v1, :cond_0

    invoke-interface {v4}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteLikesRate()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteLikesRate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e013f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v1, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->RANKING:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    if-nez v1, :cond_3

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0283

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v4}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteWeeklyDownloadCountStr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteSize()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getExtensionPacks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getExtensionPacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e025a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->b:Ljava/lang/CharSequence;

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->b:Ljava/lang/CharSequence;

    return-object v0

    .line 61
    :pswitch_0
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0308

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {v4}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteSize()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0282

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v4}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteDownloadCountStr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/view/View;)Lcom/wandoujia/mvc/Action;
    .locals 1
    .parameter

    .prologue
    .line 113
    new-instance v0, Lexp;

    invoke-direct {v0}, Lexp;-><init>()V

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->g:Ljava/util/List;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->g:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->c:Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lfaz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ld;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic f()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    iget-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-interface {v2}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteEditorComment()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->SEARCH:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-interface {v2}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getTagline()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-interface {v2}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteDescription()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->e:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl;->a:Ljava/lang/String;

    return-object v0
.end method
