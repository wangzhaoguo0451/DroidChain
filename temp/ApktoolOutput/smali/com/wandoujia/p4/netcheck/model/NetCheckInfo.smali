.class public Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;
.super Ljava/lang/Object;
.source "NetCheckInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private common:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;

.field private download:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;",
            ">;"
        }
    .end annotation
.end field

.field private ping:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;",
            ">;"
        }
    .end annotation
.end field

.field private publics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;",
            ">;"
        }
    .end annotation
.end field

.field private tcp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;",
            ">;"
        }
    .end annotation
.end field

.field private traceroute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;",
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

    .line 119
    return-void
.end method


# virtual methods
.method public setCommon(Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;->common:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;

    .line 19
    return-void
.end method

.method public setDownload(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;->download:Ljava/util/List;

    .line 26
    return-void
.end method

.method public setPing(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;->ping:Ljava/util/List;

    .line 33
    return-void
.end method

.method public setPublics(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;->publics:Ljava/util/List;

    .line 40
    return-void
.end method

.method public setTcp(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;->tcp:Ljava/util/List;

    .line 47
    return-void
.end method

.method public setTraceroute(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;->traceroute:Ljava/util/List;

    .line 54
    return-void
.end method
