.class public final Ldvd;
.super Ljava/lang/Object;
.source "JupiterToolbarForSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Ldvd;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Ldvd;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 132
    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Ldvd;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-static {v1}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 135
    :cond_0
    return-void
.end method
