.class final Ldsu;
.super Landroid/widget/Filter;
.source "SearchSuggestionTextView.java"


# instance fields
.field private synthetic a:Ldst;


# direct methods
.method constructor <init>(Ldst;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Ldsu;->a:Ldst;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 249
    instance-of v0, p1, Ldrt;

    if-eqz v0, :cond_0

    .line 250
    check-cast p1, Ldrt;

    invoke-interface {p1}, Ldrt;->a()Ljava/lang/String;

    move-result-object v0

    .line 252
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
    .line 232
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 233
    iget-object v1, p0, Ldsu;->a:Ldst;

    invoke-static {v1}, Ldst;->a(Ldst;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 234
    iget-object v1, p0, Ldsu;->a:Ldst;

    invoke-virtual {v1}, Ldst;->getCount()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 235
    return-object v0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 240
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-gtz v0, :cond_1

    .line 241
    :cond_0
    iget-object v0, p0, Ldsu;->a:Ldst;

    invoke-virtual {v0}, Ldst;->notifyDataSetInvalidated()V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Ldsu;->a:Ldst;

    invoke-virtual {v0}, Ldst;->notifyDataSetChanged()V

    goto :goto_0
.end method
