.class Lcom/alipay/android/mini/window/sdk/u;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/u;->a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    .line 171
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/u;->a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 175
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/u;->a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    :cond_0
    return-void
.end method
