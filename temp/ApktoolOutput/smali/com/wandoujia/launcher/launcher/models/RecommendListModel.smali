.class public Lcom/wandoujia/launcher/launcher/models/RecommendListModel;
.super Ljava/lang/Object;
.source "RecommendListModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/RecommendListModel$RecommendInfoModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/RecommendListModel$RecommendInfoModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/RecommendListModel;->list:Ljava/util/List;

    return-object v0
.end method
