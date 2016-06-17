.class public final Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;
.super Ljava/lang/Object;
.source "SuggestionCardModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;


# instance fields
.field public a:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;

.field public b:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->a:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;

    .line 36
    sget-object v0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;->Simple:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;

    iput-object v0, p0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->b:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;

    .line 37
    iget-object v0, p1, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;->shortcut:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->APP:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->getTypeKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;->Rich:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;

    iput-object v0, p0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->b:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->b:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;

    sget-object v1, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;->Rich:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->a:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;

    iget-object v0, v0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;->query:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->a:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;

    iget-object v1, v1, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;->shortcut:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v1}, Lcom/wandoujia/entities/app/AppLiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->a:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;

    iget-object v0, v0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;->shortcut:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_0
    return-object v0
.end method

.method public final c()Leiu;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Leiv;

    iget-object v1, p0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->a:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;

    iget-object v1, v1, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;->shortcut:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-direct {v0, v1}, Leiv;-><init>(Lcom/wandoujia/entities/app/IAppLiteInfo;)V

    return-object v0
.end method
