.class public Lcom/wandoujia/ripple_framework/view/LoadingView;
.super Landroid/widget/ImageView;
.source "LoadingView.java"


# instance fields
.field public a:Lhmj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/LoadingView;->b()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/LoadingView;->b()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/LoadingView;->b()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/LoadingView;->b()V

    .line 40
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lhmj;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lhmj;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/LoadingView;->a:Lhmj;

    .line 44
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/LoadingView;->a:Lhmj;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/LoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/ripple_framework/R$color;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v0, v0, Lhmj;->a:Lhmo;

    iput v1, v0, Lhmo;->u:I

    .line 45
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/LoadingView;->a:Lhmj;

    iget-object v0, v0, Lhmj;->a:Lhmo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhmo;->a(Z)V

    .line 46
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/LoadingView;->a:Lhmj;

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/LoadingView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/LoadingView;->a:Lhmj;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lhmj;->setAlpha(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/LoadingView;->a:Lhmj;

    invoke-virtual {v0}, Lhmj;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/LoadingView;->a:Lhmj;

    invoke-virtual {v0}, Lhmj;->start()V

    .line 64
    :cond_0
    return-void
.end method
