.class public Lcom/wandoujia/launcher/launcher/models/RecommendListModel$RecommendInfoModel;
.super Ljava/lang/Object;
.source "RecommendListModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public date:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/RecommendListModel$RecommendInfoModel;->packageName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/wandoujia/launcher/launcher/models/RecommendListModel$RecommendInfoModel;->date:Ljava/lang/String;

    .line 25
    return-void
.end method
