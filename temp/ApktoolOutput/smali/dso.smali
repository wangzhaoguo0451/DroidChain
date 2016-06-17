.class public final Ldso;
.super Ljava/lang/Object;
.source "SearchSuggestionTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Ldso;->a:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Ldso;->a:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->dismissDropDown()V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Ldso;->a:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->a(Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    iget-object v0, p0, Ldso;->a:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->b(Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;)Z

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    const/4 v0, 0x0

    .line 95
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_1
    iget-object v2, p0, Ldso;->a:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    invoke-virtual {v2}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->isPerformingCompletion()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    const-string v2, "http://apis.wandoujia.com/five/v1/search/%s/suggestions?format=proto&max=5"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v2, p0, Ldso;->a:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->c(Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;)Ldsj;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 102
    iget-object v2, p0, Ldso;->a:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->c(Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;)Ldsj;

    move-result-object v2

    iput-boolean v5, v2, Lcom/android/volley/Request;->h:Z

    .line 104
    :cond_3
    iget-object v2, p0, Ldso;->a:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    new-instance v3, Ldsj;

    new-instance v4, Ldsp;

    invoke-direct {v4, p0, v1}, Ldsp;-><init>(Ldso;Ljava/lang/String;)V

    new-instance v5, Ldsq;

    invoke-direct {v5, p0, v1}, Ldsq;-><init>(Ldso;Ljava/lang/String;)V

    invoke-direct {v3, v0, v4, v5}, Ldsj;-><init>(Ljava/lang/String;Lagu;Lagt;)V

    invoke-static {v2, v3}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->a(Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;Ldsj;)Ldsj;

    .line 125
    iget-object v0, p0, Ldso;->a:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->c(Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;)Ldsj;

    move-result-object v0

    invoke-virtual {v0}, Ldsj;->j()V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Ldso;->a:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Ldso;->a:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->dismissDropDown()V

    .line 80
    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    return-void
.end method
