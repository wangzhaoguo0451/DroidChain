.class public Lcom/wandoujia/p4/model/TrafficAppInfo;
.super Ljava/lang/Object;
.source "TrafficAppInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private backgroundMobileDay:J

.field private packageName:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundMobileBytes()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/wandoujia/p4/model/TrafficAppInfo;->backgroundMobileDay:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/wandoujia/p4/model/TrafficAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/p4/model/TrafficAppInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setBackgroundMobileBytes(J)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/wandoujia/p4/model/TrafficAppInfo;->backgroundMobileDay:J

    .line 33
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/wandoujia/p4/model/TrafficAppInfo;->packageName:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/wandoujia/p4/model/TrafficAppInfo;->title:Ljava/lang/String;

    .line 25
    return-void
.end method
