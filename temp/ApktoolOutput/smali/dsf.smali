.class final Ldsf;
.super Lhhl;
.source "SuggestionActionPresenter.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;


# direct methods
.method constructor <init>(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Ldsf;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0482

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    .line 29
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->dismissDropDown()V

    .line 32
    :cond_0
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldsf;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    const-string v2, "SUGGESTION"

    invoke-static {v0, v1, v2}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x1

    return v0
.end method
