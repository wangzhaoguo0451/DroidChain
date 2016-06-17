.class public Lcom/wandoujia/base/view/NonLeakingWebView$NonLeakingWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "NonLeakingWebView.java"


# instance fields
.field final synthetic this$0:Lcom/wandoujia/base/view/NonLeakingWebView;


# direct methods
.method protected constructor <init>(Lcom/wandoujia/base/view/NonLeakingWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/wandoujia/base/view/NonLeakingWebView$NonLeakingWebViewClient;->this$0:Lcom/wandoujia/base/view/NonLeakingWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/wandoujia/base/view/NonLeakingWebView$NonLeakingWebViewClient;->this$0:Lcom/wandoujia/base/view/NonLeakingWebView;

    invoke-virtual {v0, p2}, Lcom/wandoujia/base/view/NonLeakingWebView;->shouldJumpToBrowser(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 88
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/wandoujia/base/view/NonLeakingWebView$NonLeakingWebViewClient;->this$0:Lcom/wandoujia/base/view/NonLeakingWebView;

    invoke-virtual {v1}, Lcom/wandoujia/base/view/NonLeakingWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    const/4 v0, 0x1

    .line 99
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    goto :goto_0
.end method
