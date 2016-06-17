.class public Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;
.super Landroid/widget/RelativeLayout;
.source "PlayExpWebPage.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/animation/Animation;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->g:Z

    .line 40
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->d()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->g:Z

    .line 45
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->d()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->g:Z

    .line 50
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->d()V

    .line 51
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->b:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->g:Z

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->getLayoutResourceId()I

    move-result v1

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->a()V

    .line 56
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 63
    const v0, 0x7f0c023e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->findViewById(I)Landroid/view/View;

    .line 64
    const v0, 0x7f0c00fe

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/base/view/NonLeakingWebView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->a:Landroid/webkit/WebView;

    .line 65
    const v0, 0x7f0c0242

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->b:Landroid/view/View;

    .line 66
    const v0, 0x7f0c023f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->c:Landroid/view/View;

    .line 67
    const v0, 0x7f0c0240

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->d:Landroid/view/View;

    .line 68
    const v0, 0x7f0c0241

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->e:Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->f:Landroid/view/animation/Animation;

    .line 70
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->f:Landroid/view/animation/Animation;

    new-instance v1, Lgow;

    invoke-direct {v1, p0}, Lgow;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 95
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 98
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 99
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 100
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 101
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 102
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 103
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 107
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->a:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->addWandoujiaInUserAgent(Landroid/webkit/WebView;)V

    .line 109
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->b:Landroid/view/View;

    new-instance v1, Lgoy;

    invoke-direct {v1}, Lgoy;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->g:Z

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->g:Z

    .line 120
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->g:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 128
    :cond_0
    return-void
.end method

.method protected getLayoutResourceId()I
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f0301ef

    return v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public setOnBackButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :cond_0
    return-void
.end method

.method public setOnRefreshButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_0
    return-void
.end method

.method public setOriginWebUrl(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->e:Landroid/widget/TextView;

    new-instance v1, Lgoz;

    invoke-direct {v1, p0, p1}, Lgoz;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method
