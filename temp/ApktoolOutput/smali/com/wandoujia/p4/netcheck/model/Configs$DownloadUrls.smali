.class public Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;
.super Ljava/lang/Object;
.source "Configs.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private network:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetwork()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;->network:Ljava/util/List;

    return-object v0
.end method

.method public getUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;->urls:Ljava/util/List;

    return-object v0
.end method

.method public setNetwork(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;->network:Ljava/util/List;

    .line 148
    return-void
.end method

.method public setUrls(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 151
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;->urls:Ljava/util/List;

    .line 152
    return-void
.end method
