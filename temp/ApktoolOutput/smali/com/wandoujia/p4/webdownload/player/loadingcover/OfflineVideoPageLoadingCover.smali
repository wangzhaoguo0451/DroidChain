.class public Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;
.super Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;
.source "OfflineVideoPageLoadingCover.java"


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;
    .locals 3
    .parameter

    .prologue
    .line 25
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wandoujia/p4/webdownload/lib/R$layout;->offline_video_page_loading_cover:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;->a:Lgun;

    invoke-virtual {v0}, Lgun;->a()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;->b()V

    .line 67
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->a()V

    .line 73
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;->c()V

    .line 74
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;->c()V

    .line 81
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-super {p0}, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->onFinishInflate()V

    .line 45
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->play_tips_layout:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;->b:Landroid/view/View;

    .line 46
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->direct_play_button:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;->c:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;->c:Landroid/view/View;

    new-instance v1, Lgwg;

    invoke-direct {v1, p0}, Lgwg;-><init>(Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;->b:Landroid/view/View;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->FOOTER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v3, "offline"

    invoke-virtual {v0, v1, v2, v4, v3}, Leny;->a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Leny;

    .line 57
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;->c:Landroid/view/View;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->MENU_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v3, "play"

    invoke-virtual {v0, v1, v2, v4, v3}, Leny;->a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Leny;

    .line 59
    return-void
.end method
