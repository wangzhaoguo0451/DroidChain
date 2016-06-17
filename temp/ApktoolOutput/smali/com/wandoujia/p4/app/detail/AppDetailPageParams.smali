.class public Lcom/wandoujia/p4/app/detail/AppDetailPageParams;
.super Ljava/lang/Object;
.source "AppDetailPageParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appDetailInfo:Lcom/wandoujia/entities/app/AppDetailInfo;

.field public appType:Ljava/lang/String;

.field public autoDownload:Z

.field public autoUpgrade:Z

.field public detailParam:Ljava/lang/String;

.field public giftModel:Lcom/wandoujia/p4/gift/http/model/GiftModel;

.field public isFreeTraffic:Z

.field public final packageName:Ljava/lang/String;

.field public scrollToRecommend:Z

.field public showOperationBarInGameRec:Z

.field public skipAward:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/wandoujia/p4/app/detail/AppDetailPageParams;->packageName:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/app/detail/AppDetailPageParams;->skipAward:Z

    .line 28
    return-void
.end method
