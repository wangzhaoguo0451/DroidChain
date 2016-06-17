.class public Lcom/wandoujia/jupiter/search/model/BaseHotQueries;
.super Ljava/lang/Object;
.source "BaseHotQueries.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6d98e3b394fd4b4cL


# instance fields
.field private editorQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/jupiter/search/model/BaseHotQueries$EditorQuery;",
            ">;"
        }
    .end annotation
.end field

.field private hotQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/jupiter/search/model/BaseHotQueries$BaseHotQuery;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private getHotQueries(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/jupiter/search/model/BaseHotQueries$BaseHotQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/search/model/BaseHotQueries;->hotQueries:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 48
    :goto_0
    return-object v0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/model/BaseHotQueries;->hotQueries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/search/model/BaseHotQueries$BaseHotQuery;

    .line 40
    iget-object v3, v0, Lcom/wandoujia/jupiter/search/model/BaseHotQueries$BaseHotQuery;->type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_4

    if-eqz p2, :cond_3

    iget-object v3, v0, Lcom/wandoujia/jupiter/search/model/BaseHotQueries$BaseHotQuery;->subType:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    iget-object v3, v0, Lcom/wandoujia/jupiter/search/model/BaseHotQueries$BaseHotQuery;->subType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 44
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 48
    goto :goto_0
.end method


# virtual methods
.method public getEditorQueries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/jupiter/search/model/BaseHotQueries$EditorQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/model/BaseHotQueries;->editorQueries:Ljava/util/List;

    return-object v0
.end method

.method public getHotQueries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/jupiter/search/model/BaseHotQueries$BaseHotQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/model/BaseHotQueries;->hotQueries:Ljava/util/List;

    return-object v0
.end method

.method public getHotQueries(Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/jupiter/search/model/BaseHotQueries$BaseHotQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->getTypeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->getSubTypeKey()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->GAME:Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/wandoujia/jupiter/search/model/BaseHotQueries;->getHotQueries(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
