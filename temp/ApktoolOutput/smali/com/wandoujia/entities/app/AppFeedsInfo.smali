.class public Lcom/wandoujia/entities/app/AppFeedsInfo;
.super Ljava/lang/Object;
.source "AppFeedsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private adsCursor:J

.field private cursor:J

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/AppFeedsInfo$FeedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getAdsCursor()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/wandoujia/entities/app/AppFeedsInfo;->adsCursor:J

    return-wide v0
.end method

.method public getCursor()J
    .locals 2

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/wandoujia/entities/app/AppFeedsInfo;->cursor:J

    return-wide v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/AppFeedsInfo$FeedData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppFeedsInfo;->data:Ljava/util/List;

    return-object v0
.end method
