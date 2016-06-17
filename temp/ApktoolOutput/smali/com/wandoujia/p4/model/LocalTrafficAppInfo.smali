.class public Lcom/wandoujia/p4/model/LocalTrafficAppInfo;
.super Lcom/wandoujia/p4/model/TrafficAppInfo;
.source "LocalTrafficAppInfo.java"


# instance fields
.field private backgroundMobile:J

.field private totalMobile:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/wandoujia/p4/model/TrafficAppInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundMobileBytes()J
    .locals 2

    .prologue
    .line 10
    iget-wide v0, p0, Lcom/wandoujia/p4/model/LocalTrafficAppInfo;->backgroundMobile:J

    return-wide v0
.end method

.method public getTotalMobile()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/wandoujia/p4/model/LocalTrafficAppInfo;->totalMobile:J

    return-wide v0
.end method

.method public setBackgroundMobileBytes(J)V
    .locals 1
    .parameter

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/wandoujia/p4/model/LocalTrafficAppInfo;->backgroundMobile:J

    .line 16
    return-void
.end method

.method public setTotalMobile(J)V
    .locals 1
    .parameter

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/wandoujia/p4/model/LocalTrafficAppInfo;->totalMobile:J

    .line 24
    return-void
.end method
