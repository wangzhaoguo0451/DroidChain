.class public Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForDetail;
.super Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;
.source "JupiterToolbarForDetail.java"


# instance fields
.field private b:Ldvf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected final a()Landroid/view/View;
    .locals 5

    .prologue
    .line 41
    const v0, 0x7f03021a

    invoke-static {p0, v0}, Lj;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 42
    iget v0, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForDetail;->a:I

    if-lez v0, :cond_1

    .line 43
    const v0, 0x7f0c007b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    const v0, 0x7f0c0481

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 45
    iget v2, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForDetail;->a:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 46
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0c050e

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    new-instance v3, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForDetail;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;-><init>(Landroid/content/Context;)V

    .line 49
    const/16 v4, 0xb

    invoke-static {v4}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 53
    :cond_0
    new-instance v2, Ldvf;

    invoke-direct {v2, v1}, Ldvf;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForDetail;->b:Ldvf;

    .line 54
    iget-object v2, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForDetail;->b:Ldvf;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener$486aeec7(Lrw;)V

    .line 55
    const v2, 0x7f02027c

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 56
    new-instance v2, Lduz;

    invoke-direct {v2, p0}, Lduz;-><init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForDetail;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_1
    return-object v1
.end method

.method public getListener()Ldvf;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForDetail;->b:Ldvf;

    return-object v0
.end method
