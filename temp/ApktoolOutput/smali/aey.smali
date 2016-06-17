.class public final Laey;
.super Laez;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Laez;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 46
    const-string v0, "mini_ui_webview"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Landroid/webkit/WebView;

    iget-object v0, p0, Laey;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laey;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lafz;->b(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Laey;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Laey;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lafz;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v1

    :goto_1
    invoke-virtual {p2}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Laey;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lafa;

    invoke-direct {v0}, Lafa;-><init>()V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x2

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Laez;->a(Lorg/json/JSONObject;)V

    .line 39
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laey;->a:Ljava/lang/String;

    .line 40
    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laey;->b:Ljava/lang/String;

    .line 41
    const-string v0, "alt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laey;->c:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Laey;->j()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Laez;->i()V

    .line 94
    return-void
.end method
