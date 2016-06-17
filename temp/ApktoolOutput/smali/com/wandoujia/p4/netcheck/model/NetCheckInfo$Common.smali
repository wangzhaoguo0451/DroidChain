.class public Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;
.super Ljava/lang/Object;
.source "NetCheckInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private area:Ljava/lang/String;

.field private datetime:Ljava/lang/String;

.field private dns:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$DnsInfo;

.field private ip:Ljava/lang/String;

.field private network:Ljava/lang/String;

.field private space:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;->area:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setDatetime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;->datetime:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setDns(Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$DnsInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;->dns:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$DnsInfo;

    .line 80
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;->ip:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;->network:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setSpace(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;->space:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;->udid:Ljava/lang/String;

    .line 68
    return-void
.end method
