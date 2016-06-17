.class Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WeiboSdkBrowser.java"


# instance fields
.field final synthetic this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;


# direct methods
.method private constructor <init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 429
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lcom/sina/weibo/sdk/component/view/LoadingBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(I)V

    .line 430
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Z)V

    .line 432
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b()V

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Z)V

    .line 436
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b()V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v0, p2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->d(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V

    .line 447
    :cond_0
    return-void
.end method
