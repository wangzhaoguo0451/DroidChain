.class public Lcom/wandoujia/push/protocol/NotificationModel$Icon;
.super Ljava/lang/Object;
.source "NotificationModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private largeIconPath:Ljava/lang/String;

.field private smallIconList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLargeIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel$Icon;->largeIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIconList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel$Icon;->smallIconList:[Ljava/lang/String;

    return-object v0
.end method
