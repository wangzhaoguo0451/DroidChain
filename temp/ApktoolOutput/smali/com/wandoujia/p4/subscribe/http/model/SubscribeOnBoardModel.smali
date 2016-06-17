.class public Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel;
.super Ljava/lang/Object;
.source "SubscribeOnBoardModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x14773b8d55b032e3L


# instance fields
.field public pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$SubscribeOnBoardPage;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method
