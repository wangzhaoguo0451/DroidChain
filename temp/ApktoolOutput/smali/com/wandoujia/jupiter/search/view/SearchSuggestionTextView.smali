.class public Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "SearchSuggestionTextView.java"


# instance fields
.field public a:Z

.field public b:Ldsk;

.field private c:Ldst;

.field private d:Ldss;

.field private e:Ljava/lang/String;

.field private f:Ldsj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->a:Z

    .line 64
    new-instance v0, Ldso;

    invoke-direct {v0, p0}, Ldso;-><init>(Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Ldsk;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Ldsk;-><init>(Landroid/content/Context;Landroid/widget/TextView;Z)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->b:Ldsk;

    .line 65
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;Ldsj;)Ldsj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->f:Ldsj;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Ldsi;

    invoke-direct {v0, p2}, Ldsi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ldsi;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p2, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->e:Ljava/lang/String;

    new-instance v1, Ldsv;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ldsv;-><init>(B)V

    invoke-virtual {v1, v0}, Ldsv;->a(Ljava/util/List;)Z

    new-instance v0, Ldst;

    invoke-direct {v0, v1}, Ldst;-><init>(Ldcm;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->c:Ldst;

    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->c:Ldst;

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->showDropDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->a:Z

    return v0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->a:Z

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;)Ldsj;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->f:Ldsj;

    return-object v0
.end method


# virtual methods
.method public dismissDropDown()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 155
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->c:Ldst;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->c:Ldst;

    invoke-virtual {v0}, Ldst;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->c:Ldst;

    invoke-virtual {v0}, Ldst;->a()V

    .line 159
    :cond_0
    return-void
.end method

.method public getSuggestionKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->onDetachedFromWindow()V

    .line 209
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->b:Ldsk;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->b:Ldsk;

    invoke-virtual {v0}, Ldsk;->a()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->b:Ldsk;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->f:Ldsj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->f:Ldsj;

    invoke-virtual {v0}, Ldsj;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->f:Ldsj;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/volley/Request;->h:Z

    .line 216
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 186
    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->dismissDropDown()V

    .line 188
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->d:Ldss;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->b:Ldsk;

    iget-boolean v0, v0, Ldsk;->b:Z

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->d:Ldss;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldss;->a(Ljava/lang/String;)V

    .line 199
    :cond_1
    :goto_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 201
    :goto_1
    return v0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->d:Ldss;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldss;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setHintType(Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->b:Ldsk;

    invoke-virtual {v0, p1}, Ldsk;->a(Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    .line 178
    return-void
.end method

.method public setOnSearchListener(Ldss;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->d:Ldss;

    .line 163
    return-void
.end method
