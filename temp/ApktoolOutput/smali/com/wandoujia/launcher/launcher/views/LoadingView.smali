.class public Lcom/wandoujia/launcher/launcher/views/LoadingView;
.super Landroid/widget/RelativeLayout;
.source "LoadingView.java"


# instance fields
.field private a:Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/animation/Animation;

.field private e:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/launcher/launcher/views/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/launcher/launcher/views/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    sget-object v0, Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;->ROTATE:Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->a:Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

    .line 48
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->e:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->e:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->e:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->e:Landroid/view/animation/Animation;

    new-instance v1, Lect;

    invoke-direct {v1}, Lect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f4ccccd

    const/high16 v3, 0x3f80

    const v4, 0x3f4ccccd

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->d:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->d:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->d:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->d:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->d:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 49
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lecu;->a:[I

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->a:Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 101
    invoke-direct {p0}, Lcom/wandoujia/launcher/launcher/views/LoadingView;->a()V

    .line 102
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 107
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 108
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 94
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->edge:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->b:Landroid/view/View;

    .line 95
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->message:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->c:Landroid/widget/TextView;

    .line 96
    return-void
.end method

.method public setAnimType(Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->a:Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

    .line 77
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 78
    invoke-direct {p0}, Lcom/wandoujia/launcher/launcher/views/LoadingView;->a()V

    .line 79
    return-void
.end method

.method public setLoadingMessage(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/LoadingView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method
