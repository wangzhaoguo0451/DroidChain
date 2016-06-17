.class public Lcom/wandoujia/p4/netcheck/model/Configs;
.super Ljava/lang/Object;
.source "Configs.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public downloadurls:Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;

.field public publics:Lcom/wandoujia/p4/netcheck/model/Configs$Publics;

.field public testdomain:Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;

.field public ua:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method


# virtual methods
.method public getDownloadurls()Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/model/Configs;->downloadurls:Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;

    return-object v0
.end method

.method public getPublics()Lcom/wandoujia/p4/netcheck/model/Configs$Publics;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/model/Configs;->publics:Lcom/wandoujia/p4/netcheck/model/Configs$Publics;

    return-object v0
.end method

.method public getTestdomain()Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/model/Configs;->testdomain:Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;

    return-object v0
.end method

.method public getUa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/model/Configs;->ua:Ljava/lang/String;

    return-object v0
.end method
