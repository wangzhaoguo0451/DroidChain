.class public Lcom/wandoujia/ripple_framework/view/OfflineStatusView;
.super Landroid/widget/FrameLayout;
.source "OfflineStatusView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/view/OfflineStatusView;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/view/OfflineStatusView;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$layout;->rip_layout_offline_status_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    return-void
.end method


# virtual methods
.method public getInProgressView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/OfflineStatusView;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getReadyView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/OfflineStatusView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/OfflineStatusView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->offline_ready:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/OfflineStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/OfflineStatusView;->a:Landroid/widget/ImageView;

    .line 42
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->offline_in_progress:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/OfflineStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/OfflineStatusView;->b:Landroid/widget/ImageView;

    .line 43
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->offline_status_text:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/OfflineStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/OfflineStatusView;->c:Landroid/widget/TextView;

    .line 44
    return-void
.end method
