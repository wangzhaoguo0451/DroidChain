.class public Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;
.super Landroid/widget/LinearLayout;
.source "VideoDetailOperationBarView.java"


# instance fields
.field private a:Lcom/wandoujia/p4/button/views/StatefulButton;

.field private b:Lcom/wandoujia/p4/video/button/VideoDetailPlayStatefulButton;

.field private c:Lfar;

.field private d:Lfar;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;)Lcom/wandoujia/p4/button/views/StatefulButton;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->a:Lcom/wandoujia/p4/button/views/StatefulButton;

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;
    .locals 1
    .parameter

    .prologue
    .line 52
    const v0, 0x7f0301e7

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;)Lcom/wandoujia/p4/video/button/VideoDetailPlayStatefulButton;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->b:Lcom/wandoujia/p4/video/button/VideoDetailPlayStatefulButton;

    return-object v0
.end method


# virtual methods
.method public getDownloadButton()Lfar;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->c:Lfar;

    return-object v0
.end method

.method public getPlayButton()Lfar;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->d:Lfar;

    return-object v0
.end method

.method public getSettingTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSourceSettingLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->g:Landroid/view/View;

    return-object v0
.end method

.method public getSourceTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 59
    const v0, 0x7f0c0451

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/button/views/StatefulButton;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->a:Lcom/wandoujia/p4/button/views/StatefulButton;

    .line 60
    new-instance v0, Lggo;

    invoke-direct {v0, p0}, Lggo;-><init>(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->c:Lfar;

    .line 71
    const v0, 0x7f0c0452

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/button/VideoDetailPlayStatefulButton;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->b:Lcom/wandoujia/p4/video/button/VideoDetailPlayStatefulButton;

    .line 72
    new-instance v0, Lggp;

    invoke-direct {v0, p0}, Lggp;-><init>(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->d:Lfar;

    .line 83
    const v0, 0x7f0c0450

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->e:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0c018c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->f:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0c044f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->g:Landroid/view/View;

    .line 86
    return-void
.end method
