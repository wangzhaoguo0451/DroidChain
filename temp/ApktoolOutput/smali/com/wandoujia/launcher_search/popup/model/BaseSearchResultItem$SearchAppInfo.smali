.class public Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchAppInfo;
.super Ljava/lang/Object;
.source "BaseSearchResultItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public app:Lcom/wandoujia/entities/app/AppLiteInfo;

.field public couponType:Ljava/lang/String;

.field public html5:Ljava/lang/String;

.field public prompt:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$Prompt;

.field public subTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppLiteInfo()Lcom/wandoujia/entities/app/IAppLiteInfo;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchAppInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    return-object v0
.end method

.method public getCouponType()Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchAppInfo;->couponType:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 137
    :goto_0
    return-object v0

    .line 135
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchAppInfo;->couponType:Ljava/lang/String;

    invoke-static {v1}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;->valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getHtml5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchAppInfo;->html5:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchAppInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrompt()Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$Prompt;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchAppInfo;->prompt:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$Prompt;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchAppInfo;->subTitle:Ljava/lang/String;

    return-object v0
.end method
