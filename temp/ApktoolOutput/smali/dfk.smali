.class public final Ldfk;
.super Lup;
.source "WebViewFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/fragment/WebViewFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/fragment/WebViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Ldfk;->a:Lcom/wandoujia/jupiter/fragment/WebViewFragment;

    invoke-direct {p0}, Lup;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Ldfk;->a:Lcom/wandoujia/jupiter/fragment/WebViewFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->a(Lcom/wandoujia/jupiter/fragment/WebViewFragment;)Ldfm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Ldfk;->a:Lcom/wandoujia/jupiter/fragment/WebViewFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->a(Lcom/wandoujia/jupiter/fragment/WebViewFragment;)Ldfm;

    move-result-object v0

    invoke-interface {v0, p2}, Ldfm;->a(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Ldfk;->a:Lcom/wandoujia/jupiter/fragment/WebViewFragment;

    iget-object v1, p0, Ldfk;->a:Lcom/wandoujia/jupiter/fragment/WebViewFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->b(Lcom/wandoujia/jupiter/fragment/WebViewFragment;)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->a(Lcom/wandoujia/jupiter/fragment/WebViewFragment;I)I

    .line 101
    iget-object v0, p0, Ldfk;->a:Lcom/wandoujia/jupiter/fragment/WebViewFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->a(Lcom/wandoujia/jupiter/fragment/WebViewFragment;)Ldfm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Ldfk;->a:Lcom/wandoujia/jupiter/fragment/WebViewFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->a(Lcom/wandoujia/jupiter/fragment/WebViewFragment;)Ldfm;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Ldfm;->a(II)V

    .line 104
    :cond_0
    return-void
.end method
