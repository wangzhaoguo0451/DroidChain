.class public final Ldfl;
.super Lhaw;
.source "WebViewFragment.java"


# instance fields
.field private synthetic g:Lcom/wandoujia/jupiter/fragment/WebViewFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/fragment/WebViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Ldfl;->g:Lcom/wandoujia/jupiter/fragment/WebViewFragment;

    invoke-direct {p0}, Lhaw;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/ViewGroup;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lerf;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 111
    const v0, 0x7f030184

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 112
    const v1, 0x7f0c00fe

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 113
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 114
    new-instance v2, Lfbe;

    iget-object v3, p0, Ldfl;->g:Lcom/wandoujia/jupiter/fragment/WebViewFragment;

    invoke-virtual {v3}, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lfbe;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    const-string v3, "campaignPlugin"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Ldfl;->g:Lcom/wandoujia/jupiter/fragment/WebViewFragment;

    invoke-static {v2}, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->c(Lcom/wandoujia/jupiter/fragment/WebViewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 116
    new-instance v1, Lerf;

    invoke-direct {v1, v0}, Lerf;-><init>(Landroid/view/View;)V

    return-object v1
.end method
