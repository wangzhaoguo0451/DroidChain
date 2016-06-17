.class public Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$SubscribeOnBoardPage;
.super Ljava/lang/Object;
.source "SubscribeOnBoardModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6fee85aed6817c80L


# instance fields
.field public cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$SubscribeOnBoardCard;",
            ">;"
        }
    .end annotation
.end field

.field public cover:Ljava/lang/String;

.field public subTitle:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
