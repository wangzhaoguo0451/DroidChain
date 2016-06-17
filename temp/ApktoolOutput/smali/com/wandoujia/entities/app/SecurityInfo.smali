.class public Lcom/wandoujia/entities/app/SecurityInfo;
.super Ljava/lang/Object;
.source "SecurityInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private failedInfo:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFailedInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/wandoujia/entities/app/SecurityInfo;->failedInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wandoujia/entities/app/SecurityInfo;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/entities/app/SecurityInfo;->status:Ljava/lang/String;

    return-object v0
.end method
