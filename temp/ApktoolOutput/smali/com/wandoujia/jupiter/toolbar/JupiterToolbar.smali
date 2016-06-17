.class public Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;
.super Landroid/widget/FrameLayout;
.source "JupiterToolbar.java"


# instance fields
.field protected a:I

.field private b:Ldvf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 47
    sget-object v0, Lcom/wandoujia/phoenix2/R$styleable;->ToolbarStyle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->a:I

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 5

    .prologue
    .line 59
    const v0, 0x7f030219

    invoke-static {p0, v0}, Lj;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 60
    iget v0, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->a:I

    if-lez v0, :cond_1

    .line 61
    const v0, 0x7f0c0079

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 63
    :try_start_0
    iget v2, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->a:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 64
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0c050e

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 65
    if-eqz v2, :cond_0

    .line 66
    const/16 v3, 0xb

    invoke-static {v3}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    new-instance v3, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 81
    :cond_0
    :goto_0
    new-instance v2, Ldvf;

    invoke-direct {v2, v1}, Ldvf;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->b:Ldvf;

    .line 82
    iget-object v2, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->b:Ldvf;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener$486aeec7(Lrw;)V

    .line 84
    :cond_1
    :goto_1
    return-object v1

    .line 70
    :cond_2
    new-instance v3, Lduy;

    invoke-direct {v3, p0}, Lduy;-><init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getListener()Ldvf;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->b:Ldvf;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 55
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->addView(Landroid/view/View;)V

    .line 56
    return-void
.end method
