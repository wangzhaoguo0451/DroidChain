.class public final Lght;
.super Landroid/webkit/WebViewClient;
.source "VideoPlayHtml5Fragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lght;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    const-string v0, "http://www.wandoujia.com/?callback=finish"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lght;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->a(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
