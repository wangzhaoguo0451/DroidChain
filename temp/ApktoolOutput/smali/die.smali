.class public final Ldie;
.super Ljava/lang/Object;
.source "LibFragment.java"

# interfaces
.implements Lhw;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Ldie;->a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v0, p0, Ldie;->a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    iget-object v0, v0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->b:Landroid/view/View;

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 82
    iget-object v0, p0, Ldie;->a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    iget-object v0, v0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :goto_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 87
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v1, Lhaq;

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Ldie;->a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    iget-object v0, v0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    return-void
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 96
    return-void
.end method
