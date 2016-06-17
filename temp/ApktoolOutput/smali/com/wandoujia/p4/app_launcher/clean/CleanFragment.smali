.class public Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;
.super Lcom/wandoujia/p4/fragment/AsyncLoadFragment;
.source "CleanFragment.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/FrameLayout;

.field private e:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

.field private f:Leyk;

.field private g:Leyg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;-><init>()V

    .line 43
    new-instance v0, Lexv;

    invoke-direct {v0, p0}, Lexv;-><init>(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->g:Leyg;

    return-void
.end method

.method public static synthetic a()I
    .locals 6

    .prologue
    .line 24
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/MemoryUtil;->getUsedMemory(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Lcom/wandoujia/base/utils/MemoryUtil;->getTotalMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static synthetic a(I)I
    .locals 1
    .parameter

    .prologue
    .line 24
    const/16 v0, 0x28

    if-ge p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x32

    if-ge p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->e:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 24
    new-instance v0, Leyc;

    add-int/lit8 v1, p1, 0x0

    mul-int/lit8 v1, v1, 0x14

    int-to-long v2, v1

    invoke-direct {v0, v2, v3, p1}, Leyc;-><init>(JI)V

    new-instance v1, Lexy;

    invoke-direct {v1, p0, p1}, Lexy;-><init>(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;I)V

    iput-object v1, v0, Leyc;->a:Leyd;

    invoke-virtual {v0}, Leyc;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Leyk;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->f:Leyk;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 24
    new-instance v0, Leye;

    invoke-direct {v0}, Leye;-><init>()V

    new-instance v1, Leyl;

    new-instance v2, Leya;

    invoke-direct {v2, p0}, Leya;-><init>(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)V

    invoke-direct {v1, v2}, Leyl;-><init>(Leys;)V

    invoke-virtual {v1}, Leyl;->a()V

    new-instance v2, Leyb;

    invoke-direct {v2, v1}, Leyb;-><init>(Leyl;)V

    invoke-virtual {v0, v2}, Leye;->a(Lcrq;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic g(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Leyg;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->g:Leyg;

    return-object v0
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f03007f

    return v0
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 63
    const v0, 0x7f0c0224

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->a:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0c0226

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->b:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0c0225

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->c:Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f0c0222

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->d:Landroid/widget/FrameLayout;

    .line 67
    const v0, 0x7f0c0223

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->e:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    .line 69
    new-instance v0, Leyk;

    iget-object v1, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->e:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    iget-object v2, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->c:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, v3}, Leyk;-><init>(Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->f:Leyk;

    .line 71
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->d:Landroid/widget/FrameLayout;

    new-instance v1, Lexx;

    invoke-direct {v1, p0}, Lexx;-><init>(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method protected onPrepareLoading()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->f:Leyk;

    invoke-virtual {v0, v2}, Leyk;->a(I)V

    .line 117
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->b:Landroid/widget/TextView;

    const v1, 0x7f0e0527

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    new-instance v0, Lexz;

    invoke-direct {v0, p0}, Lexz;-><init>(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)V

    .line 130
    new-array v1, v2, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 131
    return-void
.end method
