.class Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "CampaignFragment.java"


# instance fields
.field private customCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private defaultVideoPoster:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/wandoujia/p4/campaign/CampaignFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/campaign/CampaignFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->this$0:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/p4/campaign/CampaignFragment;Lfba;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;-><init>(Lcom/wandoujia/p4/campaign/CampaignFragment;)V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->defaultVideoPoster:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->this$0:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02020e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->defaultVideoPoster:Landroid/graphics/Bitmap;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->defaultVideoPoster:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->this$0:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->g(Lcom/wandoujia/p4/campaign/CampaignFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    const/4 v0, 0x0

    .line 399
    :cond_0
    :goto_0
    return-object v0

    .line 395
    :cond_1
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 396
    if-nez v0, :cond_0

    .line 397
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->this$0:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onHideCustomView()V
    .locals 2

    .prologue
    .line 380
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 381
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->this$0:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->a(Lcom/wandoujia/p4/campaign/CampaignFragment;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->this$0:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->f(Lcom/wandoujia/p4/campaign/CampaignFragment;)V

    .line 383
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->this$0:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->a(Lcom/wandoujia/p4/campaign/CampaignFragment;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 385
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 354
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->this$0:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->c(Lcom/wandoujia/p4/campaign/CampaignFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 361
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 362
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->this$0:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->c(Lcom/wandoujia/p4/campaign/CampaignFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 358
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->this$0:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->c(Lcom/wandoujia/p4/campaign/CampaignFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->this$0:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->c(Lcom/wandoujia/p4/campaign/CampaignFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->this$0:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->b()V

    .line 405
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->this$0:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->a(Lcom/wandoujia/p4/campaign/CampaignFragment;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iput-object p2, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->customCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 370
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->this$0:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->d(Lcom/wandoujia/p4/campaign/CampaignFragment;)V

    .line 372
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->onHideCustomView()V

    .line 373
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->customCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 374
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;->this$0:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->e(Lcom/wandoujia/p4/campaign/CampaignFragment;)Z

    goto :goto_0
.end method
