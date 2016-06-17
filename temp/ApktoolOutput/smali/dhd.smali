.class public final Ldhd;
.super Ljava/lang/Object;
.source "AppInstalledFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Ldhd;->a:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 451
    invoke-static {}, Lhpa;->a()Lhpa;

    move-result-object v0

    invoke-virtual {v0}, Lhpa;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    new-instance v2, Lhoq;

    iget-object v0, p0, Ldhd;->a:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->d(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lhoq;-><init>(Landroid/content/Context;)V

    .line 454
    iget-object v0, p0, Ldhd;->a:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->f(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e05ba

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, p0, Ldhd;->a:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->e(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldhd;->a:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->e(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhoq;->a(Ljava/lang/CharSequence;)Lhoq;

    .line 457
    const v0, 0x7f0e05b7

    new-instance v1, Ldhe;

    invoke-direct {v1}, Ldhe;-><init>()V

    invoke-virtual {v2, v0, v1}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 467
    const v0, 0x7f0e0162

    invoke-virtual {v2, v0, v6}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 468
    invoke-virtual {v2}, Lhoq;->b()Lhoj;

    .line 475
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 454
    goto :goto_0

    .line 470
    :cond_1
    invoke-static {}, Lhrx;->a()Lhrx;

    move-result-object v0

    new-instance v2, Lhaq;

    sget-object v3, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->UNINSTALL_APP:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-direct {v2, v3, v6}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lhrx;->d(Ljava/lang/Object;)V

    .line 472
    invoke-static {}, Lhrx;->a()Lhrx;

    move-result-object v0

    new-instance v2, Lhaq;

    sget-object v3, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lhrx;->d(Ljava/lang/Object;)V

    goto :goto_1
.end method
