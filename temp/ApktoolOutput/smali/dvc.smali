.class public final Ldvc;
.super Ljava/lang/Object;
.source "JupiterToolbarForSearch.java"

# interfaces
.implements Lrw;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Ldvc;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0c0511

    if-eq v2, v3, :cond_0

    .line 118
    :goto_0
    return v0

    .line 107
    :cond_0
    iget-object v2, p0, Ldvc;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-virtual {v2, v0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a(Z)V

    .line 108
    iget-object v0, p0, Ldvc;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-static {v0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldvc;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-static {v0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->b:Ldsk;

    iget-boolean v0, v0, Ldsk;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldvc;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-static {v0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Ldvc;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    iget-object v2, p0, Ldvc;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-static {v2}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;Ljava/lang/String;)V

    move v0, v1

    .line 111
    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Ldvc;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-static {v0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Ldvc;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    iget-object v2, p0, Ldvc;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-static {v2}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 118
    goto :goto_0
.end method
