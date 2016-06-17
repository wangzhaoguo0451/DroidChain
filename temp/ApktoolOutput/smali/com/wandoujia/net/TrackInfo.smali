.class public Lcom/wandoujia/net/TrackInfo;
.super Ljava/lang/Object;
.source "TrackInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bodyReceiveDuration:J

.field public connectDuration:J

.field public headerReceiveDuration:J

.field public ip:Ljava/lang/String;

.field public ipResolveDuration:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide v0, p0, Lcom/wandoujia/net/TrackInfo;->ipResolveDuration:J

    .line 10
    iput-wide v0, p0, Lcom/wandoujia/net/TrackInfo;->connectDuration:J

    .line 11
    iput-wide v0, p0, Lcom/wandoujia/net/TrackInfo;->headerReceiveDuration:J

    .line 12
    iput-wide v0, p0, Lcom/wandoujia/net/TrackInfo;->bodyReceiveDuration:J

    return-void
.end method
