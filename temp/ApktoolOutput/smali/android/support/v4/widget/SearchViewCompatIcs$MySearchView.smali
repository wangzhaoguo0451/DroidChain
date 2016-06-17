.class public Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;
.super Landroid/widget/SearchView;
.source "SearchViewCompatIcs.java"


# virtual methods
.method public onActionViewCollapsed()V
    .locals 2

    .prologue
    .line 37
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 38
    invoke-super {p0}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 39
    return-void
.end method
