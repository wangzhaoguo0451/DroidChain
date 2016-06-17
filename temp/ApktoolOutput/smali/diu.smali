.class public final Ldiu;
.super Lhic;
.source "AppInstalledCardChoosePresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lhic;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lhic;->a()V

    .line 93
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 27
    sget-object v0, Lham;->f:Lham;

    const-string v2, "event_bus"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Ldiu;->f()Leri;

    move-result-object v0

    const v2, 0x7f0c0345

    invoke-virtual {v0, v2}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v2, v0, Leri;->a:Landroid/view/View;

    .line 31
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {p1, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {p1, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 34
    :goto_0
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :goto_1
    invoke-virtual {p0}, Ldiu;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldiv;

    invoke-direct {v1, p0, p1, v2}, Ldiv;-><init>(Ldiu;Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Ldiu;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldiw;

    invoke-direct {v1, v2, p1}, Ldiw;-><init>(Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 88
    return-void

    .line 37
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final onEventMainThread(Lhaq;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const v2, 0x7f0c0345

    .line 98
    iget-object v0, p1, Lhaq;->a:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lhaq;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lhaq;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p0}, Ldiu;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p1, Lhaq;->a:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->UNINSTALL_ALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lhaq;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p1, Lhaq;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 103
    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p0}, Ldiu;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->b(I)Leri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leri;->f(I)Leri;

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p0}, Ldiu;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    goto :goto_0
.end method
