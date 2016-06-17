.class public Lcom/wandoujia/base/view/NonLeakingWebView;
.super Landroid/webkit/WebView;
.source "NonLeakingWebView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NonLeakingWebView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/wandoujia/base/view/NonLeakingWebView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/wandoujia/base/view/NonLeakingWebView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/wandoujia/base/view/NonLeakingWebView;->init()V

    .line 47
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    new-instance v0, Lcom/wandoujia/base/view/NonLeakingWebView$NonLeakingWebViewClient;

    invoke-direct {v0, p0}, Lcom/wandoujia/base/view/NonLeakingWebView$NonLeakingWebViewClient;-><init>(Lcom/wandoujia/base/view/NonLeakingWebView;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/base/view/NonLeakingWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 64
    invoke-virtual {p0}, Lcom/wandoujia/base/view/NonLeakingWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/wandoujia/base/view/NonLeakingWebView;->setScrollBarStyle(I)V

    .line 70
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected shouldJumpToBrowser(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method
