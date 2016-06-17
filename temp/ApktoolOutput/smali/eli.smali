.class public final Leli;
.super Ljava/lang/Object;
.source "SearchResultView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;

.field private synthetic b:Lelh;


# direct methods
.method public constructor <init>(Lelh;Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Leli;->b:Lelh;

    iput-object p2, p0, Leli;->a:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Leli;->b:Lelh;

    iget-object v1, p0, Leli;->a:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;

    iget-object v1, v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->query:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/launcher_base/app/SearchConst$SearchFrom;->GAME_LAUNCHER:Lcom/wandoujia/launcher_base/app/SearchConst$SearchFrom;

    invoke-static {v0, v1}, Lelh;->a(Lelh;Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->b(Landroid/view/View;)V

    .line 66
    return-void
.end method
