.class public Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;
.super Landroid/app/Activity;
.source "WebDownloadMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/io/Serializable;


# static fields
.field private static final PAGE_URL:Ljava/lang/String; = "http://data.music.qq.com/playsong.html?songmid=0003B7p43l6Q1v"

.field private static final TAG:Ljava/lang/String; = "WebDownloadActivity"

.field public static container:Landroid/widget/RelativeLayout;


# instance fields
.field private downloadButton:Landroid/widget/Button;

.field private offlineButton:Landroid/widget/Button;

.field private srcButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 192
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;->downloadButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 86
    new-instance v0, Lgqt;

    invoke-direct {v0, p0}, Lgqt;-><init>(Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;->offlineButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 107
    invoke-static {p0}, Lgsa;->a(Landroid/content/Context;)Lgsa;

    move-result-object v0

    .line 108
    new-instance v1, Lgqv;

    invoke-direct {v1, p0}, Lgqv;-><init>(Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;)V

    iget-object v0, v0, Lgsa;->a:Lgrw;

    invoke-virtual {v0, v1}, Lgrw;->a(Lgrz;)V

    goto :goto_0

    .line 185
    :cond_2
    sget-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 186
    sget-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;->container:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 187
    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$layout;->web_download_layout:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;->setContentView(I)V

    .line 73
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->download:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;->downloadButton:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;->downloadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->offline:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;->offlineButton:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;->offlineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->select_src:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;->srcButton:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;->srcButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-static {}, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->a()Lcom/wandoujia/p4/webdownload/core/JsIntercepter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->a(Landroid/content/Context;)V

    .line 80
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->parent:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sput-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity;->container:Landroid/widget/RelativeLayout;

    .line 81
    return-void
.end method
