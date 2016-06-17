.class public Lcom/wandoujia/entities/app/RecommendAppCategoryInfo;
.super Lcom/wandoujia/entities/app/TagInfo;
.source "RecommendAppCategoryInfo.java"


# instance fields
.field private iconRes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/wandoujia/entities/app/TagInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconRes()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/wandoujia/entities/app/RecommendAppCategoryInfo;->iconRes:I

    return v0
.end method

.method public setIconRes(I)V
    .locals 0
    .parameter

    .prologue
    .line 12
    iput p1, p0, Lcom/wandoujia/entities/app/RecommendAppCategoryInfo;->iconRes:I

    .line 13
    return-void
.end method
