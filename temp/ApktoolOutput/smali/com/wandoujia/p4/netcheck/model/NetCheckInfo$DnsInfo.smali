.class public Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$DnsInfo;
.super Ljava/lang/Object;
.source "NetCheckInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private dns:Ljava/lang/String;

.field private dnsaddr:Ljava/lang/String;

.field private dnsmatch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDns(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$DnsInfo;->dns:Ljava/lang/String;

    .line 116
    return-void
.end method
