.class public Lcom/wandoujia/p4/community/http/model/CommunityNotificationInfo;
.super Ljava/lang/Object;
.source "CommunityNotificationInfo.java"

# interfaces
.implements Lflg;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lflg",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private hasMore:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;",
            ">;"
        }
    .end annotation
.end field

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityNotificationInfo;->items:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityNotificationInfo;->totalCount:I

    return v0
.end method
