.class public Lcom/wandoujia/p4/person/model/PersonInfo$ProductInfo;
.super Ljava/lang/Object;
.source "PersonInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/NetVideoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
