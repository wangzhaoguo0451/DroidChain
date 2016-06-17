.class public Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;
.super Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;
.source "PlayExpLocalWebPage.java"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/animation/Animation;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->a()V

    .line 42
    const v0, 0x7f0c0401

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;->a:Landroid/view/View;

    .line 43
    const v0, 0x7f0c0402

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;->c:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;->a:Landroid/view/View;

    new-instance v1, Lgno;

    invoke-direct {v1}, Lgno;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;->b:Landroid/view/animation/Animation;

    .line 53
    return-void
.end method

.method protected getLayoutResourceId()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f0301ec

    return v0
.end method

.method public setOnDirectPlayButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method
