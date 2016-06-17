.class public final Ldgs;
.super Lhnv;
.source "AppIgnoreUpgradeOpenSpinnerAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lhnv;-><init>(Landroid/view/View;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldgs;->a:Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldgs;->e:Z

    .line 35
    return-void
.end method

.method static synthetic a(Ldgs;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Ldgs;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ldgs;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Ldgs;->a(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ldgs;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    const v0, 0x7f030135

    invoke-static {p3, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 65
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldgs;->e:Z

    .line 66
    return-object v0

    .line 61
    :cond_0
    const v0, 0x7f030134

    invoke-static {p3, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    .line 62
    const v0, 0x7f0c02ff

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    if-ltz p1, :cond_1

    iget-object v1, p0, Ldgs;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Ldgs;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Ldgs;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 71
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NON_DROPDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    const v0, 0x7f030133

    invoke-static {p3, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    .line 73
    const-string v0, "NON_DROPDOWN"

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    :cond_1
    iget-boolean v0, p0, Ldgs;->e:Z

    if-eqz v0, :cond_2

    .line 76
    iput-boolean v5, p0, Ldgs;->e:Z

    .line 77
    packed-switch p1, :pswitch_data_0

    .line 110
    :cond_2
    :goto_0
    return-object p2

    .line 79
    :pswitch_0
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ldgs;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->b(Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v2, p0, Ldgs;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Ldgs;->a(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_1
    invoke-static {}, Lhpa;->a()Lhpa;

    move-result-object v0

    invoke-virtual {v0}, Lhpa;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    new-instance v0, Lhoq;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lhoq;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e05b8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Ldgs;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->a(Ljava/lang/CharSequence;)Lhoq;

    .line 89
    const v1, 0x7f0e05b7

    new-instance v2, Ldgt;

    invoke-direct {v2, p0}, Ldgt;-><init>(Ldgs;)V

    invoke-virtual {v0, v1, v2}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 98
    const v1, 0x7f0e0162

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 99
    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    goto :goto_0

    .line 101
    :cond_3
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app_task"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    iget-object v1, p0, Ldgs;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->UNINSTALL:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v2, p0, Ldgs;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Ldgs;->a(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :pswitch_2
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, p0, Ldgs;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/wandoujia/appmanager/AppManager;->c(Ljava/lang/String;Z)V

    .line 109
    sget-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->RESUME_UPGRADE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v2, p0, Ldgs;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Ldgs;->a(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
