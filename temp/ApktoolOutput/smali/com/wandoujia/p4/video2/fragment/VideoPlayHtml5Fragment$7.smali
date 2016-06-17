.class Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;
.super Landroid/webkit/WebChromeClient;
.source "VideoPlayHtml5Fragment.java"


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;->this$0:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;->this$0:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->l(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    const/4 v0, 0x0

    .line 401
    :cond_0
    :goto_0
    return-object v0

    .line 397
    :cond_1
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 398
    if-nez v0, :cond_0

    .line 399
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;->this$0:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onHideCustomView()V
    .locals 2

    .prologue
    .line 382
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 383
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;->this$0:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/base/view/NonLeakingWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;->this$0:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->k(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V

    .line 385
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;->this$0:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/base/view/NonLeakingWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/view/NonLeakingWebView;->setVisibility(I)V

    .line 387
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;->this$0:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/base/view/NonLeakingWebView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;->this$0:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0, p2}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->a(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 367
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;->this$0:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->a:Z

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;->this$0:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->a(Z)V

    .line 372
    :goto_1
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;->this$0:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->g(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V

    .line 374
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;->onHideCustomView()V

    .line 375
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;->this$0:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->i(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 376
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;->this$0:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->j(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Z

    goto :goto_0

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;->this$0:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->a(Z)V

    goto :goto_1
.end method
