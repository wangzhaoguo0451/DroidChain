.class public final Lcom/wandoujia/launcher_search/utils/SearchLogHelper;
.super Ljava/lang/Object;
.source "SearchLogHelper.java"


# static fields
.field private static a:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->GAME:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    sput-object v0, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->a:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "app_search"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "game_search"

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-static {}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ld;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-static {}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->d()Ljava/lang/String;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;->SEARCH:Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

    if-ne p1, v1, :cond_1

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/search/?key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    :goto_0
    invoke-static {p0, v0}, Ld;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 80
    return-void

    .line 76
    :cond_1
    sget-object v1, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;->SUGGESTION:Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

    if-ne p1, v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/suggestion/?key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-static {}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->INPUT_BOX:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->SEARCH:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    invoke-static {p0, v0, v1, v2, p1}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-static {}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->APP:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    :goto_0
    invoke-static {p0, p1, p2, v0}, Ld;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)V

    .line 111
    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->GAME:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;ZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-static {}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    :goto_0
    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->SEARCH:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    invoke-static {p0, v1, v0, v2, p2}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 97
    return-void

    .line 94
    :cond_0
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->TEXT_LINK:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    goto :goto_0
.end method

.method public static a(Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    sput-object p0, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->a:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    .line 43
    return-void
.end method

.method public static a(Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;)V
    .locals 3
    .parameter

    .prologue
    .line 100
    invoke-static {}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "app_search_results"

    :goto_0
    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;)V

    .line 101
    return-void

    .line 100
    :cond_0
    const-string v0, "game_search_results"

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "app_search_suggestion"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "game_search_suggestion"

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 88
    invoke-static {}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->TEXT_LINK:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v3, "more_result"

    invoke-static {p0, v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static b(Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;)V
    .locals 3
    .parameter

    .prologue
    .line 104
    invoke-static {}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private static c()Z
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->a:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    sget-object v1, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->APP:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "app/app_launcher"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "game/game_launcher_search"

    goto :goto_0
.end method
