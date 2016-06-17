.class public Lcom/wandoujia/entities/app/AppFeedsInfo$FeedData;
.super Ljava/lang/Object;
.source "AppFeedsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private app:Lcom/wandoujia/entities/app/AppLiteInfo;

.field private reason:Lcom/wandoujia/entities/app/AppFeedsInfo$FeedData$FeedReason;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public getApp()Lcom/wandoujia/entities/app/AppLiteInfo;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppFeedsInfo$FeedData;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    return-object v0
.end method

.method public getReason()Lcom/wandoujia/entities/app/AppFeedsInfo$FeedData$FeedReason;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppFeedsInfo$FeedData;->reason:Lcom/wandoujia/entities/app/AppFeedsInfo$FeedData$FeedReason;

    return-object v0
.end method

.method public setApp(Lcom/wandoujia/entities/app/AppLiteInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppFeedsInfo$FeedData;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    .line 33
    return-void
.end method

.method public setReason(Lcom/wandoujia/entities/app/AppFeedsInfo$FeedData$FeedReason;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppFeedsInfo$FeedData;->reason:Lcom/wandoujia/entities/app/AppFeedsInfo$FeedData$FeedReason;

    .line 41
    return-void
.end method
