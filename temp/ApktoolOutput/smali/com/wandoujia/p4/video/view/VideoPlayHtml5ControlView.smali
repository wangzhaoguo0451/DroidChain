.class public Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;
.super Landroid/widget/RelativeLayout;
.source "VideoPlayHtml5ControlView.java"


# instance fields
.field public a:Z

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/Spinner;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/view/animation/Animation;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lgfa;

    invoke-direct {v0, p0}, Lgfa;-><init>(Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->h:Ljava/lang/Runnable;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lgfa;

    invoke-direct {v0, p0}, Lgfa;-><init>(Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->h:Ljava/lang/Runnable;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Lgfa;

    invoke-direct {v0, p0}, Lgfa;-><init>(Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->h:Ljava/lang/Runnable;

    .line 67
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;
    .locals 3
    .parameter

    .prologue
    .line 51
    const v0, 0x7f03004c

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    .line 53
    invoke-virtual {v0}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04002a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040029

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->g:Landroid/view/animation/Animation;

    const v1, 0x7f0c01ab

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->b:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c01ac

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->c:Landroid/widget/ImageView;

    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->d:Landroid/widget/Spinner;

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->e:Landroid/widget/TextView;

    .line 54
    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 112
    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 114
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 115
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->a:Z

    .line 117
    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 122
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 123
    iput-boolean v2, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->a:Z

    goto :goto_0
.end method

.method public setBackButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method public setPlayModel(Lcom/wandoujia/p4/video2/model/VideoPlayModel;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    return-void
.end method

.method public setSpinnerAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 84
    return-void
.end method

.method public setSpinnerEnable(Z)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 88
    return-void
.end method

.method public setSpinnerOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 93
    return-void
.end method

.method public setSpinnerSelectedItem(I)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 97
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method public setTopbarOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    return-void
.end method
