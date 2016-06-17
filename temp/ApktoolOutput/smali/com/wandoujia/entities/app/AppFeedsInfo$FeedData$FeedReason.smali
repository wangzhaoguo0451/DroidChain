.class public Lcom/wandoujia/entities/app/AppFeedsInfo$FeedData$FeedReason;
.super Ljava/lang/Object;
.source "AppFeedsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private date:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/wandoujia/entities/app/AppFeedsInfo$FeedData$FeedReason;->date:J

    return-wide v0
.end method

.method public setDate(J)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/wandoujia/entities/app/AppFeedsInfo$FeedData$FeedReason;->date:J

    .line 52
    return-void
.end method
