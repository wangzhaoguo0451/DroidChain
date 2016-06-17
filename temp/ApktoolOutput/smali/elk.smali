.class final Lelk;
.super Landroid/widget/Filter;
.source "SuggestionCardAdapter.java"


# instance fields
.field private synthetic a:Lelj;


# direct methods
.method constructor <init>(Lelj;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lelk;->a:Lelj;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 110
    instance-of v0, p1, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;

    if-eqz v0, :cond_0

    .line 111
    check-cast p1, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;

    invoke-virtual {p1}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->b()Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2
    .parameter

    .prologue
    .line 98
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 99
    iget-object v0, p0, Lelk;->a:Lelj;

    iget-object v0, v0, Leeg;->b:Ljava/util/List;

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lelk;->a:Lelj;

    iget-object v0, v0, Leeg;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 101
    return-object v1

    .line 100
    :cond_0
    iget-object v0, p0, Lelk;->a:Lelj;

    iget-object v0, v0, Leeg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    return-void
.end method
