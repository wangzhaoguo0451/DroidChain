.class public Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;
.super Landroid/widget/FrameLayout;
.source "BaseCardSelectableAdapter.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 317
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method static synthetic a(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->b:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->setNeedInterceptTouchEvent(Z)V

    return-void
.end method

.method static synthetic b(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;)V
    .locals 2
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setNeedInterceptTouchEvent(Z)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->c:Z

    .line 370
    return-void
.end method


# virtual methods
.method public getCoverView()Landroid/view/View;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->b:Landroid/view/View;

    return-object v0
.end method

.method public getOriginView()Landroid/view/View;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->a:Landroid/view/View;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->c:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 358
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 364
    iget-object v1, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
