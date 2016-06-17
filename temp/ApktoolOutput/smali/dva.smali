.class public final Ldva;
.super Ljava/lang/Object;
.source "JupiterToolbarForSearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Ldva;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Ldva;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-static {v0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method
