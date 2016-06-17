.class public final Ldhc;
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
    .line 433
    iput-object p1, p0, Ldhc;->a:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 436
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Ldhc;->a:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;

    const v2, 0x7f0e03b5

    invoke-virtual {v1, v2}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v1, Lhaq;

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->UNINSTALL_ALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 445
    :goto_0
    return-void

    .line 441
    :cond_0
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v1, Lhaq;

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->UNINSTALL_ALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method
