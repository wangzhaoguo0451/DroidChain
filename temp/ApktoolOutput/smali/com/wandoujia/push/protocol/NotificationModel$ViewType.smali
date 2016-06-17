.class public Lcom/wandoujia/push/protocol/NotificationModel$ViewType;
.super Ljava/lang/Object;
.source "NotificationModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bigViewType:Ljava/lang/String;

.field private standardViewType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBigViewType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel$ViewType;->bigViewType:Ljava/lang/String;

    return-object v0
.end method

.method public getStandardViewType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel$ViewType;->standardViewType:Ljava/lang/String;

    return-object v0
.end method
