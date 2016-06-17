.class public final Lcey;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/unionpay/mpay_2/upview/b;


# direct methods
.method private constructor <init>(Lcom/unionpay/mpay_2/upview/b;)V
    .locals 0

    iput-object p1, p0, Lcey;->a:Lcom/unionpay/mpay_2/upview/b;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/unionpay/mpay_2/upview/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcey;-><init>(Lcom/unionpay/mpay_2/upview/b;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcey;->a:Lcom/unionpay/mpay_2/upview/b;

    invoke-static {v0}, Lcom/unionpay/mpay_2/upview/b;->b(Lcom/unionpay/mpay_2/upview/b;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcey;->a:Lcom/unionpay/mpay_2/upview/b;

    invoke-static {v0}, Lcom/unionpay/mpay_2/upview/b;->b(Lcom/unionpay/mpay_2/upview/b;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcey;->a:Lcom/unionpay/mpay_2/upview/b;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/unionpay/mpay_2/upview/b;->a(Lcom/unionpay/mpay_2/upview/b;Ljava/util/Timer;)Ljava/util/Timer;

    new-instance v0, Lcez;

    invoke-direct {v0, p0, p1}, Lcez;-><init>(Lcey;Landroid/webkit/WebView;)V

    iget-object v1, p0, Lcey;->a:Lcom/unionpay/mpay_2/upview/b;

    invoke-static {v1}, Lcom/unionpay/mpay_2/upview/b;->b(Lcom/unionpay/mpay_2/upview/b;)Ljava/util/Timer;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcey;->a:Lcom/unionpay/mpay_2/upview/b;

    invoke-static {v0}, Lcom/unionpay/mpay_2/upview/b;->c(Lcom/unionpay/mpay_2/upview/b;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
