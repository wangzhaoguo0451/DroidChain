.class public final Ldgp;
.super Lhnv;
.source "AppFavoriteSpinnerAdapter.java"


# instance fields
.field private a:Lcom/wandoujia/ripple_framework/model/Model;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private e:Ldgq;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lhnv;-><init>(Landroid/view/View;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldgp;->b:Ljava/util/List;

    .line 34
    new-instance v0, Ldgq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldgq;-><init>(Ldgp;B)V

    iput-object v0, p0, Ldgp;->e:Ldgq;

    .line 38
    iput-object p2, p0, Ldgp;->a:Lcom/wandoujia/ripple_framework/model/Model;

    .line 39
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    move-result-object v0

    iget-object v1, p0, Ldgp;->e:Ldgq;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a(Lgcj;)V

    .line 40
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Ldgp;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ldgp;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Ldgp;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldgp;->d:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Ldgp;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0}, Ldux;->b(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080022

    :goto_0
    iget-object v1, p0, Ldgp;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldgp;->b:Ljava/util/List;

    .line 45
    iget-object v0, p0, Ldgp;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 44
    :cond_0
    const v0, 0x7f080002

    goto :goto_0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    const v0, 0x7f030135

    invoke-static {p3, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 67
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldgp;->c:Z

    .line 68
    return-object v0

    .line 63
    :cond_0
    const v0, 0x7f030134

    invoke-static {p3, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 64
    const v0, 0x7f0c02ff

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    invoke-direct {p0, p1}, Ldgp;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ldgp;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 73
    if-eqz p2, :cond_0

    const-string v1, "NON_DROPDOWN"

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    :cond_0
    const v1, 0x7f030133

    invoke-static {p3, v1}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    .line 75
    const-string v1, "NON_DROPDOWN"

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    :cond_1
    iget-boolean v1, p0, Ldgp;->c:Z

    if-eqz v1, :cond_2

    .line 79
    iput-boolean v0, p0, Ldgp;->c:Z

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 95
    :cond_2
    :goto_0
    return-object p2

    .line 82
    :pswitch_0
    new-instance v1, Lded;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ldgp;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v1, v2, v3}, Lded;-><init>(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 84
    iget-object v2, p0, Ldgp;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v2}, Ldux;->b(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->d(Landroid/content/Context;Lgcd;)V

    move v4, v0

    .line 93
    :goto_1
    iget-object v1, p0, Ldgp;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    iget-object v1, p0, Ldgp;->d:Landroid/view/View;

    iget-object v0, p0, Ldgp;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v5, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->ME_APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->ICON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->MARK_FAVORITE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    :goto_2
    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;)V

    goto :goto_0

    .line 89
    :cond_3
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->c(Landroid/content/Context;Lgcd;)V

    .line 91
    const/4 v1, 0x1

    move v4, v1

    goto :goto_1

    .line 94
    :cond_4
    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->UNMARK_FAVORITE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    goto :goto_2

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
